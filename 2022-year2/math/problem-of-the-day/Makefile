filename=main

pdf:
	/usr/bin/latex ${filename}.tex
	dvips ${filename}.dvi
	ps2pdf ${filename}.ps

dvi:
	/usr/bin/latex ${filename}.tex

ps:
	/usr/bin/latex ${filename}.tex
	dvips ${filename}.dvi

view:
	okular ${filename}.pdf &

clean:
	rm -rf ${filename}.{aux,bbl,blg,fls,fdb_latexmk,out,toc} .auctex-auto/ *.log
