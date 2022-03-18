#from msilib import schema
import os
import sys
import json
import re
import ast


class tfResource:
    def __init__(self, resource_name, identifier, config=None, hcl=None, type=None ):
        self.resource_name = resource_name
        self.identifier = identifier
        self.type = type
        self.hcl = hcl
        self.config = config
        self.previous_identifier = False

    def __str__(self):
        return self.resource_name+"."+self.identifier

    def __repr__(self):
        return str(self)    
    
    def generate_moved_block(self):
        self.lines = []
        self.lines.append("moved {\n")
        if self.previous_identifier:
            self.lines.append("from = "+self.resource_name+"."+self.previous_identifier+"\n")
        else:
            return ""
        self.lines.append("to = "+self.resource_name+"."+self.identifier+"\n")
        self.lines.append("}\n\n")
        return self.lines

    def generate_new_identifier(self,schema):
        self.previous_identifier = self.identifier
        self.identifier = self.config[schema[self.resource_name]]

    def add_config(self,config):
        self.config = config

    def get_file(self):
        return self.hcl

    def get_hcl_addr(self):
        return self.type+" \""+self.resource_name+"\" \""+self.identifier+"\"\ {\n"


def reader(path):
    '''
    Walk the target directory and return a list of Terraform files for processing.

        Parameters:
            path: string representing path to target directory. May contain many subdir trees.

        Returns:
            hcl_files: a list of HCL file paths for processing.
    '''
    hcl_files = []
    # walk target directory
    for root, dirs, files in os.walk(path):
        for file in files:
            if file.endswith(".tf") and not file.startswith("provider"):
                    #get all hcl files
                    hcl_files.append(os.path.join(root,file))
    return hcl_files


def get_objects(files):
    '''
    Generates lists of tfResource objects, accessed via their object type (Resource vs Data).
    See class definition for contents of the objects.
        Parameters:
            files: a list of file paths to HCL files for extraction.
        
        Returns:
            Dict: {'resources': [tfResource], 'data': [tfResource], 'outputs': [tfResource]}
    '''
    resource_list = []
    data_list = []
    output_list = []
    level = 0
    configstring = ""
    for each in files:
        contents = open(each, "r").readlines()
        for line in contents:
            print(line)
            try:
                if "resource" in line:
                    hcl_addr = line.replace("\"","").split(" ")
                    resource_list.append(tfResource(hcl_addr[1],hcl_addr[2],hcl=each,type=hcl_addr[0]))
                    configstring += hcl_addr[-1]
                elif "data" in line:
                    hcl_addr = line.split(" ").replace("\"","")
                    data_list.append(tfResource(hcl_addr[1],hcl_addr[2],hcl=each,type=hcl_addr[0]))
                    configstring += hcl_addr[-1]
                elif "output" in line:
                    hcl_addr = line.replace("\"","").split(" ")
                    output_list.append(tfResource(hcl_addr[1],"",hcl=each,type=hcl_addr[0]))
                    configstring += hcl_addr[-1]
                elif "{" in line:
                    configstring+=line
                    level+=1
                elif "}" in line:
                    configstring+=line
                    level-=1
                elif line == '}\n' and level == 0:
                    configstring+=line
                    configstring = ""
                else:
                    configstring+=line
            except Exception as e:
                print("Exception: "+str(e))
                print(configstring+", "+str(resource_list))
    return {'resources': resource_list, 'data':data_list, 'outputs':output_list}

def parse_schema(schema_file):
    '''
    Parse a Terraform provider schema file for resources and their schema in order to generate resource addresses.

        Parameters:
            schema_file (string) - path to the generated schema file. May contain multiple provider schemas
        
        Returns:
            schema (dict) - a dict containing a mapping of resource types and their most human-readable attribute field.
    '''
    name_re = re.compile(".*(n|N)ame.*",flags=re.IGNORECASE)
    ret = {}
    blob = json.load(open(schema_file,'r'))
    schema_dict = {resource:blob["provider_schemas"][provider][schema][resource] for provider in blob["provider_schemas"] for schema in blob["provider_schemas"][provider] for resource in blob["provider_schemas"][provider][schema]}
    for resource in schema_dict:
        try:
            attributes = schema_dict[resource]["block"]["attributes"].keys()
            nameAttr = [e for e in attributes if name_re.match(e)]
            bestName = min(nameAttr,key=len)
            ret[resource] = bestName
        except Exception as e:
            print(e," "+resource)
            continue
    return ret

def rename_objects(resources,data,outputs,parsed_schema):
    '''
    Generate new HCL addresses for each of the objects.

        Parameters:
            resources - [tfResource] for resource objects
            data - [tfResource] for data objects
            outputs - [tfResource] for output objects 
            parsed_schema - dict(str:str) of previously parsed schema
        
        Returns:
            Dict: {'resources': [tfResource], 'data': [tfResource], 'outputs': [tfResource]} 
    '''
    for r in resources:
        r.generate_new_identifier(parsed_schema)
    for d in data:
        d.generate_new_identifier(parsed_schema)
    for o in outputs:
        o.generate_new_identifier(parsed_schema)
    return {'resources': resources, 'data':data, 'outputs':outputs}


def group_by_source(objects):
    groups = {}
    for e in objects:
        if e.get_file() not in groups.keys():
            groups[e.get_file()] = [e]
        else:
            groups[e.get_file()].append(e)

def generate_moved_file(resources,data,outputs,dir):
    '''
    Generate a moved.tf file at the target directory with the requisite HCL for relocated resources.

        Parameters:
            resources - [tfResource]
            data - [tfResource]
            outputs - [tfResource]
            dir - string of target directory
        
        Returns:
            True on success, False otherwise.
    '''
    #TODO loop through grouped resources to minimise file IO
    f = open(os.path.join(dir,'moved.tf'),'w')
    all = (resources+data+outputs).sort(key=getFile)
    for e in all:
        f.write(e.generate_moved_block())

