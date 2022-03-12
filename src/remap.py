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
    # walk target directory
    for root, dirs, files in os.walk(path):
        for dir in dirs:
            for file in os.listdir(dir):
                if file.endswith(".tf"):
                    #get all hcl files
                    hcl_files.append(os.path.join(root,file))
                elif file.endswith(".state"):
                    #get statefile - there should only be one of these
                    statefile = os.path.join(root,file)
    for each in hcl_files:
        contents = open(each, "r").readlines()
        for line in contents:
            if "resource" in line:
                #take resource, convert identifier to string with identifier syntax
                #and pass to tfResource initialiser
                resource_list.append(tfResource(line[9:].replace('"','').replace(' ','.')))


