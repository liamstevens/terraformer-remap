import pytest
import sys
sys.path.append('../src')
from remap import parse_schema

def test_import_aws(file):
    parse_schema(file)
    return


if __name__ == '__main__':
    test_import_aws("./schema.txt")