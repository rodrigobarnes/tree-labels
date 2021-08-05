# README

Generating labels for tree varieties in SVG for a CNC router.

Edit the tree data in CSV `trees.csv` then convert to JSON which is used by the app:
```sh
python convert.py
```

View the labels using a python server:
```sh
python -m http.server
```

Then navigate to http://127.0.0.1:8000

The svg file is extracted from the HTML using browser developer tools.