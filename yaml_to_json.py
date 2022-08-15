import json
import yaml

with open('mom_items.yaml') as y:
    items = yaml.safe_load(y.read())

with open('src/items.json', 'w') as j:
    json.dump(items, j, indent=4, separators=(',', ': '))
