TEXMFHOME := texmf
export TEXMFHOME

CONTENT := $(wildcard *.tex)
PACKAGES := $(wildcard *.sty)
FIGURES := $(wildcard *.tikz)

latex := pdflatex -halt-on-error

.PHONY: all
all: paper.pdf

paper.pdf: $(CONTENT) $(FIGURES) $(PACKAGES)
	$(latex) paper
	bibtex paper
	makeglossaries paper
	$(latex) paper
	$(latex) paper

.PHONY: clean
clean:
	rm -f paper.acn paper.acr paper.alg paper.aux paper.bbl paper.blg paper.ist paper.log paper.pdf
