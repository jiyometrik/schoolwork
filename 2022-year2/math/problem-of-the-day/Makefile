filename=main

pdf:
	pdflatex ${filename}
	bibtex ${filename}||true
	pdflatex ${filename}
	pdflatex ${filename}

view:
	okular ${filename}.pdf &

clean:
	rm -f ${filename}.{ps,log,aux,out,dvi,bbl,blg,toc,fls,fdb_latexmk}
