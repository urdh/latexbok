SOURCES=appendix.tex titlepage.tex
TARGETS=$(SOURCES:.tex=.pdf)
.PHONY: all mostlyclean clean distclean
all: $(TARGETS)
%.pdf: %.tex
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- \
        -bibtex -jobname=latexbok-a4-$* -recorder $<
mostlyclean:
	latexmk -c -bibtex -jobname=latexbok-a4-appendix -recorder appendix.tex
	latexmk -c -bibtex -jobname=latexbok-a4-titlepage -recorder titlepage.tex
clean:
	rm -f latexbok-a4-appendix.cpt latexbok-a4-titlepage.cpt *.fls
distclean:
	latexmk -C -bibtex -jobname=latexbok-a4-appendix -recorder appendix.tex
	latexmk -C -bibtex -jobname=latexbok-a4-titlepage -recorder titlepage.tex
	rm -f latexbok-a4-*.cpt *.fls
