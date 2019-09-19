# Bibliography

## Description

This repository contains my entire bibliography.

## Overview

### `bibliography.bib`

The `bibliography.bib` is inside the `/code` folder.
That way I can sync it with Seafile / Dropbox and provide a direct download link to Overleaf.

The `/papers` contains all `.pdf` files and will not be synced with the repo.

### `glossary.tex`


Note: To use the bibliography as a submodule in `git` via Overleaf requires the repo to be publicly available.
A workaround is to provide the `.bib`-file as a direct download from a synced website (e.g., Dropbox)

## Usage

* Add this repo as a submodule using `git submodule add https://github.com/lnnrtwttkhn/bibliography`
* Update the submodule using `git submodule foreach git pull origin master`

## Rules
* The `doi` file never contains `https://` etc.
* Don't worry about changing the capitalization of words in the title. LaTex / Overleaf / `apacite` handle this automatically! :clap:

## Contributing

If you spot any errors, please [contact Lennart Wittkuhn](mailto:wittkuhn@mpib-berlin.mpg.de)

## Maintainer

* [Lennart Wittkuhn](mailto:wittkuhn@mpib-berlin.mpg.de)

## License

This project is licensed under the MIT License.

Please see the [LICENSE.md](LICENSE.md) file for details.

## References and acknowledgements

The following links have helped me to create my own bibliography repo:

* [Context Lab Bibliography](https://github.com/ContextLab/CDL-bibliography)
* [How to cite an article from arXiv using bibtex](https://tex.stackexchange.com/a/311325)
* [Software-generated bibliographic entries: common errors and other mistakes to check before use](https://tex.stackexchange.com/questions/386053/software-generated-bibliographic-entries-common-errors-and-other-mistakes-to-ch)
* [How to remove http://dx.doi.org string from doi field in BibTeX style?](https://tex.stackexchange.com/questions/214393/how-to-remove-http-dx-doi-org-string-from-doi-field-in-bibtex-style)
* [Creating glossary entries in separate file](https://tex.stackexchange.com/questions/287072/creating-glossary-entries-in-separate-file)
* [Update Git submodule to latest commit on origin](https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin)
* [Place preamble packages in a different tex file](https://tex.stackexchange.com/questions/339923/place-preamble-packages-in-a-different-tex-file)