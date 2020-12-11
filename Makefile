bibliography.Rmd: bibliography.csv
	R -e "rmarkdown::render('code/bibliography.Rmd',output_file='../public/index.html')"

bibliography.csv:
	python3 code/parser.py
