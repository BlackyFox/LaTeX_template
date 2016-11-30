###############################################################################
################################ Variables ####################################
###############################################################################

main = main
bib = bibliography/bibliography.bib
tmp = .*.aux|.*.backup|.*.acn|.*.acr|.*.bbl|.*.glg|.*.glo|.*.gls|.*.glsdefs|.*.ist|.*.log|.*.out|.*.xml|.*.toc|.*.xdy|.*.alg|.*.blg|.*.-blx.bib|.*.bcf

###############################################################################
###############################################################################

all: organise clean

main.pdf: *.tex $(bib)
	pdflatex -interaction=batchmode $(main).tex
	bibtex $(main)
	pdflatex -interaction=batchmode $(main).tex
	pdflatex -interaction=batchmode $(main).tex

clean: 
	find . -regextype posix-awk -regex "($(tmp))" -type f -delete

main.docx: *.tex $(bib)
	pandoc -s $(main).tex -o $(main).docx

main.rtf: *.tex $(bib)
	pandoc -s $(main).tex -o $(main).rtf

main.html: *.tex $(bib)
	pandoc -s $(main).tex -o $(main).html

organise: main.pdf main.docx main.rtf main.html
	mkdir -p Rendus
	mv *.pdf *.docx *.rtf *.html Rendus
