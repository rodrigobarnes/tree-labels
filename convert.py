import json
import csv

with open('trees.csv') as fh:
    reader = csv.DictReader(fh)
    data = [row for row in reader]

with open('trees.json', 'w', encoding='utf-8') as fh:
    fh.write(json.dumps(data, indent=4))