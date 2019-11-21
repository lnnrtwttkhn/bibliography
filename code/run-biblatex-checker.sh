SCRIPT=$HOME/tools/BibLatex-Check/biblatex_check.py
INPUT="$HOME/Documents/bibliography/code/bibliography.bib"
OUTPUT="$HOME/Desktop/bibliography_overview.html"
$SCRIPT --bib $INPUT --output $OUTPUT --view 
open $OUTPUT

