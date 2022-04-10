#!/usr/bin/env perl
$ENV{'TZ'} = 'Asia/Singapore';

$pdflatex   = 'xelatex -interaction=nonstopmode -shell-escape';
$pdf_mode   = 1;
$max_repeat = 10;

$dvi_previewer = 'start okular';
$pdf_previewer = 'start okular';
$ps_previewer  = 'start okular';
