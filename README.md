# Bibliography

## Description

This repository contains my entire bibliography.

## Overview

### `bibliography.bib`

The `bibliography.bib` is inside the `/code` folder.
That way I can sync the `/code` folder with Seafile / Dropbox and provide a direct download link to Overleaf.

The citation key syntax current used is: `Last name of first author` + `Publication year` + `Journal Abbreviation`. Please note that the journal abbreviations do not follow specific standards but are determined by BibDesk. Also note, that in case the same first author published in the same journal in the same year, a lowercase letter will be included after the publication year to differentiate between the entries in question.

The `/papers` contains all `.pdf` files and will not be synced with the repo.

### `glossary.tex`
The `glossary.tex` file is also located inside the `/code` folder.
This file contains an alphabetically sorted list with commonly used abbreviations.
It can be very easily included in any LaTex manuscript using:
```latex
\usepackage{glossaries}
\loadglsentries{glossary}
```
Note that the file extension `.tex` is not used when loading the glossary entries.

### `style.sty`
The `style.sty` script contains some frequently used packages that can be imported at the beginning
of any LaTex manuscript using, for example:
```latex
\documentclass{article}
\usepackage{style}
```
Again, please note that the file extension `.sty` is not used when importing the packages.

## Usage

### Add repo as a submodule

* Add this repo as a submodule using `git submodule add https://github.com/lnnrtwttkhn/bibliography`
* Update the submodule using `git submodule foreach git pull origin master`

Note: To use the bibliography as a submodule in `git` via Overleaf requires the repo to be publicly available.
A workaround is to provide the `.bib`-file as a direct download from a synced website (e.g., Dropbox)

## Rules

* The `doi` file shall never contain `https://` etc.
* You shall not worry about changing the capitalization of words in the title. LaTex / Overleaf / the `apacite` package handle this automatically! :clap:

## Contributing

If you spot any errors, please [contact Lennart Wittkuhn](mailto:wittkuhn@mpib-berlin.mpg.de)

## Maintainer

* [Lennart Wittkuhn](mailto:wittkuhn@mpib-berlin.mpg.de)

## License

This project is licensed under the MIT License.

Please see the [LICENSE.md](LICENSE.md) file for details.

## References and acknowledgements

The following links have helped me to create my own bibliography repo (thank you, internet!):

* [Context Lab Bibliography](https://github.com/ContextLab/CDL-bibliography)
* [How to cite an article from arXiv using bibtex](https://tex.stackexchange.com/a/311325)
* [Software-generated bibliographic entries: common errors and other mistakes to check before use](https://tex.stackexchange.com/questions/386053/software-generated-bibliographic-entries-common-errors-and-other-mistakes-to-ch)
* [How to remove http://dx.doi.org string from doi field in BibTeX style?](https://tex.stackexchange.com/questions/214393/how-to-remove-http-dx-doi-org-string-from-doi-field-in-bibtex-style)
* [Creating glossary entries in separate file](https://tex.stackexchange.com/questions/287072/creating-glossary-entries-in-separate-file)
* [Update Git submodule to latest commit on origin](https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin)
* [Place preamble packages in a different tex file](https://tex.stackexchange.com/questions/339923/place-preamble-packages-in-a-different-tex-file)
* [How to stop `apacite` from displaying the month in references](https://tex.stackexchange.com/questions/500421/bibliography-style-apacite-how-to-suppress-month-and-day-fields)
* [How to integrate BibDesk with Dropbox - a nice tutorial by Matthew J. Sigal](https://www.matthewsigal.com/post/integrating-bibdesk-with-dropbox.html)
* [How to get rid of `Not defining \perthousand` and `Not defining \micro` warnings](https://tex.stackexchange.com/questions/165115/getting-not-defining-perthousnad-and-not-defining-micro-when-compiling-beamer)
* [How to cite a reference in a figure caption in LaTeX](https://tex.stackexchange.com/questions/227833/cite-references-in-figure-caption)