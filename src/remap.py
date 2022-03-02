import os, sys
import json

class tfResource:
    def _init__(self, fromaddr, toaddr):
        self.fromaddr = fromaddr
        self.toaddr = toaddr
    
    def generate_moved_block(self):
        lines = []
        lines.append("moved {\n")
        lines.append("from = "+self.fromaddr+"\n")
        lines.append("to = "+self.toaddr+"\n")
        lines.append("}\n")


