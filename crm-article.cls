%% ����������, �� ������� ��������� � ���� ���� ��� ������������ � ������������ �����������
%%
\ProvidesClass{crm-article}[2012/02/16 CRM class v.0.0.4]
\def\class@name{crm-article}%
\GenericInfo{}{\space
 Copyright (c) 2007-2012 MSU BioPhysics Dept. Moscow (mce@mce.su).^^J
 Licensed under the LPPL: http://www.latex-project.org/lppl.txt^^J
 Parts of the file are:^^J
 Copyright (c) 1997-1999 Patrick W Daly,^^J
 Copyright (c) 1997-1998 David Carlisle,^^J
 Copyright (c) 1999 The American Physical Society 
                (revtex4@aps.org, http://publish.aps.org/revtex4/),^^J
 Copyright (c) 2004 ITP TU Berlin,^^J
 Copyright (c) 2008 Andrey Paramonov (cmr.Pent@gmail.com),^^J
  ... and others ...
 \@gobble
}%

\LoadClass[11pt,twoside,a4paper,fleqn]{article}
\usepackage{rcdthm}
\usepackage{amssymb}
\usepackage{amstext}
\usepackage{amsfonts}
\usepackage{amsmath}
\@ifundefined{XeTeXversion}{
	\usepackage{pscyr}
	\usepackage{txfonts}
	\def\ttdefault{fer}
	\def\sfdefault{ftx}
	\usepackage[T2A]{fontenc}
	\RequirePackage[cp1251]{inputenc}
	\renewcommand{\rmdefault}{ftm}
%	\PassOptionsToPackage{unicode}{hyperref}
	\def\XeTeX{X\kern-.125em\relax
	  \@ifundefined{reflectbox}{%
        \lower.5ex\hbox{E}\kern-.1667em\relax}{%
        \lower.5ex\hbox{\reflectbox{E}}\kern-.1667em\relax}%
      \TeX}
	\def\addfontfeature#1{\relax}
}{
	\usepackage[cm-default]{fontspec} 
	\usepackage{xunicode} 
	\usepackage{xltxtra}
	\usepackage{polyglossia} 
	\setdefaultlanguage{russian} 
	\setotherlanguage{english}
	\newfontfamily\russianfont[Mapping=tex-text]{Times New Roman} 
	% Default fonts 
	\setromanfont[Mapping=tex-text]{Times New Roman} 
	\setsansfont[Mapping=tex-text]{Arial} 
	\setmonofont[Mapping=tex-text]{Lucida Console} 
	\setmainfont[Mapping=tex-text]{Times New Roman}
}
\RequirePackage[russian,english]{babel}
\RequirePackage{ifthen}
\usepackage{revsymb}
\usepackage{verbatim}
\usepackage{url}
\usepackage{longtable}
\usepackage{tabulary}
\usepackage{hhline}
\usepackage{float}
\usepackage[hang,perpage,multiple]{footmisc}
\renewcommand{\thempfootnote}{\thefootnote}
\usepackage{color} 
\usepackage{graphicx}
\usepackage{wrapfig}
\usepackage{setspace}

%\pdfpagewidth 210mm
\setlength\paperwidth{210mm}
%\pdfpageheight 297mm
\setlength\paperheight{297mm}
%\def\hangfootparindent{3.5em}
\footnotemargin=0.5em
\setlength\textwidth{160mm}
\setlength\textheight{232mm}
\setlength\oddsidemargin{-.2mm}
\setlength\evensidemargin{-.2mm}
\setlength\topmargin{8mm}
\setlength{\voffset}{0mm}
\setlength\headheight{0mm}
\setlength\headsep{0mm}
\setlength\parskip{0mm plus 2mm} 
\setlength\parindent{10mm}
\tolerance 5000
\emergencystretch 3em
\flushbottom
\widowpenalty 10000
\clubpenalty 10000
\baselineskip 10pt plus 3pt minus 3pt
\finalhyphendemerits=100000000
\renewcommand{\textfraction}{0.05}
\renewcommand{\topfraction}{0.95}
\renewcommand{\bottomfraction}{0.95}
\renewcommand{\floatpagefraction}{0.35}
\setcounter{totalnumber}{5}
\RequirePackage[labelsep=period,font=small]%,skip=0.3ex]
{caption}%justification=centerfirst
\usepackage{footnote}
\makesavenoteenv{tabular}
\usepackage{tabularx}
\usepackage{booktabs}
\usepackage{subfig}
\captionsetup[subfigure]{labelformat=parens,labelsep=period}
\setcounter{tocdepth}{5}
\usepackage{citehack}
\usepackage{lastpage}

\usepackage{fp}
\newlength{\TOarg} \newlength{\TOunit}
\newcommand\TOop[2]{\setlength{\TOarg}{#2}\FPdiv\TOres{\strip@pt\TOarg}{\strip@pt\TOunit}\FPround\TOres\TOres{#1}}
\newcommand\TOpt[2][2]{\setlength{\TOunit}{1pt}\TOop{#1}{#2}\TOres}
\newcommand\TOin[2][2]{\setlength{\TOunit}{1in}\TOop{#1}{#2}\TOres}
\newcommand\TOcm[2][2]{\setlength{\TOunit}{1cm}\TOop{#1}{#2}\TOres}
\newcommand\TOmm[2][2]{\setlength{\TOunit}{1mm}\TOop{#1}{#2}\TOres}
\newcommand\TOem[2][2]{\setlength{\TOunit}{1em}\TOop{#1}{#2}\TOres}


\let\stx@wbm\Hy@writebookmark
\def\Hy@writebookmark#1#2#3#4#5{%
    % section number, text, label, level, file
  \begingroup
      \ifHy@bookmarksnumbered
        \let\numberline\Hy@numberline
        \let\partnumberline\Hy@numberline
        \let\chapternumberline\Hy@numberline
      \else
        \let\numberline\@gobble
        \let\partnumberline\@gobble
        \let\chapternumberline\@gobble
      \fi
    \pdfstringdef\stx@sss{#2}%
    \edef\stx@sss{%
      \expandafter\strip@period\stx@sss\relax.\relax\@@@%
    }%
  \stx@wbm{#1}{\stx@sss}{#3}{#4}{#5}
  \endgroup
}


\usepackage{cite}
\bibliographystyle{crm}
\renewcommand{\@biblabel}[1]{}
\newlength{\bibhang}
\setlength{\bibhang}{7mm}
\def\refitem#1{\relax} % to be more compatible with MAIK style
\renewenvironment{thebibliography}[1]
{
  \penalty -400
  \setcounter{section}{9999} % otherwise we'll be in trouble with hyperrefs pointing to wrong sections
  \nonumberparagraphs
  \def\thesection{}\def\postsection{}
  \paragraph{������ ����������}\label{sec:toc}
  \penalty 40000
  \list{\@arabic\c@enumiv.}%
  {
	%\small
    \itemsep=\medskipamount\topsep=0ex\partopsep=0ex\parskip=0ex\parsep=-1ex
    \setlength{\itemindent}{-\bibhang}
    \setlength{\leftmargin}{\bibhang}
    %\advance\leftmargin\labelsep
    \leftmargin\labelwidth
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
	\sloppy \clubpenalty\@M \widowpenalty\clubpenalty
	\sfcode`\.\@m
}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist
  \appendix
  }

%\renewcommand{\citeleft}{(}
%\renewcommand{\citeright}{)}
\renewcommand{\citepunct}{; }

\AtBeginDocument{
  \pagestyle{empty}
  \selectlanguage{russian}
  \revsymb@inithook
}

%\AtEndDocument{
%  \maketitleeng
%}

\def\appendixname{����������}%
\renewcommand\appendix{\par 
  \setcounter{section}{0}% 
  \setcounter{subsection}{0}% 
  \setcounter{parno}{0}
  \@ifxundefined\postsection{\gdef\thesection{\appendixname~\@arabic\c@section.}}{\gdef\thesection{\appendixname~\@arabic\c@section}}
  
  }
\def\stx@sect{
  \@startsection{section}{1}{0mm}%
  {2\bigskipamount plus 2\bigskipamount}%
  {\bigskipamount}%
  {\setcounter{parno}{0}\normalfont\normalsize\centering\MakeTextUppercase}%
}
\def\stx@sect@one#1{
  \ifthenelse{\equal{#1}{}}%
  {\def\postsection{}
    \stx@sect[\thesection]{#1}
  }
  {\ifthenelse{\equal{\thesection}{}}%
    {\def\postsection{}}
    {\def\postsection{.\@aftersepkern}}
    \stx@sect{#1}
  }
}
\def\stx@sect@x@one#1{
  \ifthenelse{\equal{#1}{}}%
  {\def\postsection{}
    \stx@sect*[\thesection]{#1}
  }
  {\ifthenelse{\equal{\thesection}{}}%
    {\def\postsection{}}
    {\def\postsection{.\@aftersepkern}}
    \stx@sect*{#1}
  }
}
\def\stx@sect@two#1#2{
  \ifthenelse{\equal{#2}{}}%
  {\def\postsection{}}
  {\ifthenelse{\equal{\thesection}{}}%
    {\def\postsection{}}
    {\def\postsection{.\@aftersepkern}}
  }
  \stx@sect[#1]{#2}
}
\def\stx@sect@x@two#1#2{
  \ifthenelse{\equal{#2}{}}%
  {\def\postsection{}}
  {\ifthenelse{\equal{\thesection}{}}%
    {\def\postsection{}}
    {\def\postsection{.\@aftersepkern}}
  }
  \stx@sect*[#1]{#2}
}
\def\stx@sect@{
  \@ifnextchar[\stx@sect@two\stx@sect@one
}
\def\stx@sect@x{
  \@ifnextchar[\stx@sect@x@two\stx@sect@x@one
}
\renewcommand\section%[2][]%
{%
  \@ifstar\stx@sect@x\stx@sect@
}

\newcommand\newpar{} 
\newcounter{parno}
\newcommand\newsubpar{} 
\newcounter{subparno}
\renewcommand{\theparno}{\arabic{parno}} 
\renewcommand{\thesubparno}{\theparno.\arabic{subparno}} 
\@addtoreset{equation}{parno}
\newcommand\numberparagraphs{ 
	\renewcommand{\newpar}{\stepcounter{parno}\theparno.~} 
	\renewcommand{\newsubpar}{\stepcounter{subparno}\thesubparno.~} 
	\renewcommand{\theequation}{\theparno.\arabic{equation}}
}
\newcommand\nonumberparagraphs{ 
	\renewcommand{\newpar}{} 
	\renewcommand{\newsubpar}{} 
	\renewcommand{\theequation}{\arabic{equation}}
}

\renewcommand\paragraph%
{%
  \@startsection{paragraph}{4}{0pt}%
  {\bigskipamount}%
  {\bigskipamount}%
  {\noindent\normalfont\fontsize{14pt}{14pt}\bfseries\newpar}%
}
\renewcommand\subparagraph%
{%
  \@startsection{subparagraph}{5}{0pt}%
  {0.5\bigskipamount}%
  {0.5\bigskipamount}%
  {\noindent\normalfont\bfseries\itshape\large\newsubpar}%
}


%\def\email#1{\relax}
%\def\affiliation#1{\relax}
\let\surname\@firstofone
\let\firstname\@firstofone



\long\def\symbolfootnote[#1]#2{\begingroup%
\def\thefootnote{\fnsymbol{footnote}}\footnote[#1]{#2}\endgroup}

%\gdef\@author{}
%\renewcommand{\author}[1]{
%	\ifx\@author\@empty\else\g@addto@macro\@author{, }\fi
%	\g@addto@macro\@author{#1}
%}

\gdef\@journalReceived{}
\newcommand{\journalReceived}[1]{
	\gdef\@journalReceived{#1}
}
\gdef\@journalReviewed{}
\newcommand{\journalReviewed}[1]{
	\gdef\@journalReviewed{#1}
}

\gdef\@keywords{}
\newcommand{\keyword}[1]{
	\ifx\@keywords\@empty\else\g@addto@macro\@keywords{, }\fi
	\g@addto@macro\@keywords{#1}
}
\gdef\@keywordseng{}
\newcommand{\keywordeng}[1]{
	\ifx\@keywordseng\@empty\else\g@addto@macro\@keywordseng{, }\fi
	\g@addto@macro\@keywordseng{#1}
}

\gdef\stx@latin@alph#1{\ifcase#1\or
  a\or b\or c\or d\or e\or f\or g\or h\or
  i\or j\or k\or l\or m\or n\or o\or p\or
  q\or r\or s\or t\or u\or v\or w\or x\or
  y\or z\else\@ctrerr\fi}%
\def\latinalph#1{\expandafter\stx@latin@alph\csname c@#1\endcsname}

\newcommand\AB@affil@authnote[1]{\textsuperscript{#1}}
\newcommand\AB@email@authnote[1]{\textsuperscript{#1}}
\newcommand\AB@email@authnote@separator{,}
\newcommand\AB@affilnote[1]{\textsuperscript{#1}}
\newcommand\AB@emailnote[1]{\textsuperscript{#1}}
\newcommand\emailnoref{\renewcommand\AB@email@authnote[1]{\relax}\renewcommand\AB@emailnote[1]{\relax}}
\newcommand\affiliationnoref{\renewcommand\AB@affil@authnote[1]{\relax}\renewcommand\AB@affilnote[1]{\relax}\renewcommand\AB@email@authnote@separator{}}
\newcounter{authors}
\newcounter{affil}
\newcounter{authorseng}
\newcounter{affileng}
\newcounter{email}
\newif\ifnewaffil \newaffiltrue
\newif\ifnewaffileng \newaffilengtrue
\providecommand\textsuperscript[1]{$^{#1}$}
\gdef\AB@authlist{}
\gdef\AB@authlistnoaffil{}
\gdef\AB@authlistfull{}
\gdef\AB@authlisteng{}
\gdef\AB@affillist{}
\gdef\AB@affillisteng{}
\gdef\AB@emaillist{}
\newcommand\AB@empty{}
\renewcommand\author[2][]%
      {\ifnewaffil\addtocounter{affil}{1}%
       \edef\AB@thenote{\arabic{affil}}\fi
      \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
        \fi
      \addtocounter{authors}{1}%
      \begingroup
          \let\protect\@unexpandable@protect
          \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
		\ifx\AB@authlist\@empty\else\g@addto@macro\AB@authlist{, }\fi
         \@temptokena=\expandafter{\AB@authlist}%
         \xdef\AB@authlist{\the\@temptokena{#2}\AB@affil@authnote{\AB@note}}%
		\ifx\AB@authlistnoaffil\@empty\else\g@addto@macro\AB@authlistnoaffil{, }\fi
         \@temptokena=\expandafter{\AB@authlistnoaffil}%
         \xdef\AB@authlistnoaffil{\the\@temptokena{#2}}%
      \endgroup
      \newaffilfalse
}
\newcommand\authorfull[1]%
      {
		\ifx\AB@authlistfull\@empty\else\g@addto@macro\AB@authlistfull{, }\fi
         \@temptokena=\expandafter{\AB@authlistfull}%
         \xdef\AB@authlistfull{\the\@temptokena{#1}}%
}
\newcommand\authoreng[2][]%
      {\ifnewaffileng\addtocounter{affileng}{1}%
       \edef\AB@thenote{\arabic{affileng}}\fi
      \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
        \fi
      \addtocounter{authorseng}{1}%
      \begingroup
          \let\protect\@unexpandable@protect
          \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
		\ifx\AB@authlisteng\@empty\else\g@addto@macro\AB@authlisteng{, }\fi
         \@temptokena=\expandafter{\AB@authlisteng}%
         \xdef\AB@authlisteng{\the\@temptokena{#2}\AB@affil@authnote{\AB@note}}%
      \endgroup
      \newaffilengfalse
}
\newcommand\affiliation[2][]%
   {\newaffiltrue
      \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
        \fi
      \begingroup
        \let\protect\@unexpandable@protect
        \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
 		\ifx\AB@affillist\@empty\else\g@addto@macro\AB@affillist{\par}\fi
        \@temptokena=\expandafter{\AB@affillist}%
       \xdef\AB@affillist{\the\@temptokena\AB@affilnote{\AB@note}{#2}}%
      \endgroup
}
\newcommand\affiliationeng[2][]%
  {\newaffilengtrue
      \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
        \fi
      \begingroup
        \let\protect\@unexpandable@protect
        \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
 		\ifx\AB@affillisteng\@empty\else\g@addto@macro\AB@affillisteng{\par\noindent}\fi
        \@temptokena=\expandafter{\AB@affillisteng}%
       \xdef\AB@affillisteng{\the\@temptokena\AB@affilnote{\AB@note}{#2}}%
      \endgroup
}
\newcommand{\email}[1]{
	\addtocounter{email}{1}
    \@temptokena=\expandafter{\AB@authlist}%
    \xdef\AB@authlist{\the\@temptokena\@unexpandable@protect\AB@email@authnote{\AB@email@authnote@separator\latinalph{email}}}%
	\ifx\AB@emaillist\@empty\else\g@addto@macro\AB@emaillist{, }\fi
    \@temptokena=\expandafter{\AB@emaillist}%
    \xdef\AB@emaillist{\the\@temptokena\@unexpandable@protect\AB@emailnote{\latinalph{email} }#1}%
}
\gdef\@thanks{}
\renewcommand{\thanks}[1]{
	\gdef\@thanks{#1}
}
\gdef\@titleeng{}
\newcommand{\titleeng}[1]{
	\gdef\@titleeng{#1}
}
\gdef\@journalSection{}
\newcommand{\journalSection}[1]{
	\gdef\@journalSection{#1}
}
\gdef\@journalVol{}
\newcommand{\journalVol}[1]{
	\gdef\@journalVol{#1}
}
\gdef\@journalNo{}
\newcommand{\journalNo}[1]{
	\gdef\@journalNo{#1}
}
\gdef\@UDC{}
\newcommand{\UDC}[1]{
	\gdef\@UDC{#1}
}

\usepackage{eso-pic}
\usepackage{fancyhdr}
\newcommand\CRMlogo{ 
\put(480,756){ 
%\put(480,758){ 
\parbox[b][\paperheight]{\paperwidth}{% 
\includegraphics{crm-logo}
}
}
\put(70,762){ 
%\put(70,766){ 
\parbox{\paperwidth}{
\selectlanguage{russian}\normalfont\fontsize{11pt}{12.3pt}\bfseries\addfontfeature{LetterSpace=2} ������������ ������������\protect\\%[.8mm]
� ������������� \number\year\ �.~\@journalVol\ �~\@journalNo\ �.~\pageref{FirstPage}--\pageref{LastPage}
}}
}

\usepackage[fit]{truncate}

\def\maketitle{
	\label{FirstPage}
	\AddToShipoutPicture*{\CRMlogo} 
	\begin{center}
	\vspace*{1.5mm}
    \normalfont\bfseries\fontsize{9pt}{0pt}\selectfont\MakeUppercase{\@journalSection}\par
	\vspace*{0.5mm}
	\hrule
	\vspace{3mm}
	\normalfont\normalsize
  	\ifx\@UDC\@empty\else{\begin{flushleft}\noindent\fontsize{12pt}{12pt}\selectfont ���: \@UDC\par\bigskip\end{flushleft}}\fi
 	{\bfseries\parskip\z@skip\fontsize{18pt}{24pt}\selectfont\@title\par}
	\vspace{5mm}                         % Vertical space after title.
    \normalfont\fontsize{14pt}{16pt}\selectfont\bfseries\AB@authlist\par
    \bigskip
	\normalfont\fontsize{10pt}{4mm}\selectfont\AB@affillist\par
	\ifx\AB@emaillist\@empty\else\bigskip\normalfont\fontsize{10pt}{4mm}\selectfont{E-mail: }\AB@emaillist\par\fi
  	\bigskip                         % Vertical space after author.
	\ifx\@journalReceived\@empty\else\begin{flushright}
		\normalfont\fontsize{10pt}{4mm}\selectfont\emph{{�������� }\@journalReceived
		\ifx\@journalReviewed\@empty\else{,\\����� ��������� }\@journalReviewed\fi
		}\par\bigskip
	\end{flushright}\fi
	\end{center} \par
	\ifthenelse{\lengthtest{\ht\absbox > 0pt}}{
	\begingroup
    \setbox\z@\vtop{\unvcopy\absbox}%
    \endgroup
    \unvbox\absbox\medskip
	}{}
	\ifx\@keywords\@empty\else{\normalfont\normalsize\setlength\parindent{8mm}{�������� �����: }\@keywords\par}\fi
  	\bigskip\bigskip                 % Vertical space after keywords.
  	\vfill                 % 

	\selectlanguage{english}%\phantomsection
	\normalfont\normalsize
        \begin{flushleft}
  	{\noindent\bfseries\parskip\z@skip\fontsize{14pt}{18pt}\selectfont\@titleeng\par}
	  \bigskip                         % Vertical space after title.
  	\ifx\@\AB@authlisteng\@empty\else{\noindent\fontsize{12pt}{12pt}\selectfont\textbf{\AB@authlisteng}\par}
		\bigskip
		\noindent\normalfont\fontsize{10pt}{12pt}\selectfont\emph\AB@affillisteng\par
		\bigskip                         % Vertical space after author.
	\fi
	\end{flushleft}
	\par
	\ifthenelse{\lengthtest{\ht\absboxeng > 0pt}}{
	\begingroup
    \setbox\z@\vtop{\unvcopy\absboxeng}%
    \endgroup
    \unvbox\absboxeng\medskip
	}{}
	\ifx\@keywordseng\@empty\else\normalfont\fontsize{10pt}{4mm}\selectfont\noindent{Keywords: }\@keywordseng\par\fi
	\medskip\noindent\normalfont\fontsize{10pt}{4mm}\selectfont Citation: \emph{Computer Research and Modeling}, \number\year, vol.~\@journalVol, no.~\@journalNo, pp.~\pageref{FirstPage}--\pageref{LastPage} (Russian).\par
  	\medskip\vfill                 % Vertical space after citation.

	\selectlanguage{russian}%\phantomsection
	\ifx\@thanks\@empty\else\noindent\normalfont\fontsize{9pt}{9pt}\selectfont\@thanks\par\bigskip\fi
	\begin{flushright}
	\normalfont\fontsize{8pt}{8pt}\selectfont\copyright\ \number\year\ \AB@authlistfull
	\end{flushright}
	
	\newpage\normalfont\normalsize

	\setlength{\voffset}{-10mm}
	\setlength\headheight{14pt}
	\setlength\headsep{5mm}
	\setlength\footskip{9mm}
	\fancyhead[CE]{\normalfont\normalsize \truncate{130mm}{\AB@authlistnoaffil}}
	\fancyhead[CO]{\normalfont\normalsize \truncate{130mm}{\@title}}
	\fancyhead[LE,RO]{\normalfont\normalsize \thepage}
	\fancyfoot[CE]{\normalfont\fontsize{9pt}{9pt}\selectfont\bfseries\hrulefill\raisebox{0.7mm}{~������������ ������������ � �������������~}\hrulefill}
	\fancyfoot[CO]{\normalfont\fontsize{9pt}{9pt}\selectfont\bfseries\hrulefill\raisebox{0.7mm}{~\number\year, �.~\@journalVol, �~\@journalNo, �.~\pageref{FirstPage}--\pageref{LastPage}~}\hrulefill}
	\renewcommand{\headrulewidth}{0.4pt}
	\renewcommand{\footrulewidth}{0pt}
	\pagestyle{fancy}
}
\newbox\absbox
\renewenvironment{abstract}{%
  \global\setbox\absbox\vbox\bgroup
   \color@begingroup
   \columnwidth\textwidth
   \hsize\columnwidth
   \@parboxrestore
   \@minipagerestore
   \@setminipage
   \setlength\parindent{8mm}
   \normalfont\fontsize{11pt}{4.4mm}\selectfont
   \ignorespaces
}{%
    \unskip
    \@minipagefalse   %% added 24 May 89
    \color@endgroup
  \egroup
  \ignorespacesafterend
}%

%\gdef\@authoreng{}
%\newcommand{\authoreng}[1]{
%	\ifx\@authoreng\@empty\else\g@addto@macro\@authoreng{, }\fi
%	\g@addto@macro\@authoreng{#1}
%}
\newbox\absboxeng
\newenvironment{abstracteng}{
  \global\setbox\absboxeng\vbox\bgroup
   \color@begingroup
   \columnwidth\textwidth
   \hsize\columnwidth
   \@parboxrestore
   \@minipagerestore
   \@setminipage
   \noindent\normalfont\fontsize{10pt}{4mm}\selectfont
   %\ignorespaces
   \textbf{Abstract.} ---
}{%
    \unskip
    \@minipagefalse   %% added 24 May 89
    \color@endgroup
  \egroup
\ignorespacesafterend
}%



  
  
  
\long\def\true@sw#1#2{#1}%
\long\def\false@sw#1#2{#2}%
\def\@booleantrue#1{\let#1\true@sw}%
\def\@booleanfalse#1{\let#1\false@sw}%
\def\@boolean#1#2{%
  \long\def#1{%
    #2% \if<something>
      \expandafter\true@sw
    \else
      \expandafter\false@sw
    \fi
  }%
}%
\def\@boole@def#1#{\@boolean{#1}}% Implicit #2
\@boole@def\@ifx#1{\ifx#1}%
\long\def\@ifxundefined#1{\@ifx{\undefined#1}}
  
  
  
  
  
  
  
%\ProvidesPackage{textcase}
%       [1998/11/12 v0.06 Text only upper/lower case changing (DPC)]
\def\@uclcnotmath#1#2#3#4{\begingroup
      #1%
      \def\({$}\let\)\(%
      \def\NoCaseChange##1{\noexpand\NoCaseChange{\noexpand##1}}%
      \@nonchangecase\label
      \@nonchangecase\ref
      \@nonchangecase\ensuremath
      \def\cite##1##{\toks@{\noexpand\cite##1}\@citex}%
      \def\@citex##1{\NoCaseChange{\the\toks@{##1}}}%
      \def\reserved@a##1##2{\let#2\reserved@a}%
      \expandafter\reserved@a\@uclclist\reserved@b{\reserved@b\@gobble}%
      \protected@edef\reserved@a{\endgroup
          \noexpand\@skipmath#3#4$\valign$}%
      \reserved@a}
\def\@nonchangecase#1{\def#1##1{\NoCaseChange{#1{##1}}}}
\let\NoCaseChange\@firstofone
\def\@skipmath#1#2$#3${%
  \@skip@nonchangecase#1#2\NoCaseChange\valign
  \ifx\valign#3%
  \else
    $#3$%
    \expandafter\@skipmath\expandafter#1%
  \fi}
\def\@skip@nonchangecase#1#2\NoCaseChange#3{%
  #1{#2}%
  \ifx\valign#3%
  \else
    #3%
    \expandafter\@skip@nonchangecase\expandafter#1%
  \fi}
\DeclareRobustCommand\MakeTextUppercase{%
  \@uclcnotmath{\def\i{I}\def\j{J}}{##1##2}\uppercase}
\protected@edef\MakeTextUppercase#1{\MakeTextUppercase{#1}}
\DeclareRobustCommand\MakeTextLowercase{%
  \@uclcnotmath{}{##2##1}\lowercase}
\protected@edef\MakeTextLowercase#1{\MakeTextLowercase{#1}}
\expandafter
\let\csname MakeUppercase \expandafter\endcsname
    \csname MakeTextUppercase \endcsname
\expandafter
\let\csname MakeLowercase \expandafter\endcsname
    \csname MakeTextLowercase \endcsname

	

\def\mce@ColorLinks{
	\hypersetup{citecolor=blue,linkcolor=red,filecolor=magenta,urlcolor=magenta}
}
\DeclareOption{colorlinks}{
	\mce@ColorLinks
}
\ProcessOptions
\@ifxundefined\mceColorLinks{}{\mce@ColorLinks}










%��� ���������� rcdthm





\rcdthmsep=\medskipamount
\newrcdthm{teo}{�������}
\newrcdthm{hyp}{��������}
\newrcdthm{lem}{�����}
\newrcdthm{cor}{���������}
\newrcdthm{pro}{�����������}
\newrcdthm{con}{�������������}
\newrcdthm[definition]{fed}{�����������}
\newrcdthm[remark]{rem}{���������}
\newrcdthm[example]{com}{�����������}
\newrcdthm[example]{exl}{������}
\newrcdthm[example]{sol}{�������}
