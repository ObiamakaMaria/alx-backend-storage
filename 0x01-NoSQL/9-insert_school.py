#!/usr/bin/env python3
"""
The script that contains a function for inserting a
new document within a collection
"""


def insert_school(mongo_collection, **kwargs):
    """
    inserting a new document
    """
    new = mongo_collection.insert_one(kwargs)
    return new.inserted_id
