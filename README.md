<!--
SPDX-FileCopyrightText: 2023 Daniel Eder

SPDX-License-Identifier: CC0-1.0
-->

# Typst Template: JKU Dissertation

A typst template conforming with the [requirements of the Johannes Kepler University Linz for a dissertation](https://www.jku.at/studium/studierende/abschlussarbeiten/dissertation/).


The template is based on https://github.com/zagoli/simple-typst-thesis.

## Usage Notes 

Presuming that you are familiar with typst and have an environment set up all you need to do to use this template is: 
1. download it (or better: create a repository based on this template)
2. leave `./src/template` and the files in it unmodified, unless you want to change how the template works
3. add your content to `./src/main.typ` (optionally, of course, including other files in `./src/main.typ`)
4. add your literary sources to `./src/literature.bib` (e.g. by exporting from Zotero)

### Choosing a citation style

The template comes with OSCOLA citation style pre-set.
To change this:
1. download the desired citation style in CSL format, e.g. from https://github.com/citation-style-language/styles/
2. place the file in `./src/<my-style>.csl` (of course, replace `<my-style>` with the name of the file you downloaded) 
3. open `./src/main.typ`
4. navigate to the bottom and finde `#bibliography("literature.bib", style: "./oscola-no-ibid.csl", title: [Bibliography])`
5. change the style parameter to `style: "./<my-style>.csl"` (of course, replace `<my-style>` with the name of the file you downloaded) 

### Style changes 

Most style changes for can be made by editing `./src/template/styles/default.typ`.
The other files in the `./src/template/styles` folder may also be of interest.
`./src/template/styles/content.typ` allows to make style changes that only affect content pages but not the pages up to the table of contents.

#### New page for level 1 headings (chapters)

By default each chapter starts on a new page.
To change this 
1. open `./src/template/styles/default.typ`
2. find `show heading.where(level: 1): it => [` 
3. and in that block remove (or comment out) `#pagebreak(weak: true)`

#### Large vertical space before level 1 headings (chapters)

By default each chapter heading has a large vertical space before it. 
To change this
1. open `./src/template/styles/default.typ`
2. find `  show heading.where(level: 1): it => [` 
3. and in that block find the first `#v(<x.y>cm)`
4. And set it to a lower value, e.g. `#v(0.5cm)`

## License

This project follows the REUSE standard for software licensing. Each file contains copyright and license information, and license texts can be found in the ./LICENSES folder. For more information visit https://reuse.software/.

The main template files are licensed under the [Apache-2.0 license](./LICENSES/Apache-2.0).