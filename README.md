# fix-svg-textLength

A simple shell script to automatically remove problematic `textLength` attributes from `.svg` files. This resolves rendering issues during post-processing in graphic editors like Inkscape or Adobe Illustrator etc.

## 🔍 Motivation

Bioinformaticians, data scientists, and researchers often generate plots and visualizations using tools like **R (ggplot2)**, **Python (matplotlib/seaborn)**, or other scientific software. These figures are commonly saved in `.svg` format to allow for precise and scalable editing in tools such as **Inkscape**, **Adobe Illustrator**, or **Figma**.

However, many software packages that export `.svg` files embed a `textLength` attribute within the `<text>` elements. When opened in a graphics editor, this can **stretch or distort the text**, leading to unreadable or oddly spaced characters.

This script provides a quick fix by **removing all `textLength` attributes** from `.svg` files before final editing.

## 🛠️ What It Does

- Scans a directory for all `.svg` files
- Replaces every occurrence of `textLength` with `XtextLength` (an invalid attribute that gets ignored by editors)
- Saves the changes in-place, allowing for clean opening in vector editors

## 🚀 How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/humphreyaddy/fix_svg_textLength.git
   cd fix-svg-textLength
2. Edit the path to where the .svg file(s) are located

3. Run in you bash terminal

4. Enjoy!
