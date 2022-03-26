import pytest
import sys
sys.path.append('../src')
import remap

def test_import_aws(file):
    print(remap.parse_schema(file))
    return

def test_reader(path):
    print(remap.reader(path))
    return

def test_get_obj(files):
    print(remap.get_objects(files))
    return

def test_generate_unmoved(path):
    files = remap.reader(path)
    objects = remap.get_objects(files)
    res = remap.group_by_source(objects['resources']+objects['data']+objects['outputs'])
    remap.generate_moved_file(res,path)

def test_generate_moved(path,schema):
    ps = remap.parse_schema(schema)
    files = remap.reader(path)
    objects = remap.get_objects(files)
    for e in objects['resources']:
        print(e)
        e.generate_new_identifier(ps)
        #print(e)
    res = remap.group_by_source(objects['resources']+objects['data']+objects['outputs'])
    remap.generate_moved_file(res,path)

if __name__ == '__main__':
    #test_import_aws("./schema.txt")
    #test_reader('./s3-example')
    #test_get_obj(remap.reader('./s3-example'))
    test_generate_moved('./s3-example','./schema.txt')