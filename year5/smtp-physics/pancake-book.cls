\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pancake-book}[2021/09/09 Annotated book class]

%* Footnotes to sidenotes
\DeclareOption{sidefootnotes}{
  \renewcommand{\footnote}[2][]{\sidenote[#1]{#2}}
  \renewcommand{\footnotetext}[2][]{\sidenotetext[#1]{#2}}
  \renewcommand{\footnotemark}[1][]{\sidenotemark[#1]}
}
\DeclareOption{letterpaper}{
  \PassOptionsToPackage{
    letterpaper,
    left=1in,
    top=1in,
    headsep=2\baselineskip,
    textwidth=26pc,
    marginparsep=2pc,
    marginparwidth=12pc,
    textheight=44\baselineskip,
    headheight=1.2\baselineskip
  }{geometry}
}

\DeclareOption{a4paper}{
  \PassOptionsToPackage{
    a4paper,
    left=24.8mm,
    top=27.4mm,
    headsep=2\baselineskip,
    textwidth=107mm,
    marginparsep=8.2mm,
    marginparwidth=49.4mm,
    textheight=49\baselineskip,
    headheight=1.2\baselineskip
  }{geometry}
}

\DeclareOption{b5paper}{
  \PassOptionsToPackage{
    b5paper,
    left=14.66mm,
    top=13.88mm,
    textwidth=102.66mm,
    marginparsep=7.33mm,
    marginparwidth=36.66mm,
    textheight=38\baselineskip,
    includehead
  }{geometry}
}

% Added by me
\DeclareOption{legalpaper}{
  \PassOptionsToPackage{
    legalpaper,
    left=1in,
    top=1in,
    headsep=2\baselineskip,
    textwidth=26pc,
    marginparsep=2pc,
    marginparwidth=12pc,
    textheight=56\baselineskip,
    headheight=1.2\baselineskip
  }{geometry}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}
\RequirePackage{geometry}

%* Header/footer
\RequirePackage{emptypage}

\RequirePackage{fancyhdr}
\renewcommand{\sectionmark}[1]{\markright{#1}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\pagestyle{fancy}

\fancyhf{}
\fancyheadoffset{0cm}
\renewcommand{\headrulewidth}{.4pt}
\renewcommand{\footrulewidth}{0pt}


\fancyhead[LE, RO]{\chaptername{} \thechapter}
\fancyhead[RE, LO]{\nouppercase{\leftmark}}
\fancyfoot[LE, RO]{\thepage}


\fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyfoot[LE, RO]{\thepage}
}

%* Marginalia
\RequirePackage{sidenotes}
\RequirePackage{marginfix}

\newcommand{\smartragged}{\checkoddpage \ifoddpage\raggedright \else
\raggedleft\fi}

\providecommand{\marginaliasize}{\footnotesize}
\DeclareCaptionFont{marginaliasize}{\marginaliasize}

\let\@oldmarginpar\marginpar
\renewcommand{\marginpar}[2][]{%
  \ifx#1\empty\empty % when #1 is empty, we are really looking to see
  % that \empty = \empty
  \@oldmarginpar{\smartragged\marginaliasize #2}%
  \else
  \@oldmarginpar[\raggedleft\marginaliasize #1]{\raggedright\marginaliasize #2}%
  \fi
}

\DeclareCaptionJustification{smartragged}{\smartragged}

\DeclareCaptionStyle{marginfigure}{font=marginaliasize}
\DeclareCaptionStyle{margintable}{font=marginaliasize}
\DeclareCaptionStyle{sidecaption}{font=marginaliasize}

%* Assorted random bits
\makeatletter
\newcommand{\ifdraft}[2][]{\ifdim\overfullrule>\z@
\expandafter#2\else\expandafter#1\fi}
\makeatother
\newcommand{\notetoself}[1]{\ifdraft{\sidenote{\color{gray}#1}}}

%* Structure enhancements
\RequirePackage{parskip}
\RequirePackage{booktabs}
\RequirePackage{enumitem}
\RequirePackage{soul}
\RequirePackage{xcolor}

%* List adjustments
\newlength{\listsep}
\setlength{\listsep}{.5em}
\setlist{topsep=0em, itemsep=\dimexpr\listsep - \parskip\relax}
\setlist[itemize]{label=---}

\RequirePackage{datetime2}

% \RequirePackage{pancake-ling}
\RequirePackage{mathtools, amsthm, amssymb, amsmath}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{cleveref}
\RequirePackage[
  backend=biber,
  style=apa,
  sorting=ynt
]{biblatex}
