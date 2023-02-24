#!/usr/bin/env python2

import json

inventory = {
    "app": {
        "hosts": ["51.250.89.182"]
    },
    "db": {
        "hosts": ["158.160.52.96"]
    }
}

print(json.dumps(inventory))
