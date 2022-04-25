filename=main

pdf:
	lualatex ${filename}.tex
	lualatex ${filename}.tex

view:
	atril ${filename}.pdf &

clean:
	rm -rf ${filename}.{aux,bbl,blg,fls,fdb_latexmk,out,toc,synctex.gz,xdv} .auctex-auto/ *.log

remove:
	rm -rf ${filename}.{aux,bbl,blg,fls,fdb_latexmk,out,toc,synctex.gz,xdv,dvi,ps,pdf} .auctex-auto/ *.log
