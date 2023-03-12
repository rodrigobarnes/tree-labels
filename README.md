# README

## Prerequsites:

Install a local python environment (just to be sure):
```sh
python -m venv .venv
source .venv/bin/activate
```

Install the SVG toolkit [`librsvg`](https://github.com/GNOME/librsvg):
```sh
brew install librsvg
```

Install the PDF toolking [`poppler`](https://www.mankier.com/package/poppler-utils)
```sh
brew install poppler
```

## Generating SVGs, step by step:

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

To do this all in one step:
```sh
./server.sh
```

# Convert svg to PDF

This will look for any `.svg` files in the `~/Downloads`  folder and move them to a local `input` folder, then create a single PDF file in the `output` folder locally with a timestamp.

```sh
./makepdf.sh
```
