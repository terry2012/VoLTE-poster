SRC = secs/abstract.tex secs/intro.tex secs/background.tex secs/case.tex secs/overview.tex secs/diagnosis.tex secs/characterization.tex secs/conclusion.tex secs/related.tex paper.tex

#paper: paper.ps paper.pdf

all: paper.pdf

pdf: paper.pdf

#paper.ps: paper.dvi
	#dvips -o paper.ps -t letter paper.dvi
	#dvips -P cmz -t letter -o paper.ps paper.dvi
#	dvips -t letter -o paper.ps paper.dvi
	#dvips -Pdownload35 -t letter -o paper.ps paper.dvi

#paper.pdf: paper.dvi
	#dvips -Ppdf -Pcmz -Pamz -t letter -D 600 -G1 paper.dvi
	#dvips -Ppdf -t letter -D 600 -G1 paper.dvi
#	ps2pdf14 paper.ps paper.pdf
#	pdflatex paper.tex

#paper.dvi: $(SRC) paper.blg
#	latex paper
#	latex paper

paper.pdf: paper.bib $(SRC)
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper


clean: 
	\rm -f *.dvi *.aux *.ps *~ *.log *.blg *.bbl *.pdf *.eps *.out


clean2:
	\rm -f *.dvi *.aux *.ps *~ *.log *.blg *.bbl *.eps	
