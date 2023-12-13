<!--
SPDX-FileCopyrightText: 2023 Daniel Eder

SPDX-License-Identifier: CC0-1.0
-->

# Typst Template: JKU Dissertation

A typst template conforming with the requirements of the Johannes Kepler University Linz for a dissertation.
The template is based on https://github.com/zagoli/simple-typst-thesis.

## Usage Notes 

### New page for level 1 headings (chapters)

By default each chapter starts on a new page.
To change this 
1. open `./src/template/styles/default.typ`
2. find `  show heading.where(level: 1): it => [` 
3. and in that block remove (or comment out) `#pagebreak(weak: true)`

### Large vertical space before level 1 headings (chapters)

By default each chapter heading has a large vertical space before it. 
To change this
1. open `./src/template/styles/default.typ`
2. find `  show heading.where(level: 1): it => [` 
3. and in that block find the first `#v(<x.y>cm)`
4. And set it to a lower value, e.g. `#v(0.5cm)`

## License

This project follows the REUSE standard for software licensing. Each file contains copyright and license information, and license texts can be found in the ./LICENSES folder. For more information visit https://reuse.software/.

The main template files are licensed under the [Apache-2.0 license](./LICENSES/Apache-2.0).