SOURCES=1.tex
TARGETS=$(SOURCES:.tex=.pdf)
.PHONY: all mostlyclean clean distclean
all: $(TARGETS)
%.pdf: %.tex
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- \
        -bibtex -jobname=latexbok-a4-chapter1 -recorder $<
mostlyclean:
	latexmk -c -bibtex -jobname=latexbok-a4-chapter1 -recorder 1.tex
clean:
	rm -f latexbok-a4-chapter1.cpt *.fls
distclean:
	latexmk -C -bibtex -jobname=latexbok-a4-chapter1 -recorder 1.tex
	rm -f latexbok-a4-*.cpt *.fls
