# Bibliography

[![Build Status](https://app.travis-ci.com/lnnrtwttkhn/bibliography.svg?branch=master)](https://app.travis-ci.com/lnnrtwttkhn/bibliography)

Website: https://lennartwittkuhn.com/bibliography/

## Description

This repository contains my entire bibliography in a `.bib` file and several `.sty` files that I use to customize my LaTeX manuscripts.
The bibliography mostly spans publications in cognitive and computational neuroscience, psychology and statistics.

A table of all publications in the `bibliography.bib` file can be reviewed at https://lennartwittkuhn.com/bibliography/ (sorted by last name of first author, year of publication and journal name).

## Overview

### `bibliography.bib`

The `bibliography.bib` is inside the `/code` folder.
That way I can sync the `/code` folder with Seafile / Dropbox and provide a direct download link to Overleaf.

The citation key syntax currently used is: `Last name of first author` + `Publication year` + `Journal Abbreviation`. Please note that the journal abbreviations do not follow specific standards but are determined by BibDesk. Also note, that in case the same first author published in the same journal in the same year, a lowercase letter will be included after the publication year to differentiate between the entries in question. This setup works quite nicely so far as in the research fields that I mostly follow, the same first author rarely published in the same journal in the same year. An exception from this are usually preprints (e.g., on bioRxiv) where the same first authors *do* publish more than once per year.

The `/papers` folder contains all `.pdf` files and will not be synced with the repo. As a further enhancement I am looking into ways how to version-control and synchronize the `.pdf` files with the repo / a cloud sharing service to be able to access them across devices. There is a [corresponding open issue](https://github.com/lnnrtwttkhn/bibliography/issues/5) and help / ideas are very welcome! Thanks!

### Glossary: `glossary.tex`

The `glossary.tex` file contains an alphabetically sorted list with commonly used abbreviations.
It is also located inside the `/code` folder.
It can be very easily included in any LaTex manuscript using:

```latex
\usepackage{glossaries}
\loadglsentries{glossary}
```

Note that the file extension `.tex` is not used when loading the glossary entries.

### Style: `style.sty`

The `style.sty` file contains some frequently used LaTeX packages that can be imported at the beginning
of any LaTex manuscript using, for example:

```latex
\documentclass{article}
\usepackage{style}
```

### Hyphenation: `hyphenation.sty`

In general, LaTeX hyphenates words whenever necessary.
In some cases, the hyphenation algorithm does not find the correct hyphenation points.
A solution is to explicitly tell LaTeX about the expectation (for details, see e.g., [here](https://en.wikibooks.org/wiki/LaTeX/Text_Formatting#Hyphenation)).

I collect hyphenation rules in the `hyphenation.sty` file which contains hyphenation rules for both English and German words.
The file can simply be included in the preamble of any LaTeX document using:

```latex
\documentclass{article}
\usepackage{hyphenation}
```

---

Again, please note that the file extension `.sty` is not used when importing the packages.

## Requirements

The software below is not a strict requirement but merely a list of tools I use to manage my bibliography.
This is just to help the interested reader with the software choice and acknowledge the tools that make this bibliography management possible.

* A good text editor of your choice (I use Atom)
* BibDesk Version 1.7.9 (5416)

```bash
$ python3 --version
Python 3.8.6
```

### Run Python code

To run the Python code in the `/code` directory, please install the required packages in [`requirements.txt`](requirements.txt) using `pip install -r requirements.txt`.

### Create environment

```bash
mkvirtualenv -p $(which python3) -r requirements.txt bibliography
```

## Usage

### Add repo as a submodule

* Add this repo as a submodule using `git submodule add https://github.com/lnnrtwttkhn/bibliography`
* Update the submodule using `git submodule foreach git pull origin master`
* To only use the `bibliography.tex` file, add `\bibliography{bibliography/code/bibliography.bib}` to your LaTeX document

Note: To use the bibliography as a submodule in `git` via Overleaf requires the repo to be publicly available.
A workaround is to provide the `.bib`-file as a direct download from a website that synchronized the repo contents (e.g., Dropbox or Seafile).
Read the next section for further instructions.

### Add `/code` folder contents as a direct download in Overleaf

If you can't or don't want to add the repo as a submodule to your manuscript repo, you can also sync the files with a cloud storage system (like Dropbox or Seafile) and provide it as a direct download in Overleaf. Here is how I do it:

* I sync the `/code` directory with a cloud storage provider (I use Seafile)
* In Seafile, I can create a direct download link for a specific file (e.g., the `bibliography.bib` file)
* In Overleaf, I can select `Upload` and add files `From External URL`
* Here, I paste the direct download link as the `URL to fetch the file from` and set the `File Name in this Project` to be the same link in the repo

## Rules

* The `doi` file shall never contain `https://` etc.
* You shall not worry about changing the capitalization of words in the title. LaTex / Overleaf / the `apacite` package handle this automatically! :clap:

## Notes

Current format string for local file format:

```
%f{Cite Key}%u0%e
```

This means that citation keys and pdf have the same name.

## Contributing

If you have any suggestions for improvement, please [contact Lennart Wittkuhn](mailto:wittkuhn@mpib-berlin.mpg.de) or [create a new issue on the issue board](https://github.com/lnnrtwttkhn/bibliography/issues).

## Maintainer

* [Lennart Wittkuhn](mailto:wittkuhn@mpib-berlin.mpg.de), Max Planck Institute for Human Development, Berlin, Germany

## License

This project is licensed under the MIT License.
Please see the [LICENSE.md](LICENSE.md) file for details.

## References and acknowledgements

The following links have helped me to create my own bibliography repo (thank you, internet! :pray:):

* [How to manage a bibliography like the Context Lab at Dartmouth College, USA](https://github.com/ContextLab/CDL-bibliography)
* [How to cite an article from arXiv using bibtex](https://tex.stackexchange.com/a/311325)
* [How to have DOI hyperlinks in the bibliography](https://tex.stackexchange.com/questions/3802/how-to-get-doi-links-in-bibliography)
* [How to make sure that these hyperlinks can deal with DOIs with special characters](https://tex.stackexchange.com/a/19734)
* [How to check for common errors and other mistakes before using software-generated bibliographic entries](https://tex.stackexchange.com/questions/386053/software-generated-bibliographic-entries-common-errors-and-other-mistakes-to-ch)
* [How to remove the `http://dx.doi.org` string from the `doi` field in BibTeX files](https://tex.stackexchange.com/questions/214393/how-to-remove-http-dx-doi-org-string-from-doi-field-in-bibtex-style)
* [How to use glossary entries from a separate file](https://tex.stackexchange.com/questions/287072/creating-glossary-entries-in-separate-file)
* [How to update `git` submodule to the latest commit on the origin](https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin)
* [How to place preamble packages in a different `.tex` file](https://tex.stackexchange.com/questions/339923/place-preamble-packages-in-a-different-tex-file)
* [How to stop `apacite` from displaying the month in references](https://tex.stackexchange.com/questions/500421/bibliography-style-apacite-how-to-suppress-month-and-day-fields)
* [How to integrate BibDesk with Dropbox - a nice tutorial by Matthew J. Sigal](https://www.matthewsigal.com/post/integrating-bibdesk-with-dropbox.html)
* [How to get rid of `Not defining \perthousand` and `Not defining \micro` warnings](https://tex.stackexchange.com/questions/165115/getting-not-defining-perthousnad-and-not-defining-micro-when-compiling-beamer)
* [How to cite a reference in a figure caption in LaTeX](https://tex.stackexchange.com/questions/227833/cite-references-in-figure-caption)
* [How to not mess up your bibliographies with BibTex - guide by Claus Wilke](https://serialmentor.com/blog/2015/10/2/Bibtex)
* [How to set up BibDesk with a version control system - blog post by Terrel Russel](https://weblog.terrellrussell.com/2007/02/bibdesk-bibtex-and-subversion-an-academics-necessity/)
* [How to use a bibliography in LaTeX with version control - discussion on Stackexchange](https://tex.stackexchange.com/questions/297075/latex-git-bibliography)
* [How to keep a master .bib-file with version control - tutorial by Andrius Vylikis](http://andrius.velykis.lt/2012/06/master-bibtex-file-git-submodules/)
* [BibTex Useful Hints](https://www.openoffice.org/bibliographic/bibtex-defs.html)
* [How to clear the Overleaf cache if you have trouble with references](https://de.overleaf.com/learn/how-to/Clearing_the_cache)
* [How to cite a range of papers using numeric keys so that /cite{a, b, c} becomes [1-3]](https://tex.stackexchange.com/questions/3871/citing-a-range-of-papers-using-numeric-keys-as-in-citea-b-c-1-3)
* [How does one indicate the corresponding author when using the authblk package?](https://tex.stackexchange.com/questions/309819/how-does-one-indicate-the-corresponding-author-when-using-the-authblk-package)
* [How to easily convert a `doi` into a `bib` entry using `doi2bib.org`](https://www.doi2bib.org/)
* [How to reset line numbers after every chapter in LaTeX](https://tex.stackexchange.com/questions/435418/restart-line-numbers-after-every-chapter)
* [How to show differences in lines of LaTex with git](https://twitter.com/russpoldrack/status/1209481756497383426?s=20)
* [How to make your git + LaTeX workflow more efficient](https://stackoverflow.com/a/6190412)
* ["Academics should ditch Elsevier and Mendeley — here’s how" - article by Steve Chignell on medium.com](https://medium.com/the-nature-of-food/academics-should-ditch-elsevier-and-mendeley-heres-how-153f1a8bf5f4)
* ["Why you should not use Mendeley as a reference manager" - article on medium.com](https://medium.com/@gagarine/3-reasons-you-shouldn-t-use-mendeley-8f00d609bd12)
* [Pandas dataframe to HTML using `pd.to_html()`](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.to_html.html)
* [The `DT` R package](https://rstudio.github.io/DT)
* [How to remove curly brackets in R](https://stackoverflow.com/questions/17528159/removing-curly-brackets-in-r)
* [How to convert URL character strings into hyperlinks in DT tables in R](https://stackoverflow.com/questions/30901027/convert-a-column-of-text-urls-into-active-hyperlinks-in-shiny)
* [Travis CI documentation: Building an R Project](https://docs.travis-ci.com/user/languages/r/)
* [Travid CI documentation: Building a Python project](https://docs.travis-ci.com/user/languages/python/)
* [Travis CI Issue discussion: Change default version to Python 3.6](https://travis-ci.community/t/change-default-version-of-python-to-3-6/8663/3)
* [Documentation on the R `DESCRIPTION` file](https://r-pkgs.org/description.html)
* [How to render RMarkdown from the command line](https://github.com/rstudio/rmarkdown/issues/1100)
* ["Adding CI to RMarkdown documents" - Tutorial by Simon Goring](http://www.goring.org/resources/Adding_CI_To_RMarkdown.html)
* [StackOverflow discussion: "Installing both Python and R for a Travis build"](https://stackoverflow.com/questions/44317627/installing-both-python-and-r-for-a-travis-build)
* [Migrating from BibDesk to Zotero](https://inkdroid.org/2020/09/03/bibdesk-and-zotero/)
* [Blog post on "BibTeX-friendly PDF management with Zotero" by Richard Zach](https://richardzach.org/2019/02/09/bibtex-friendly-pdf-management-with-zotero/)
* [WikiBooks entry on hyphenation in LaTeX](https://en.wikibooks.org/wiki/LaTeX/Text_Formatting#Hyphenation)
* ["How to add global hyphenation rules?"- discussion on StackExchange](https://tex.stackexchange.com/questions/27890/how-to-add-global-hyphenation-rules)
* ["GitHub issue with cross-referencing DT::datatable"](https://github.com/rstudio/bookdown/issues/313)
* ["Stack Overflow discussion about cross-referencing DT::datatable"](https://stackoverflow.com/questions/49819892/cross-referencing-dtdatatable-in-bookdown)
* ["Blog post about separating keywords in Biblatex"](http://kiluvonprince.de/bibtex-bibliographies-selected-by-keywords-with-customised-keyword-separators/)
* ["GitHub issue discussing keywords in Biblatex and biber"](https://github.com/plk/biblatex/issues/241)
* ["How to not mess up your bibliographies with Bibtex" - blogpost by Claus O. Wilke](https://clauswilke.com/blog/2015/10/02/bibtex/)
