
\ProvidesClass{application}[]
\LoadClass{article}

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
urlcolor = blue,
citecolor= blue % Indexeinträage verweisen auf Text
]{hyperref}    % Links and refs
\RequirePackage{lettrine}                                       % For dropped capitals
\RequirePackage[sc]{mathpazo}                                   % font
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
\cfoot{Page \thepage}
\renewcommand{\headrulewidth}{0pt}

% Nicely formated date
\newcommand{\dates}[1]{\def\@dates{#1}}


% Title 
\newcommand{\datesfont}{\fontsize{7}{8}\selectfont}
\newcommand{\titlefont}{\fontsize{22pt}{24pt}\selectfont}

\renewcommand{\@maketitle}{%
{ \centering
	{\titlefont \@title\par}%
    \vskip10pt% 21pts between base of title and base of author line
    {\@author\par}
    \vskip8pt% 16pts between base of affiliations and base of dates line 
    {\datesfont\@ifundefined{@dates}{}{\@dates}\par}
    \vskip12pt%
	}
}

% Change font for author and affiliations
\renewcommand\Authfont{\scshape}
\renewcommand\Affilfont{\itshape\small}

% Section titles have roman numerals for numbering
\renewcommand\thesection{\Roman{section}} 
\renewcommand{\thesubsection}{\thesection.\Roman{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\Roman{subsubsection}}


\titleformat{\section}[block]{\Large\scshape\centering}{\thesection.}{0.5em}{} % Change the look of the section titles
\titleformat{\subsection}[block]{\large\itshape}{\thesubsection.}{1em}{} % Change the look of the section titles
\titleformat{\subsubsection}[block]{\itshape}{\thesubsubsection.}{1em}{} % Change the look of the section titles


% abstract
\renewcommand{\abstracttextfont}{\itshape\small} % Set the abstract itself to small

% Lettrine
\newcommand{\dropcapfont}{\bfseries\fontsize{32pt}{38pt}\selectfont}
\newcommand{\dropcap}[3]{\lettrine[lines=2,lraise=0,findent=0.2em, nindent=#3em]{{\dropcapfont{#1}}}{#2}}


% Figures
\setlength{\wrapoverhang}{\marginparwidth}   %overhang of wrapfigure

\captionsetup{
    width=0.9\linewidth, % width of caption is 90% of current textwidth
    labelfont=bf,        % the label, e.g. figure 12, is bold
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
