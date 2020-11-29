#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import bibtexparser
import pandas as pd
project_name = 'bibliography'
path_options = [os.getenv('PWD'), os.getcwd()]
path_root = [x for x in path_options if project_name in x]
path_root = list(set(path_root))
assert len(path_root) == 1
path_root = path_root[0]
path_code = os.path.join(path_root, 'code')
with open(os.path.join(path_code, 'bibliography.bib')) as bibtex_file:
    bib_database = bibtexparser.bparser.BibTexParser(common_strings=True).parse_file(bibtex_file)
df = pd.DataFrame(bib_database.entries)
df = df.filter(items=['title', 'author', 'year', 'journal', 'url'])
df = df.sort_values(by=['author', 'year'])
html = df.to_html(
        render_links=True, index_names=False, bold_rows=False,
        index=False)
html_name = "index.html"
html_path = os.path.join(path_root, html_name)
with open(html_path, "w") as html_file:
    html_file.write(html)
print('Created {} successfully!'.format(html_name))
