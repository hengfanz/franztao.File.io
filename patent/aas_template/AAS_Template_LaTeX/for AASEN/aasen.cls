%%
%%
%%  ���ߣ� �Զ�������������Э�� ������ ������
%%
%% Copyright (C) 2006 by SHANG Shulin<shangsl@gmail.com>�� 
%%                       ZUO Nianming<nianming@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%%  
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aasen}[2012/3/14 v0.1 AASEN LaTeX template class] % Need to be changed with new release
%
\LoadClass[a4paper,10pt,twocolumn,twoside,final]{article}
\RequirePackage{ifthen}
\usepackage{flushend}
\RequirePackage{picins}
\RequirePackage{ccaption}
\RequirePackage{calc}
%
%
%%--------PAGE FORMAT---------%%
\setlength{\topmargin}{0pt}
\setlength{\headsep}{15pt}  % ҳü�� ����������֮��ľ���
\setlength{\headheight}{6mm}
\setlength{\oddsidemargin}{-7mm}
\setlength{\evensidemargin}{-7mm}
\setlength{\voffset}{-0.40in}   % one inch + \voffset ҳü����ҳ���ľ���
\setlength{\hoffset}{0mm}
\setlength{\footskip}{3.5em}
\setlength{\columnsep}{8mm} % ��������֮��ļ��

\textwidth \paperwidth%
\textheight \paperheight%
\addtolength\textwidth{-35mm} 
\addtolength\textheight{-62mm} 
% extra vertical space between paragraphs normally
\setlength{\parskip}{0mm}
% extra vertical space between paragraphs within a list item
%\setlength{\parsep}{0mm}

%% �������������趨displaymath�������ĵļ��
\setlength{\abovedisplayskip}{8pt plus 2pt minus 2.5pt}
\setlength{\belowdisplayskip}{8pt plus 2pt minus 2.5pt}

\setlength{\doublerulesep}{0.5pt}

%% �о�
\renewcommand{\baselinestretch}{1.05} % 1.22 --- 1.25���о�
\renewcommand{\arraystretch}{1.06}
%
%
\newlength\aasen@linespace
\newcommand{\aasen@choosefont}[3]{%
   \setlength{\aasen@linespace}{#1*\real{\baselinestretch}}%
   \fontsize{#1}{\aasen@linespace plus#2 minus #3}\selectfont}
%
% �ο� thuthesishe��http://bbs.ctex.org/forums/index.php?showtopic=23862
% 1 in = 72 bp = 72.27 pt
% ����bp����WORD�Ĵ�С�淶
% ʵ��TeX����pt
\newcommand\zihao[1]{%
   \ifthenelse{\equal{#1}{0}}{%
       \aasen@choosefont{42bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{0-}}{%
       \aasen@choosefont{36bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{1}}{%
       \aasen@choosefont{26bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{1-}}{%
       \aasen@choosefont{24bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{2}}{%
       \aasen@choosefont{22bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{2-}}{%
       \aasen@choosefont{18bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{3}}{%
       \aasen@choosefont{16bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{3-}}{%
       \aasen@choosefont{15bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{4}}{%
       \aasen@choosefont{14bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{4-}}{%
       \aasen@choosefont{12bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5}}{%
       \aasen@choosefont{10.5bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5-}}{%
       \aasen@choosefont{9bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{6}}{%
       \aasen@choosefont{7.5bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{6-}}{%
       \aasen@choosefont{6.5bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{7}}{%
       \aasen@choosefont{5.5bp}{.1pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{8}}{%
       \aasen@choosefont{5bp}{.1pt}{.1pt}}{}}
%
%%----- Redefine \tiny \scriptsize \footnotesize\small ----------%%
%%-------------------------\normalsize --------------------------%%
%%---------------\large \Large \LARGE \huge \Huge ---------------%%
%% Refer to ctex
\def\tiny{\zihao{7-}}
\def\scriptsize{\zihao{7}}
\def\footnotesize{\zihao{6-}}
\def\small{\zihao{6}}
\def\normalsize{\zihao{5-}}%
\def\large{\zihao{5}}%
\def\Large{\zihao{4-}}%
\def\LARGE{\zihao{4}}%
\def\huge{\zihao{3}}%
\def\Huge{\zihao{2-}}%
\normalsize % make \baselinestretch take affect
% ʹ��ƪ���µ��׶ζ�������
\let\@afterindentfalse\@afterindenttrue\@afterindenttrue
% �ο����׺��ϱ���ʾ
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa, #2\fi}]}}
%
% ����ע�����ֱ����
\setlength{\footnotesep}{0pt}
% ���¶��� ��ע��
\def\footnoterule{\kern-3\p@ \hrule width .3\columnwidth height 0.4pt \kern 2.6\p@}
%
%%-------- maketitle --------%%
%
%
\renewcommand{\title}[1]{\gdef\aasen@title{{\huge\bf #1}}}
\renewcommand{\author}[1]{\gdef\aasen@author{{\large #1}}}
\newcommand{\address}[1]{\gdef\aasen@address{{\footnotesize #1}}}
%\newcommand{\email}[1]{\gdef\aasen@email{{\centering\footnotesize (E-mail: #1)}}}
\renewcommand{\abstract}[1]{\gdef\aasen@abstract{{\qquad\small {\bf Abstract:}\quad #1}}}
\newcommand{\keyword}[1]{\gdef\aasen@keyword{{\qquad\small {\bf Keywords:}\quad #1}}}
\renewcommand{\citation}[1]{\gdef\aasen@citation{{\qquad\small {\bf Citation:}\quad #1}}}
%
%
\renewcommand{\maketitle}{\par
 \begingroup
  \def\thefootnote{}%  the \thanks{} mark type is empty
  \def\footnotemark{}% and kill space from \thanks within author
   \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
   \long\def\@makefntext##1{\parindent 1em\noindent
           \hb@xt@0.5em{%
               \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
   \twocolumn[\@maketitle]%
   \thispagestyle{aasen@firstheadings}%ssl
   \@thanks%
 \endgroup%
 \setcounter{footnote}{0}%
 \global\let\thanks\relax%
 \global\let\maketitle\relax%
 \global\let\@maketitle\relax%
 \global\let\@thanks\@empty%
 \global\let\@author\@empty%
 \global\let\@title\@empty%
 \global\let\title\relax%
 \global\let\author\relax%
 \global\let\address\relax%
  \global\let\citation\relax%
 \global\let\and\relax%
%
 \global\let\cncl\relax%
 \global\let\email\relax%
%
 \global\let\aasen@title\relax%
 \global\let\aasen@author\relax%
 \global\let\aasen@address\relax%
 \global\let\aasen@abstract\relax%
 \global\let\aasen@keyword\relax%
  \global\let\aasen@citation\relax%
%
 \global\let\title\relax%
 \global\let\author\relax%
 \global\let\address\relax%
 \global\let\abstract\relax%
 \global\let\keyword\relax%
}
%
\def\@maketitle{%
    \let\footnote\thanks%
    \newpage\null% an empty hbox
    \vskip 1.2\baselineskip%
    {\centering%
    {\aasen@title\par}%
    {%\vskip 1.2em%
    \vskip 1.2\baselineskip%
    \begin{tabular}[t]{c}%
    \aasen@author%
    \end{tabular}%
    %\vskip 0.3em%
    \par%
    }%
    \vskip 0.8\baselineskip}%
%    \quad\begin{minipage}[c]{16.5cm}
%    {\centering%   
%    {\aasen@address\par}}%
%    \end{minipage}   
%    \vskip 1.0\baselineskip% 
    %\hbox to \textwidth{\noindent\rule[2mm]{\textwidth}{0.5pt}}%  
    \quad\ \begin{minipage}[c]{16.5cm}
    \linespread{1.0}\selectfont\aasen@abstract\par%
    \end{minipage}
    \vskip 0.5\baselineskip%
    \quad\ \begin{minipage}[c]{16.5cm}
    \aasen@keyword\par%
    \end{minipage}
    \vskip 0.5\baselineskip%
%    \quad\ \begin{minipage}[c]{16.5cm}
%    \aasen@citation\par%
%    \end{minipage}
    \vskip 0.2\baselineskip% 
    %\hbox to \textwidth{\noindent\rule[2mm]{\textwidth}{0.5pt}}%    
    %\ccl\par%
    \vskip 0.8\baselineskip%
}
%
\renewcommand{\refname}{\Large\bf References}
%\renewcommand{\figurename}{ͼ}
%\renewcommand{\tablename}{��}
%
\newenvironment{acknowledgement}{
    \vspace*{10pt}
    {\noindent\Large\bfseries Acknowledgements\par}
    \vspace*{10pt}
    \begingroup
    }{
    \par
    \endgroup
}
%
%%---------------- Define biography ----------------%%
\newenvironment{biography}[1][]{
\vskip 0.4\baselineskip%
\zihao{6}
\parpic{%
\includegraphics[height=3cm,width=2.4cm, keepaspectratio]{#1}}%
}{\vskip 0.4\baselineskip\par}
%
%% For author who has no photo
\newenvironment{biographynophoto}{\vskip 0.4\baselineskip\zihao{6}}{\vskip 0.4\baselineskip\par}

%%---------------- Redefine section -----------------%%
\setcounter{secnumdepth}{3}

\renewcommand\thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-2.3ex \@plus -.2ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-1.5ex \@plus -.2ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%                
                                     {\large\bfseries}}
 
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-0.1ex \@plus -.2ex \@minus -.2ex}%
                                     {0.1ex \@plus .2ex}%                
                                     {\normalsize\bfseries}}

\renewcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
%
\newcommand{\firstheadname}[1]{\gdef\aasen@firstheadname{\zihao{6} #1}}
\newcommand{\firstfootname}[1]{\gdef\aasen@firstfootname{#1}}
\newcommand{\headevenname}[1]{\gdef\aasen@headevenname{{\zihao{6} #1}}}
\newcommand{\headoddname}[1]{\gdef\aasen@headoddname{{\zihao{6} #1}}}
%%------------------aasen@firstheadings begin------------------------------------%%
\def\ps@aasen@firstheadings{
   \let\@evenhead\@empty\let\@evenfoot\@empty
   \let\@oddhead\@empty\let\@oddfoot\@empty
    \def\@evenhead{%
        \vbox{%
            \vskip 1.2mm%
            \hbox to \textwidth{{\hfill \hbox{\small{Acta Automatica Sinica,}}\ \hbox{\small{201X, X(X), X$-$X}}} }%
            \vskip 1.0mm%
            \hbox to \textwidth{{\hfill \hbox{\small{DOI: 10.1007/s10453-004-5872-7}}} }%
%            \vskip 1.0mm%
%           \hrule width\textwidth height0.63pt\vskip0.85pt \hrule width\textwidth height0.63pt%
        }%
    }
   \def\@evenfoot{
   \hbox{\aasen@firstfootname}
    }
   \let\@oddhead\@evenhead%
   \let\@oddfoot\@evenfoot%
}
%%-----------------aasen@firstheadings end--------------------------------------%%
%%-------------------aasenheadings begin----------------------------------------%%
\def\ps@aasenheadings{
    \let\@evenhead\@empty\let\@evenfoot\@empty
    \let\@oddhead\@empty\let\@oddfoot\@empty
    \def\@evenhead{%
        \vbox{%
            \vskip 3.2mm%
            \hbox to \textwidth{{\thepage \hfill \scriptsize {\sl {\aasen@headevenname}}\hfill} }%
%            \vskip 2.0mm%
%            \hbox to \textwidth{\noindent\rule[2mm]{\textwidth}{0.5pt}}%
        }%
    }
    \def\@oddhead{%
        \vbox{%
            \vskip 3.2mm%
            \hbox to \textwidth {\hfill \scriptsize {\sl {\aasen@headoddname}}\hfill{\normalsize \thepage}}%
%            \vskip 2.0mm%
%            \hbox to \textwidth{\noindent\rule[2mm]{\textwidth}{0.5pt}}%  
        }
    }%
}
%---------------------headings end------------------------------------------%%
%
%%-------- Set the begin and end method for class -----%%
\AtBeginDocument{%
   \flushend
   \captiondelim{ } % ��ͼ������ȱʡ�ķָ��� ``:''��Ϊ��
   \captionnamefont{\small}%
   \captiontitlefont{\small}%
   }
\AtEndDocument{\clearpage}

\endinput
%%-------- The end of aasen.cls -------------%%