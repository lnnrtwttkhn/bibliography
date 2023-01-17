all: bibliography.Rmd

# Name of the virtual environment
VENV_NAME = env

# Path to the Python executable
PYTHON = python3

# Path to the Python main script
PYTHON_MAIN = code/zoo_glm_main.py

# Create the virtual environment
$(VENV_NAME):
	$(PYTHON) -m venv $(VENV_NAME)

# Install required packages
.PHONY: install
install: $(VENV_NAME)
	$(VENV_NAME)/bin/pip install -r requirements.txt 

# Delete the virtual environment
.PHONY: clean
clean:
	rm -rf $(VENV_NAME)

bibliography.Rmd: bibliography.csv
	R -e "rmarkdown::render('code/bibliography.Rmd', output_file = '../public/index.html')"

bibliography.csv:
	python3 code/parser.py

.PHONY: get
get:
	if [ -z "$(FILE)" ]; then \
		echo "FILE was not specified"; \
	else \
		datalad get papers/"$(FILE)" && datalad unlock papers/"$(FILE)" && open -a Skim.app papers/"$(FILE)"; \
	fi
