MAIN = main

TRASH = $(MAIN).aux $(MAIN).bcf $(MAIN).log $(MAIN).run.xml $(MAIN).bbl $(MAIN).blg $(MAIN).toc

$(MAIN).pdf: *.tex references.bib
	pdflatex $(MAIN) > /dev/null
	biber $(MAIN)
	pdflatex $(MAIN) > /dev/null
	pdflatex $(MAIN)

quick: *.tex references.bib
	pdflatex $(MAIN)

clean:
	rm -f $(TRASH)

.PHONY: clean
