#!/usr/bin/env perl
$ENV{'TZ'} = 'Asia/Singapore';

$pdflatex   = 'lualatex -interaction=nonstopmode -shell-escape';
$pdf_mode   = 1;
$max_repeat = 10;

$dvi_previewer = 'start atril';
$pdf_previewer = 'start atril';
$ps_previewer  = 'start atril';
