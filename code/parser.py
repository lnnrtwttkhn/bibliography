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
if not os.path.exists(os.path.join(path_root, 'public')):
    os.makedirs(os.path.join(path_root, 'public'))
with open(os.path.join(path_code, 'bibliography.bib')) as bibtex_file:
    bib_database = bibtexparser.bparser.BibTexParser(
      common_strings=True).parse_file(bibtex_file)
df = pd.DataFrame(bib_database.entries)
df = df.sort_values(by=['author', 'year', 'journal'])
csv_name = "bibliography.csv"
csv_path = os.path.join(path_root, 'public', csv_name)
df.to_csv(csv_path, index=False)
