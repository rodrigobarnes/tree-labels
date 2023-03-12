import json
import csv

with open('trees.csv') as fh:
    reader = csv.DictReader(fh)
    data = []
    for row in reader:
        data.append(row)
    
with open('trees.json', 'w', encoding='utf-8') as fh:
    fh.write(json.dumps(data, indent=4))