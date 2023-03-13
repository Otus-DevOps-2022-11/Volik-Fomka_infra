#!/usr/bin/env python2

import json

inventory = {
    "app": {
        "hosts": ["158.160.52.119"]
    },
    "db": {
        "hosts": ["51.250.87.26"]
    }
}

print(json.dumps(inventory))
