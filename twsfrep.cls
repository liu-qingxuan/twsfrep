\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{twsfrep}

\LoadClass[a4paper,12pt,titlepage,openbib]{article}

\usepackage{amsmath}
\usepackage{amsthm}
\usepackage[chinese-hant, provide=*]{babel}
\usepackage[labelfont=bf,textfont=it]{caption}
\usepackage[margin = 2cm]{geometry}
\usepackage{indentfirst}
\usepackage{natbib}
\usepackage{notomath}
\usepackage{setspace}
\usepackage{titlesec}
\usepackage{zhlineskip}
\usepackage{zhnumber}

\raggedright

\input{fonts}

\newCJKfontfamily\kaifamily{標楷體}
\newfontfamily\timesfamily{Times New Roman}

\renewcommand\large{\fontsize{13.86}{16.63}\selectfont}
\renewcommand\Large{\fontsize{16}{17.2}\selectfont}
\renewcommand\LARGE{\fontsize{21.33}{25.6}\selectfont}

\settowidth\parindent{　　}

\setcounter{secnumdepth}{5}
\newcommand\fairname[1]{\newcommand\@fairname{#1}}
\newcommand\subject[1]{\newcommand\@subject{#1}}
\newcommand\group[1]{\newcommand\@group{#1}}
\newcommand\keywords[1]{\newcommand\@keywords{#1}}
\newcommand\num[1]{\newcommand\@num{#1}}
\renewcommand\maketitle{
	\begin{titlepage}
		\doublespacing\flushleft\kaifamily\timesfamily\Large
		\newlength\fourchar
		\settowidth\fourchar{作品名稱}
		\begin{center}
			\singlespacing\LARGE
			\@fairname\\作品說明書
		\end{center}
		\mbox{}\\
		科　　別：\@subject\\
		組　　別：\@group\\
		作品名稱：\@title\\
		\makebox[\fourchar]{關\hfill 鍵\hfill 字}：\@keywords\\
		\mbox{}\\
		編　　號：\@num
	\end{titlepage}
}

\titleformat\section[hang]{\centering\bfseries\Large}{\zhnumsetup{style = {Traditional, Financial}}\zhnum{section}、}{0pt}{}
\titleformat\subsection[hang]{\flushleft\bfseries\large}{\zhnumsetup{style = {Traditional, Normal}}\zhnum{subsection}、}{0pt}{}
\titleformat\subsubsection[hang]{\flushleft\bfseries\itshape}{\zhnumsetup{style = {Traditional, Normal}}(\zhnum{subsubsection})\ }{0pt}{}
\titleformat\paragraph[runin]{\flushleft\bfseries}{\arabic{paragraph}.\ }{0pt}{}[：]
\titleformat\subparagraph[runin]{\flushleft\bfseries\itshape}{　　(\arabic{subparagraph})\ }{0pt}{}[：]

\bibpunct{(}{)}{；\!}{a}{，\!}{，\!}
\renewcommand\bibsection{\section{參考文獻資料}}
\renewcommand\bibpreamble{(按第一作者姓氏筆畫順序)}
\setlength\bibsep{0pt}
\setlength\bibhang{0.5in}