
compile-pdf: clean copy-bibliography
	cd compilation && pdflatex main.tex && biber main && pdflatex main.tex && pdflatex main.tex
	mv compilation/main.pdf ./master-thesis.pdf

# Cleans junk from LaTeX compilation
clean:
	scripts/clean-tex.sh

# Copies bibliography from root folder
copy-bibliography:
	cp ~/references.bib ./content/refs/

compile-notes:
	scripts/notes-to-pdf.