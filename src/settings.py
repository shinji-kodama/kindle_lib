#!/usr/bin/env python3
__version__ = "0.1.0"

import os
import json

def build_path(path):
    return os.path.join(os.path.dirname(os.path.abspath(__file__)), path)

def load_json_setting(path):
    path = build_path(path)
    if os.path.exists(path):
        conf = open(path, 'r')
        return json.load(conf)
    else:
        return None

settings_dict = load_json_setting('../config/settings.json')

kindle_xml = build_path(settings_dict['kindle_xml'])
outfile = build_path(settings_dict['outfile'])

