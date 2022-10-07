all: bibliography.Rmd

bibliography.Rmd: bibliography.csv
	R -e "rmarkdown::render('code/bibliography.Rmd', output_file = '../public/index.html')"

bibliography.csv:
	python3 code/parser.py

.PHONY: get
get:
	if [ -z "$(FILE)" ]; then \
		echo "FILE was not specified"; \
	else \
		datalad get papers/"$(FILE)" && datalad unlock papers/"$(FILE)" && open papers/"$(FILE)"; \
	fi
