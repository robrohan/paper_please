.PHONY: build

FILE=example
TEMP=build

build:
	mkdir -p "$(TEMP)"
	pdflatex -output-directory="$(TEMP)" "$(FILE).tex"
	biber --input-directory="$(TEMP)" --output-directory="$(TEMP)" "$(FILE)"
	pdflatex -output-directory="$(TEMP)" "$(FILE).tex"
	pdflatex -output-directory="$(TEMP)" "$(FILE).tex"
	open "$(TEMP)/$(FILE).pdf"

clean:
	rm -rf "$(TEMP)"

