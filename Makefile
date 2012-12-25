info:
	@echo "Please make a specific target (a4 or c5), or explicitly run \"make all\"."

.PHONY: all a4 c5 latexbok-a4.pdf latexbok-c5.pdf
all: latexbok-a4.pdf latexbok-c5.pdf
a4: latexbok-a4.pdf
c5: latexbok-c5.pdf

latexbok-a4.pdf:
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- \
        -bibtex -jobname=latexbok-a4 -recorder a4.tex

latexbok-c5.pdf:
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- \
        -bibtex -jobname=latexbok-c5 -recorder c5.tex

.PHONY: mostlyclean mclean-a4 mclean-c5
mostlyclean: mclean-a4 mclean-c5

mclean-a4:
	latexmk -c -bibtex -jobname=latexbok-a4 -recorder a4.tex

mclean-c5:
	latexmk -c -bibtex -jobname=latexbok-c5 -recorder c5.tex

.PHONY: clean clean-a4 clean-c5
clean: clean-a4 clean-c5

clean-a4: mclean-a4
	rm -f latexbok-a4-*.cpt *.fls

clean-c5: mclean-c5
	rm -f latexbok-c5-*.cpt *.fls

.PHONY: distclean distclean-a4 distclean-c5
distclean: distclean-a4 distclean-c5

distclean-a4:
	latexmk -C -bibtex -jobname=latexbok-a4 -recorder a4.tex
	rm -f latexbok-a4-*.cpt *.fls

distclean-c5:
	latexmk -C -bibtex -jobname=latexbok-c5 -recorder c5.tex
	rm -f latexbok-c5-*.cpt *.fls
