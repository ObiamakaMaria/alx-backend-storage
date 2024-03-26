#!/usr/bin/env python3
"""
The script returns a list of documents based on a criteria
"""


def schools_by_topic(mongo_collection, topic):
    """
    Shows the list of a school based on a topic
    """
    return mongo_collection.find({"topics": topic})
