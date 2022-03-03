import os, sys
import json

class tfResource:
    def _init__(self, fromaddr, toaddr):
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
    for root, dirs, files in os.walk(path):
        for dir in dirs:
            for file in os.listdir(dir):
                if file.endswith(".tf"):
                    hcl_files.append(os.path.join(root,name))
    for name in hcl_files:
        

