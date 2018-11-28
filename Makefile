build: fuzz
	@pdflatex main.tex
	@evince main.pdf &
.PHONY: build

fuzz:
	@fuzz \
			given-sets.tex \
			free-type-definitions.tex \
			schemas.tex \
			axiomatic-definitions.tex \
			initial-state.tex \
			operations.tex \
			main.tex
.PHONY:
