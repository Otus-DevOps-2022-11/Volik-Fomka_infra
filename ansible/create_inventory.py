#!/usr/bin/env python2

import json

inventory = {
    "app": {
        "hosts": ["62.84.125.134"]
    },
    "db": {
        "hosts": ["51.250.72.222"]
    }
}

print(json.dumps(inventory))
