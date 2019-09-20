# path to the folder storing all paper pdfs:
PATH_PAPERS=/Users/wittkuhn/Documents/bibliography/papers/
# remove .pdf file extension from all files:
for f in ${PATH_PAPERS}/*.pdf; do mv $f `basename $f .pdf`; done;
# add .pdf file extension to all files:
for f in ${PATH_PAPERS}/*; do mv "$f" "$f.pdf"; done