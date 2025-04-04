\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pancake-book}[2021/09/09 Annotated book class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}

%* Headings
\RequirePackage{titlesec}
\PassOptionsToPackage{sf, pagestyles}{titlesec}
\titleformat{\part}[hang]{\bfseries\huge\sffamily}{\partname\ \thepart\hspace{.5em}\vrule width 1pt}{.5em}{}
\titleformat{\chapter}[hang]{\bfseries\LARGE\sffamily}{\chaptertitlename\ \thechapter\hspace{.5em}\vrule width .5pt}{.5em}{}
\titleformat{\section}[hang]{\bfseries\Large\sffamily}{\thesection\hspace{.5em}\vrule width .5pt}{.5em}{}
\titleformat{\subsection}[hang]{\bfseries\large\sffamily}{\thesubsection}{.5em}{}
\titleformat{\subsubsection}[hang]{\sffamily\itshape\normalsize}{\thesubsubsection}{.5em}{}

%* Header/footer
\RequirePackage{emptypage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\fancyhf{}
\renewcommand{\headrulewidth}{.4pt}
\renewcommand{\footrulewidth}{.4pt}
\fancyfoot[LE,RO]{\thepage}
\fancyhead[LE]{\nouppercase{\textsc{\leftmark}}}
\fancyhead[RO]{\nouppercase{\rightmark}}

\fancypagestyle{plain}{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
	\fancyfoot[LE,RO]{\thepage}
}

%* Side notes
\RequirePackage{sidenotes}
\RequirePackage{marginfix}

\setlength{\marginparsep}{2em}
\setlength{\marginparpush}{1em}

\newcommand{\smartragged}{\checkoddpage \ifoddpage\raggedright \else \raggedleft\fi}

\providecommand{\marginaliasize}{\footnotesize}
\DeclareCaptionFont{marginaliasize}{\marginaliasize}
\let\oldmarginpar\marginpar
\def\marginpar#1{\oldmarginpar{\marginaliasize\smartragged #1}}

\DeclareCaptionJustification{smartragged}{\smartragged}

\DeclareCaptionStyle{marginfigure}{font=marginaliasize,justification=smartragged}
\DeclareCaptionStyle{margintable}{font=marginaliasize,justification=smartragged}

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

\newlength{\listsep}
\setlength{\listsep}{.5em}

\setlist{topsep=0em, itemsep=\dimexpr\listsep - \parskip\relax}
\setlist[itemize]{label=--}
