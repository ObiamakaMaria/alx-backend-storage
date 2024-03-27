#!/usr/bin/env python3
"""
    This script displays stats about nginx logs stored in mongoDb
"""
import pymongo


if __name__ == '__main__':
    server = pymongo.MongoClient('mongodb://127.0.0.1:27017/')

    x = server.logs.nginx
    docs = x.count_documents({})
    print(f"{docs} logs")

    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    print("Methods:")

    for method in methods:
        num_of_lis = x.count_documents({"method": methods})
        print(f"\t method {method}: {num_of_lis}")

    status_count = x.count_documents({"method": "GET", "path": "/status"})
    print(f"{status_count} status check")
