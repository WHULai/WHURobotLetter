%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%    Wuhan University, School of Robotics LaTeX letter class
%    Adapted from Oxford Mathematical Institute letter class
%    Original created by K A Gillow, 6 July 2010
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{whurobotletter}

\def\textest{pdflatex}
\def\cmrbody{false}
\DeclareOption{xelatex}{\def\textest{xelatex}}
\DeclareOption{cmrbody}{\def\cmrbody{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions

\LoadClass[a4paper]{letter}
\RequirePackage{graphicx}
\RequirePackage{ifthen}

\ifthenelse{\equal{\textest}{xelatex}}%
{
%alternative font setup if using xelatex (which also produces a PDF)
\RequirePackage{xltxtra}
\ifthenelse{\equal{\cmrbody}{true}}%
{}
{%set main font to be Times
\setmainfont[Mapping=tex-text]{Times New Roman}
}
%set sans font to be Times as well
\setsansfont{Times New Roman}
}
{
%default font setup for use with pdflatex
\RequirePackage[T1]{fontenc}
\ifthenelse{\equal{\cmrbody}{true}}%
{}
{%set main font to be Times
\RequirePackage{mathptmx}
}
%set textsf font to be Times as well
\renewcommand{\sfdefault}{ptm}
}

% define page layout lengths
\setlength{\textheight}{190mm} %firstpage only
\setlength{\textwidth}{160mm}
\setlength{\topmargin}{-43mm}
\setlength{\headheight}{30mm}
\setlength{\footskip}{10mm}
\setlength{\oddsidemargin}{0mm} 
\setlength{\evensidemargin}{0mm}
\setlength{\parskip}{1em}
\setlength{\parindent}{0.0em}

% define newcommands for user set information
\newcommand*{\refcode}[1]{\def\fromrefcode{#1}}
\newcommand*{\subject}[1]{\def\fromsubject{#1}}
\newcommand*{\position}[1]{\def\fromposition{#1}}
\newcommand*{\phone}[1]{\def\fromphone{#1}}
%\newcommand*{\fax}[1]{\def\fromfax{#1}}
\newcommand*{\email}[1]{\def\fromemail{#1}}
\newcommand*{\researchgroup}[1]{\def\fromresearchgroup{#1}}
%set optional settings, initial values
\refcode{}\subject{}
\position{}\phone{}%\fax{273583}
\email{enquiries}
\researchgroup{}

% first page header and footer 
\renewcommand{\ps@firstpage}{%
  \setlength{\headsep}{70mm}
  \setlength{\textwidth}{166mm}
  % 
  \renewcommand{\@oddhead}{%
    \parbox[t]{\textwidth}{%
      \raisebox{-4mm}{{\parbox[t]{100mm}{%
             {\large \textsf{%
                 \ifthenelse{\equal{\fromresearchgroup}{}}%
                 {}{\fromresearchgroup\\}%
                 School of Robotics\\
                 Lei Jun Science and Technology Building\\
                 Wuhan University, Wuhan, 430072}}\\[26mm]
            \toname\\
            \toaddress
          }
        }}\hfill
      \parbox[t]{60mm}{%
        \flushright \includegraphics[width=36mm]{whulogo}\\[5mm]
        \ifthenelse{\equal{\fromrefcode}{}}%
        {}{Ref: \fromrefcode\hspace*{6mm}\vspace{\baselineskip}\par}%
        \@date\hspace*{6mm}
      }%
    }%
  }%
  % 
  \renewcommand{\@oddfoot}{%  
    \hspace*{-3mm}
    \parbox{\textwidth}{
      \centering
       \scriptsize 
       \textsf{General Enquiries Tel: +86 (0)27 6876 2500 \quad 
         \ifthenelse{\equal{\fromphone}{}}%
         {}{Direct: +86 (0)27 \fromphone}%\\
         %Fax: +86 (0)27 {\fromfax} \quad
         \\ Email: %
         \ifthenelse{\equal{\fromemail}{enquiries}}%
         {robotics@whu.edu.cn}
         {\fromemail} \quad
         Web: https://robotics.whu.edu.cn%
      }
     }
   }
   % 
  \renewcommand{\@evenhead}{}
  \renewcommand{\@evenfoot}{}
}

% subsequent pages with just a small logo in top right corner
\renewcommand{\ps@headings}{%
  \setlength{\headsep}{30mm}
  % 
  \renewcommand{\@oddhead}{
    \parbox[t]{158mm}{%
      \flushright{\includegraphics[width=20mm]{whulogo}}
    }}
  % 
  \renewcommand{\@oddfoot}{}
  \renewcommand{\@evenhead}{\@oddhead}
  \renewcommand{\@evenfoot}{\@oddfoot}
}

\providecommand{\@evenhead}{}\providecommand{\@oddhead}{}
\providecommand{\@evenfoot}{}\providecommand{\@oddfoot}{}

\pagestyle{headings}

%write the date in the form 1st July 2010 rather than July 1, 2010
\renewcommand{\today}{%
  \ifcase\day\or
  1st\or 2nd\or 3rd\or 4th\or 5th\or
  6th\or 7th\or 8th\or 9th\or 10th\or
  11th\or 12th\or 13th\or 14th\or 15th\or
  16th\or 17th\or 18th\or 19th\or 20th\or
  21st\or 22nd\or 23rd\or 24th\or 25th\or
  26th\or 27th\or 28th\or 29th\or 30th\or
  31st\fi~\ifcase\month\or January\or February\or March\or
  April\or May\or June\or July\or August\or September\or October\or
  November\or December\fi \space \number\year%
}

% redefine opening command to show letter subject
% and set subsequent page lengths
\renewcommand{\opening}[1]{\thispagestyle{firstpage}%
  \setlength{\textheight}{230mm}
  #1 \par
  \ifthenelse{\equal{\fromsubject}{}}
  {}{\textbf{\fromsubject} \par}
  \nobreak
}

% redefine closing command to sign off with name and postion
\renewcommand{\closing}[1]{\par\nobreak\vspace{2\parskip}%
  \stopbreaks
  \noindent
  \parbox{\indentedwidth}{\raggedright
    \ignorespaces #1\\[9\medskipamount]%
    \fromsig\\ \fromposition}%
  \par
}
