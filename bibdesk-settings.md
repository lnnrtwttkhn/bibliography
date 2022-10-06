# BibDesk Application Preferences

## Preferences

### General Application Behavior

#### Application Launch

- [ ] Empty file
- [ ] Do nothing
- [ ] Open dialog
- [x] Open file ... `~/personal/bibliography/code/bibliography.bib`
- [ ] Save session

Check for updates (requires a network connection): `Weekly`

#### Importing Bibliography Information

- [x] Edit imported publications after pasting or dragging into BibDesk
- [ ] Automatically download remote URLs when importing `pdf ps doc docx odt`
  - [x] Replace download remote URL

#### Sharing Bibliography Information

- Sharing format: `Default BibTeX Format`

#### Warnings

- [x] Warn me before deleting an item from the database
- [x] Warn me before removing an item from a group
- [x] Warn me before editing the name of a group
- [x] Warn me when manually generating cite keys
- [x] Ask me to move deleted linked files to the trash

### Display

#### Fonts

- Publication list: `System Font regular 12`
- Group list: `System Font Regular 11`
- Person view list: `System Font Regular 12`
- Abstract and annote: `Helvetica 12`

#### Display Options

- [x] Display first names
  - [ ] Abbreviate first names
  - [x] Display "Lastname, Firstname"

- [x] Show group counts
- [x] Show group highlights

- Words to ignore for sorting: ` `
- Maxmimum number of items in preview: `All`

### Citation Behavior

#### Copying and Dragging

- Default format: `TeX cite command`
- Template `Default HTML template`
- Format when holding Option key: `BibTeX entry`
- Template: `Default HTML template`

#### Cite command style

- Command: `\cite`
- Bracket style
  - [x] TeX {}
  - [ ] ConTeXt []
- Multiple items
  - [x] Single
  - [ ] Separate
  - [ ] Multiple
- [] Prepend a tilde

### TeX - Typeset Preview

#### TeX Preview

- [x] Generate previews using BibTeX

#### TeX Programs Locations

- Full path to pdflatex: `Library/TeX/texbin/pdflatex`
- Full path to bibtex: `Library/TeX/texbin/bibtex`

#### Style and Template

- BibTeX style: `apalike`
- TeX template: `None`
- TeX template encoding: `Unicode (UTF-8)`

### Sharing Files

- [ ] Look for shared bibliographies
- [ ] Share my bibliographies

### Opening and Saving

#### String Encoding

- Open and export BibTex files using encoding: `Unicode (UTF-8)`

#### Unicode to TeX Conversion

- [x] Convert accented characters to TeX when exporting or pasting BibTex
- Custom character conversions: `None`

#### Saving Files

- [x] Use normalized author names when saving
- [ ] Save Annote and Abstract fields at the of the items
- [x] Write template file at the front of every file when saving
- Template file: `None`

 - [x] Automatically save documents in place
 - [ ] Automatically save a backup document every `5` minutes
 - [ ] Never save documents automatically

#### Reading Files

- [ ] Display warnings when opening a file

### Template Files

- [x] General templates
- [ ] Service templates

### Default Fields

#### Custom BibTeX Fields

|Fields|Type|Is Default|
|-|-|-|
|Keywords|Textual|✔|
|Local-Url|Local Files|✔|
|Url|Remote URL|✔|
|Doi|Remote URL|✔|
|Citeseeurl|Remote URL||
|Read|Boolean||
|Rating|Rating||
|Cited By|Citation||
|Cites|Citation||
|Author|Person||
|Editor|Person||
|Author+An|Textual|✔|
|Tags|Textual|✔|

#### Files and URLs

- [x] Use linked files and URLs
  - [x] Automatically convert File and URL fields
    - [ ] Remove converted Local File fields
    - [ ] Remove converted Remote URL fields

- Preferred local files format: `/Absolute/path`
- PDF viewer: `Adobe Acrobat Reader DC`
- Download files to: `Downloads`

#### Advanced

- Custom BibTeX Types and Fields: `None`
- Global BibTeX Macros: `None`

### Crossref

#### Duplicate Title to Booktitle

- [ ] Duplicate "Title" to "Booktitle"

#### Auto Sort for Crossrefs

- [ ] Automatically sort for crossrefs when waving BibTeX files

#### Warnings

- [x] Warn me when trying to edit an inherited field

### Cite Key Format

#### Cite Key Autogeneration

- [x] Autogenerate the cite key when enough fields are supplied

#### Cite Key Format

- Present Format: `Custom`
- Format String: `%a1%Y%u0%c{Journal}`

- [ ] Generate lowercase cite keys
- Clean by removing:
  - [ ] Braces
  - [x] TeX
  - [ ] Neither

### AutoFile

#### Auto File Options

- [x] File papers in fixed location: `~/personal/bibliography/papers`
- [ ] File papers relative to each document
- [ ] File papers automatically

#### Warnings

- [x] Warn before moving a folder

#### Local File Format

- Present Format: `Custom`
- Format String: `%f{Cite Key}%u0%e`

- [x] Generate lowercase file names

Clean by removing:
- [ ] Nothing
- [ ] Braces
- [ ] TeX
- [ ] Windows
- [x] Non-ASCII

### Script Hooks

`None`

## `View` > `Columns`

- [x] BibTeX Type
- [x] Cite Key
- [x] Title
- [x] Year
- [x] Journal
- [x] 1st Author
- [x] Local File
- [x] Doi
- [x] Remote URL
- [x] Date-Added

## Rules

* The `doi` file shall never contain `https://` etc.
* You shall not worry about changing the capitalization of words in the title. LaTeX / Overleaf / the `apacite` package handle this automatically!

