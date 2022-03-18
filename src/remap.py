#from msilib import schema
import os
import sys
import json
import re
import ast


#TODO - need to change to use raw string as import - resource type, id, etc.
class tfResource:
    def _init__(self, resource_name, identifier, config=None, hcl=None, type=None ):
        self.resource_name = resource_name
        self.identifier = identifier
        self.type = type
        self.hcl = hcl
        self.config = config
        
    
    def generate_moved_block(self):
        self.lines = []
        self.lines.append("moved {\n")
        self.lines.append("from = "+self.resource_name+"."+self.previous_identifier+"\n")
        self.lines.append("to = "+self.resource_name+"."+self.identifier+"\n")
        self.lines.append("}\n\n")
        return self.lines

    def generate_new_identifier(self,schema):
        self.previous_identifier = self.identifier
        self.identifier = self.config[schema[self.resource_name]]

    def __str__(self):
        return self.resource_name+"."+self.identifier

    def add_config(self,config):
        self.config = config

def reader(path):
    hcl_files = []
    
    # walk target directory
    for root, dirs, files in os.walk(path):
        for dir in dirs:
            for file in os.listdir(dir):
                if file.endswith(".tf"):
                    #get all hcl files
                    hcl_files.append(os.path.join(root,file))
                elif file.endswith(".state"):
                    #get statefile - there should only be one of these
                    #TODO - figure out wtf I was thinking including these since they are incredibly 
                    #verbose and may not *actually* be useful for this
                    hcl_files.append(os.path.join(root,file))
    return hcl_files


def get_objects(files):
    resource_list = []
    data_list = []
    blockflag = False
    configstring = ""
    for each in hcl_files:
        contents = open(each, "r").readlines()
        for line in contents:
            if "resource" in line:
                blockflag = True
                hcl_addr = line.split(" ").replace("\"","")
                resource_list.append(tfResource(hcl_addr[1],hcl_addr[2],hcl=each,type=hcl_addr[0]))
                configstring += hcl_addr[-1]
            elif "data" in line:
                blockflag = True
                hcl_addr = line.split(" ").replace("\"","")
                resource_list.append(tfResource(hcl_addr[1],hcl_addr[2],hcl=each,type=hcl_addr[0]))
                configstring += hcl_addr[-1]
            elif line == '}\n':
                blockflag = False
                configstring+=line
                resource_list[-1].add_config(ast.literal_eval(configstring))
                configstring = ""
            elif blockflag == True:
                configstring+=line
            else:
                pass
    
    return {'resources': resource_list, 'data':data_list}

def parse_schema(schema_file):
    name_re = re.compile(".*(n|N)ame.*",flags=re.IGNORECASE)
    '''
    Parse a Terraform provider schema file for resources and their schema in order to generate resource addresses.

        Parameters:
            schema_file (string) - path to the generated schema file. May contain multiple provider schemas
        
        Returns:
            schema (dict) - a dict containing a mapping of resource types and their most human-readable attribute field.
    '''
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

def rename_objects(hcl_file,resources,data,parsed_schema):
        for file in hcl_file:

    return
