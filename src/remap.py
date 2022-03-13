import os, sys
import json

class tfResource:
    def _init__(self, fromaddr, toaddr=None):
        self.fromaddr = fromaddr
        self.toaddr = toaddr
    
    def generate_moved_block(self):
        self.lines = []
        self.lines.append("moved {\n")
        self.lines.append("from = "+self.fromaddr+"\n")
        self.lines.append("to = "+self.toaddr+"\n")
        self.lines.append("}\n\n")

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
    #

def rename_objects(hcl_file,resources,data):

    return
