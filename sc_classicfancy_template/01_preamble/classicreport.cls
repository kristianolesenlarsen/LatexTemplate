
\ProvidesClass{application}[]
\LoadClass{article}


% Colors
\RequirePackage{xcolor}
\definecolor{maincolor}{rgb}{0.55, 0.0, 0.0}
\definecolor{secondcolor}{rgb}{0.65, 0.0, 0.0}
\definecolor{linkcolor}{rgb}{0.28, 0.02, 0.03}

% Other packages
\RequirePackage{microtype}                                      % Text adjustments
\RequirePackage{graphicx}
\RequirePackage{wrapfig}                                        % wrapping figures
\RequirePackage{caption}
\RequirePackage[utf8]{inputenc}                                 % encoding
\RequirePackage{authblk}                                        % Author info
\RequirePackage[bookmarks, % Create bookmarks
bookmarksopen=true, % Unfold bookmatk tree in PDF viewer when document is opened
bookmarksopenlevel=1, % Level of unfolding
bookmarksnumbered=true, % Number bookmarks
hidelinks, % do not highlight hyperlinks -- looks ugly
pdfpagelabels=true, % See manual...
plainpages=false, % See manual...
hyperfootnotes=true, % Hyperlinks for footnotes
hyperindex=true,
colorlinks=true,
linkcolor=black,
linktoc=all,
urlcolor = linkcolor,
citecolor= linkcolor % Indexeinträage verweisen auf Text
]{hyperref}    % Links and refs
\RequirePackage{lettrine}                                       % For dropped capitals
\RequirePackage{lastpage}

% Font
\RequirePackage{ebgaramond}
\RequirePackage[T1]{fontenc}



\RequirePackage[english]{babel}
\RequirePackage{abstract}                                       % edit abstract
\RequirePackage{titlesec}                                       % edit section titles
\RequirePackage{geometry}
\geometry{% siehe geometry.pdf (Figure 1)
    bottom=30mm,
    a4paper,
	showframe=false, % For debugging: try true and see the layout frames
	margin=45mm,
	marginparsep=3mm,
	marginparwidth=20mm
}
\RequirePackage{fancyhdr}
\RequirePackage[babel=true,german=quotes]{csquotes} 



% Page number
\pagestyle{fancy}
\fancyhf{}
\cfoot{Page \thepage \ of \pageref{LastPage}}
\renewcommand{\headrulewidth}{0pt}


% Nicely formated date
\newcommand{\dates}[1]{\def\@dates{#1}}

% Change font for author and affiliations
\renewcommand\Authfont{\scshape}
\renewcommand\Affilfont{\normalfont\itshape\small}

% Title 
\newcommand{\datesfont}{\fontsize{7}{8}\selectfont}
\newcommand{\titlefont}{\fontsize{22pt}{24pt}\selectfont}

\renewcommand{\@maketitle}{%
{ \centering
	{\titlefont \textcolor{maincolor}{\@title}\par}%
    \vskip10pt% 21pts between base of title and base of author line
    {\@author\par}
    \vskip8pt% 16pts between base of affiliations and base of dates line 
    {\datesfont\@ifundefined{@dates}{}{\@dates}\par}
    \vskip12pt%
	}
}

% Section titles have roman numerals for numbering
\renewcommand\thesection{\arabic{section}} 
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\roman{subsubsection}}


\titleformat{\section}[block]{\Large\scshape\centering}{\thesection.}{0.5em}{} % Change the look of the section titles
\titleformat{\subsection}[block]{\large\itshape}{\thesubsection.}{1em}{} % Change the look of the section titles
\titleformat{\subsubsection}[block]{\itshape}{\thesubsubsection.}{1em}{} % Change the look of the section titles


% abstract
\renewcommand{\abstracttextfont}{\itshape\small} % Set the abstract itself to small

% Lettrine
\input Acorn.fd
\newcommand*\initfamily{\usefont{U}{Acorn}{xl}{n}}

\newcommand{\dropcapfont}{\fontsize{42pt}{48pt}\selectfont}
\newcommand{\dropcap}[2]{\lettrine[lines=3,lraise=0,findent=0.2em, nindent=0em]{{\dropcapfont{\initfamily\textcolor{maincolor}{#1}}}}{#2}}




% Figures
\setlength{\wrapoverhang}{\marginparwidth}   %overhang of wrapfigure

\captionsetup{
    width=0.9\linewidth, % width of caption is 90% of current textwidth
    labelfont=sc,        % the label, e.g. figure 12, is bold
    font=small,          % the whole caption text (label + content) is small
    format=plain,         % no caption text under the label
    textfont=it
}


% Quotes 

\let\oldquote\quote
\let\endoldquote\endquote
\renewenvironment{quote}[2][]
  {\if\relax\detokenize{#1}\relax
     \def\quoteauthor{#2}%
   \else
     \def\quoteauthor{#2~---~#1}%
   \fi
   \oldquote}
  {\par\nobreak\smallskip\hfill(\quoteauthor)%
   \endoldquote\addvspace{\bigskipamount}}



