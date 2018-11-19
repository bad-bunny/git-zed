build: fuzz
	@pdflatex main.tex
	@evince main.pdf &
.PHONY: build

fuzz:
	@fuzz given-sets.tex free-type-definitions.tex schemas.tex main.tex
.PHONY:
