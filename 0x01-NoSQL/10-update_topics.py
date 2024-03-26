#!/usr/bin/env python3
"""
The script updates a document in a collection
"""


def update_topics(mongo_collection, name, topics):
    """
    Changes made to all topics of a school:
    """
    return mongo_collection.update_many(
            {"name": name}, {'$set': {"topics": topics}}
            )
