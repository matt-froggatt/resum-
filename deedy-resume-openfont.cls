% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{666666}  
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{descript}{HTML}{ff0000}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/quicksand/]{Quicksand-Regular}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/quicksand/]{Quicksand-Regular}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/quicksand/]{Quicksand-Bold}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/quicksand/]{Quicksand-VariableFont}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec[Path = fonts/quicksand/]{Quicksand-Regular}\fontsize{40pt}{10cm}\selectfont #1 \selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \color{headings}\fontspec[Path = fonts/quicksand/]{Quicksand-Regular}\fontsize{11pt}{14pt}\selectfont #3}
%	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
%	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{subheadings}
\fontspec[Path = fonts/quicksand/]{Quicksand-Bold}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{headings}
\fontspec[Path = fonts/quicksand/]{Quicksand-SemiBold}\fontsize{12pt}{12pt}\selectfont\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/quicksand/]{Quicksand-SemiBold}\fontsize{12pt}{12pt}\selectfont\uppercase {#1} \normalfont \normalsize}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\fontspec[Path = fonts/quicksand/]{Quicksand-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont \normalsize}

% Location command
\newcommand{\location}[1]{\color{subheadings}\raggedright\fontspec[Path = fonts/quicksand/]{Quicksand-VariableFont}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont \normalsize}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
