filename=main

pdf:
	pdflatex ${filename}.tex
	pdflatex ${filename}.tex

dvi:
	/usr/bin/latex ${filename}.tex
	/usr/bin/latex ${filename}.tex

ps:
	/usr/bin/latex ${filename}.tex
	/usr/bin/latex ${filename}.tex
	dvips ${filename}.dvi

view:
	atril ${filename}.pdf &

clean:
	rm -rf ${filename}.{aux,bbl,blg,fls,fdb_latexmk,out,toc,synctex.gz,xdv} .auctex-auto/ *.log

remove:
	rm -rf ${filename}.{aux,bbl,blg,fls,fdb_latexmk,out,toc,synctex.gz,xdv,dvi,ps,pdf} .auctex-auto/ *.log
