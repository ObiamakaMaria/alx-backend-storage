#!/usr/bin/env python3
'''
This script Lists all documents in Python
'''


def list_all(mongo_collection):
    '''listing all the ddom'''
    lis = mongo_collection.find()
    return lis
