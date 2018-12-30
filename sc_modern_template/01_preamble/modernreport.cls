% Copyright (c) 

% 	2011-2014 Michael Müller, http://micha.elmueller.net

% Permission is hereby granted, free of charge, to any person obtaining
% a copy of this software and associated documentation files (the
% "Software"), to deal in the Software without restriction, including
% without limitation the rights to use, copy, modify, merge, publish,
% distribute, sublicense, and/or sell copies of the Software, and to
% permit persons to whom the Software is furnished to do so, subject to
% the following conditions:

% The above copyright notice and this permission notice shall be
% included in all copies or substantial portions of the Software.

% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
% EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
% MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
% NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
% LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
% OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
% WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

\ProvidesClass{application}[]
\LoadClass{article}

\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\renewcommand*\familydefault{\sfdefault}
\RequirePackage{sfmath}
\RequirePackage{microtype}
\RequirePackage[utf8]{inputenc}
\RequirePackage{authblk}
\RequirePackage[colorlinks=true, allcolors=green]{hyperref}
\RequirePackage[rightcaption]{sidecap}

\RequirePackage{lmodern}
\RequirePackage[scaled]{helvet}
\RequirePackage{lettrine} % For dropped capitals

\setlength{\affilsep}{0.5em}

% Font stuff
\newcommand{\dates}[1]{\def\@dates{#1}}
\newcommand{\titlefont}{\fontfamily{lmss}\bfseries\fontsize{22pt}{24pt}\selectfont}
\newcommand{\datesfont}{\normalfont\sffamily\fontsize{7}{8}\selectfont}
\newcommand{\dropcapfont}{\fontfamily{lmss}\bfseries\fontsize{26pt}{28pt}\selectfont}

\renewcommand\@biblabel[1]{ #1.} % Remove brackets from label

%% Custom title page 
\renewcommand{\@maketitle}{%
{%
	{\raggedright\baselineskip= 24pt\titlefont \@title\par}%
    \vskip10pt% 21pts between base of title and base of author line
    {\raggedright \@author\par}
    \vskip8pt% 16pts between base of affiliations and base of dates line 
    {\raggedright \datesfont \@ifundefined{@dates}{}{\@dates}\par}
    \vskip12pt%
	}
}

% Left align abstract
% \renewenvironment{abstract}
%  {\par\noindent\textbf{\abstractname.}\ \ignorespaces}
%  {\par\medskip}

% Dropcap
\newcommand{\dropcap}[1]{\lettrine[lines=2,lraise=0.05,findent=0.1em, nindent=0em]{{\dropcapfont{#1}}}{}}


\usepackage{cfr-lm}

\RequirePackage{listings}
\lstset{language=python}

\RequirePackage[english]{babel}
\RequirePackage[margin=3cm,a4paper]{geometry}

\RequirePackage{graphicx}
\graphicspath{{./}{../}{03_figures_and_tables/}}

\renewcommand{\baselinestretch}{1.1}
\setlength{\parindent}{0pt}
%\setlength{\parskip}{5pt}

\newcommand{\titleabstand}{\hspace{3cm}}
\newcommand{\RNum}[1]{\uppercase\expandafter{\romannumeral #1\relax}}


