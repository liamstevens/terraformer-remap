#from msilib import schema
import os
import sys
import json
import re


#TODO - need to change to use raw string as import - resource type, id, etc.
class tfResource:
    def _init__(self, resource_name, identifier, config, hcl type=None ):
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

    def generate_new_identifier(self,schema):
        self.previous_identifier = self.identifier
        self.identifier = self.config[schema[self.resource_name]]

    def __str__(self):
        return self.resource_name+"."+self.identifier

def reader(path):
    hcl_files = []
    resource_list = []
    data_list = []
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
                    statefile = os.path.join(root,file)
    for each in hcl_files:
        contents = open(each, "r").readlines()
        for line in contents:
            if "resource" in line:
                #take resource, convert identifier to string with identifier syntax
                #and pass to tfResource initialiser
                resource_list.append((each,tfResource(line[9:].replace('"','').replace(' ','.'))))
            elif "data" in line:
                #Do the same with data objects
                data_list.append((each,tfResource(line[4:].replace('"','').replace(' ','.'))))
            else:
                pass
    
    return {'files':hcl_files, 'resources': resource_list, 'data':data_list}

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
