build: fuzz bibtex
	@pdflatex main.tex
	@evince main.pdf &
.PHONY: build

bibtex:
	@pdflatex main.tex
	@bibtex main
.PHONY: bibtex

fuzz:
	@fuzz \
			given-sets.tex \
			free-type-definitions.tex \
			schemas.tex \
			axiomatic-definitions.tex \
			initial-state.tex \
			operations.tex \
			main.tex
.PHONY: fuzz
