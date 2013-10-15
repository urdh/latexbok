SOURCES=$(wildcard *.tex)
TARGETS=$(SOURCES:.tex=.pdf)
.PHONY: all mostlyclean clean distclean
all: $(TARGETS)
%.pdf: %.tex
	latexmk -pdf -dvi- -ps- -bibtex -recorder $<
mostlyclean:
	latexmk -c -bibtex -recorder 5.tex
clean:
	rm -f *.cpt *.fls
distclean:
	latexmk -C -bibtex -recorder 5.tex
	rm -f *.cpt *.fls
