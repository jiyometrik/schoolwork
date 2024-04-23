#!/usr/bin/env perl

# timezone
$ENV{'TZ'} = 'Asia/Singapore';

# compilation
$pdflatex = 'pdflatex -shell-escape -enable-write18';
$pdf_mode = 1; # only generate the pdf
$max_repeat = 12; # maximum number of runs

# viewing
# $dvi_previewer = 'start okular';
# $ps_previewer = 'start okular';
# $pdf_previewer = 'start okular';

# cleaning options
$bibtex_use = 1.5;
