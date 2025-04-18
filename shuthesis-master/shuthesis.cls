%%
%% This is file `shuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% shuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2017-2024 by Zhenyu Zhang <zhenyuzhang@shu.edu.cn>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 2.0
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 2.0 or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 


\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{shuthesis}
[2023/12/18 v2.2.0 Shanghai University Thesis Template]
\hyphenation{Shu-Thesis}
\def\shuthesis{\textsc{ShuThesis}}
\def\version{2.2.0}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=shu,
  prefix=shu@,
  setkeys=\kvsetkeys}
\newif\ifshu@master
\newif\ifshu@profmaster
\newif\ifshu@doctor
\define@key{shu}{type}{%
  \shu@masterfalse
  \shu@profmastertrue
  \shu@doctorfalse
  \expandafter\csname shu@##true\endcsname}
\def\shu@deprecated@type@option{%
  \kvsetkeys{shu}{type=\CurrentOption} % for compatability.
  \ClassError{shuthesis}{Option '\CurrentOption' is deprecated, \MessageBreak
                         please use 'type=\CurrentOption' instead}{}}
\DeclareVoidOption{master}{\shu@deprecated@type@option}
\DeclareVoidOption{doctor}{\shu@deprecated@type@option}
\DeclareBoolOption{secret}
\DeclareBoolOption{arialtitle}
\DeclareBoolOption{raggedbottom}
\DeclareBoolOption{pifootnote}
\DeclareBoolOption{nocolor}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\kvsetkeys{shu}{raggedbottom,arialtitle}
\ProcessKeyvalOptions*
\LoadClass[a4paper,UTF8,zihao=-4,scheme=plain]{ctexbook}
\PassOptionsToPackage{no-math}{fontspec}
\RequirePackage{ifxetex}
\ifxetex
\setCJKfamilyfont{LanTingHei}{FZLanTing.ttf}
\newcommand{\LanTingHei}{\CJKfamily{LanTingHei}}
\setCJKfamilyfont{XBSong}{FZXBsong.ttf}
\newcommand{\XBSong}{\CJKfamily{XBSong}}
\setCJKfamilyfont{HanYikai}{HanYikaishu.ttf}
\newcommand{\HanYikai}{\CJKfamily{HanYikai}}
\else\fi
  \ifshu@master\relax\else
    \ifshu@profmaster\relax\else
      \ifshu@doctor\relax\else
          \ClassError{shuthesis}%
                    {Please specify thesis type in option: \MessageBreak
                      type=[master|profmaster|doctor]}{}
      \fi
    \fi
  \fi
\RequirePackage{etoolbox}
\RequirePackage{xparse}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage{bm}
\RequirePackage{mathtools}
\ifXeTeX
  \PassOptionsToPackage{no-math}{fontspec}
  \setmainfont{texgyretermes}[
    UprightFont = *-regular ,
    BoldFont = *-bold ,
    ItalicFont = *-italic ,
    BoldItalicFont = *-bolditalic ,
    Extension = .otf ,
    Scale = 1.0]

  \setsansfont{texgyreheros}[
    UprightFont = *-regular ,
    BoldFont = *-bold ,
    ItalicFont = *-italic ,
    BoldItalicFont = *-bolditalic ,
    Extension = .otf ,
    Scale = 0.9]
\else
  \RequirePackage{newtxtext}
\fi
\RequirePackage{courier}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifshu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\ifshu@pifootnote
  \RequirePackage{pifont}
\fi
\RequirePackage{CJKfntef}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{makecell}
\RequirePackage{booktabs}
\RequirePackage{ulem}
\RequirePackage[numbers,sort&compress,square,super]{natbib}
\RequirePackage{gbt7714}
\patchcmd{\@chapter}{\addtocontents{lof}{\protect\addvspace{10\p@}}}{}{}{} % lof
\patchcmd{\@chapter}{\addtocontents{lot}{\protect\addvspace{10\p@}}}{}{}{} % lot
\RequirePackage[list=off]{bicaption}
\captionsetup[figure][bi-second]{name=Figure} % 设置图的英文编号前缀
\captionsetup[table][bi-second]{name=Table} % 设置表的英文编号前缀
\RequirePackage{hyperref}
\ifxetex
  \hypersetup{%
    CJKbookmarks=true}
\else
  \hypersetup{%
    unicode=true,
    CJKbookmarks=false}
\fi
\hypersetup{%
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=2,
  breaklinks=true,
  colorlinks=true,
  plainpages=false}
\ifshu@nocolor
\hypersetup{%
  citecolor=black,
  linkcolor=black,
  urlcolor=black}
\else
\hypersetup{%
  citecolor=blue,
  linkcolor=blue,
  urlcolor=blue}
\fi
\urlstyle{same}
\RequirePackage{geometry}
\geometry{
  a4paper,
  ignoreall,
  nomarginpar}
\geometry{
  left=28mm,
  right=28mm,
  headheight=8mm,
  headsep=7mm,
  top=30mm,
  bottom=26mm,
  footskip=7mm}
\RequirePackage{fancyhdr}
\def\theoremautorefname{定理}
\def\lemmaautorefname{引理}
\def\definitionautorefname{定义}
\def\corollaryautorefname{推论}
\def\propositionautorefname{命题}
\let\shu@cleardoublepage\cleardoublepage
\newcommand{\shu@clearemptydoublepage}{%
  \clearpage{\pagestyle{shu@empty}\shu@cleardoublepage}}
\let\cleardoublepage\shu@clearemptydoublepage
\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{shu@empty}}
\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{shu@headings}}
\renewcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{23bp}%
  \abovedisplayskip=13bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=13bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\def\shu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][2]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\shu@def@fontsize{maxsize}{57bp}
\shu@def@fontsize{chuhao}{42bp}
\shu@def@fontsize{xiaochu}{36bp}
\shu@def@fontsize{yihao}{26bp}
\shu@def@fontsize{xiaoyi}{24bp}
\shu@def@fontsize{erhao}{22bp}
\shu@def@fontsize{xiaoer}{18bp}
\shu@def@fontsize{sanhao}{16bp}
\shu@def@fontsize{xiaosan}{15bp}
\shu@def@fontsize{sihao}{14bp}
\shu@def@fontsize{banxiaosi}{13bp}
\shu@def@fontsize{xiaosi}{12bp}
\shu@def@fontsize{dawu}{11bp}
\shu@def@fontsize{wuhao}{10.5bp}
\shu@def@fontsize{xiaowu}{9bp}
\shu@def@fontsize{liuhao}{7.5bp}
\shu@def@fontsize{xiaoliu}{6.5bp}
\shu@def@fontsize{qihao}{5.5bp}
\shu@def@fontsize{bahao}{5bp}
\fancypagestyle{shu@empty}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{shu@plain}{%
  \fancyhead{}
  \fancyfoot[C]{\xiaowu\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{shu@headings}{%
  \fancyhead{}
  \fancyhead[L]{\xiaowu 上海大学\shu@cdegree 学位论文}
  \fancyfoot{}
  \fancyfoot[C]{\wuhao\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{shu@onlyhead}{%
  \fancyhead{}
  \fancyhead[L]{\xiaowu 上海大学\shu@cdegree 学位论文}
  \renewcommand{\headrulewidth}{0.4pt}}
\ctexset{%
  space=auto,
  autoindent=true}
\setlist{nosep}
\def\shu@textcircled#1{%
  \ifnum\value{#1} >9
    \ClassError{shuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}
  \fi
  \ifshu@pifootnote%
    \ding{\the\numexpr\value{#1}+171\relax}%
  \else%
    \textcircled{\xiaoliu\arabic{#1}}%
  \fi}
\renewcommand{\thefootnote}{\shu@textcircled{footnote}}
\renewcommand{\thempfootnote}{\shu@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\shu@footnotesize\footnotesize
\renewcommand\footnotesize{\shu@footnotesize\xiaowu[1.5]}
\footnotemargin1.5em\relax
\let\shu@makefnmark\@makefnmark
\def\shu@@makefnmark{\hbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\shu@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\shu@makefnmark}{}{}
\allowdisplaybreaks[4]
\numberwithin{equation}{chapter}
\setlength{\floatsep}{20bp \@plus4pt \@minus1pt}
\setlength{\intextsep}{20bp \@plus4pt \@minus2pt}
\setlength{\textfloatsep}{20bp \@plus4pt \@minus2pt}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\let\old@tabular\@tabular
\def\shu@tabular{\dawu[1.5]\old@tabular}
\DeclareCaptionLabelFormat{shu}{{\dawu[1.5]\heiti #1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{shu}{\hspace{1em}}
\DeclareCaptionFont{shu}{\dawu[1.5]}
\captionsetup{labelformat=shu,labelsep=shu,font=shu}
\captionsetup[table]{position=top,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[figure]{position=bottom,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[sub]{font=shu,skip=6bp}
\captionsetup[subfigure]{belowskip=3bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\shu@LT@array\LT@array
\def\LT@array{\dawu[1.5]\shu@LT@array} % set default font size
\RequirePackage[ruled,linesnumbered,algochapter]{algorithm2e}
\def\shu@title@font{%
  \ifshu@arialtitle\sffamily\else\relax\fi}
\AtBeginDocument{%
  \pagestyle{shu@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\shu@chapter@titleformat[1]{%
  \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
 }
\ctexset{%
  chapter={
    afterindent=true,
    pagestyle={shu@headings},
    beforeskip={9bp},
    aftername=\hskip\ccwd,
    afterskip={20bp},
    format={\centering\shu@title@font\heiti\xiaoer[1.2]},
    nameformat=\relax,
    number=\chinese{chapter},
    numberformat=\relax,
    titleformat=\shu@chapter@titleformat,
  },
  section={
    afterindent=true,
    beforeskip={24bp\@plus 1ex \@minus .2ex},
    afterskip={6bp\@plus .2ex},
    format={\shu@title@font\heiti\sanhao[1.4]},
  },
  subsection={
    afterindent=true,
    beforeskip={16bp\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\shu@title@font\heiti\sihao[1.5]},
  },
  subsubsection={
    afterindent=true,
    beforeskip={16bp\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\csname shu@title@font\endcsname\heiti\sihao[1.6]},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true}
\newcounter{shu@bookmark}
\NewDocumentCommand\shu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{shuthesis}{You have to use the star form: \string\shu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi\phantomsection%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \addtocounter{shu@bookmark}\@ne
      \pdfbookmark[0]{#3}{shuchapter.\theshu@bookmark}
    }{%
      \addcontentsline{toc}{chapter}{#3}
    }
  }{%
    \ifthenelse{\equal{\shu@showabstract}{false}}{%
      \ifthenelse{\equal{#3}{\cabstractname} \or \equal{#3}{\eabstractname}}{}{%
        \addcontentsline{toc}{chapter}{#3}
      }
    }{%
      \addcontentsline{toc}{chapter}{#3}
    }
  }%
  \chapter*{#3}%
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}
    {\@mkboth{}{}}
    {\@mkboth{#4}{#4}}
  }{%
    \@mkboth{#3}{#3}
  }
 }
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\def\@pnumwidth{2em}
\def\@tocrmarg{\@pnumwidth}
\def\@dotsep{1}
\patchcmd{\@dottedtocline}{#4}{\csname shu@toc@font\endcsname #4}{}{}
\patchcmd{\@dottedtocline}{\hb@xt@\@pnumwidth}{\hbox}{}{}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 4bp \@plus\p@
    \setlength\@tempdima{3.7em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      % numberline is called here, and it uses \@tempdima
      {\csname shu@toc@font\endcsname\heiti #1}
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak{\normalfont\normalcolor #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\def\shu@def@term#1{%
  \define@key{shu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname shu@#1\endcsname{##1}}
  \csname #1\endcsname{}}
\shu@def@term{secretlevel}
\shu@def@term{secretyear}
\shu@def@term{id}
\shu@def@term{catalognumber}
\shu@def@term{cauthor}
\shu@def@term{eauthor}
\shu@def@term{csupervisor}
\shu@def@term{esupervisor}
\shu@def@term{ctitle}
\shu@def@term{etitle}
\shu@def@term{cdepartment}
\shu@def@term{edepartment}
\shu@def@term{cmajor}
\shu@def@term{emajor}
\shu@def@term{cdisciplines}
\shu@def@term{edisciplines}
\shu@def@term{cdate}
\shu@def@term{edate}
\shu@def@term{coverdate}
\shu@def@term{showabstract}
\newcommand{\shu@@cabstract}[1]{\long\gdef\shu@cabstract{#1}}
\newenvironment{cabstract}{\Collect@Body\shu@@cabstract}{}
\newcommand{\shu@@eabstract}[1]{\long\gdef\shu@eabstract{#1}}
\newenvironment{eabstract}{\Collect@Body\shu@@eabstract}{}
\def\shu@parse@keywords#1#2{
  \define@key{shu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname shu@#1\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname shu@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname shu@#1\endcsname{%
          \ignorespaces\csname #2\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
      \expandafter\csname shu@#1\expandafter\endcsname\expandafter{\reserved@a}
     }
   }
 }
\shu@parse@keywords{ckeywords}{shu@ckeywords@separator}
\shu@parse@keywords{ekeywords}{shu@ekeywords@separator}
\def\shusetup{\kvsetkeys{shu}}

\def\shu@first@page{\renewcommand{\ULthickness}{1.8pt}%
 {\noindent\ifxetex\XBSong\else\bfseries\songti\fi%
 中图分类号：{\bfseries\shu@catalognumber}\hfill 单位代号：{\bfseries 10280\hphantom{000}}\\
 密\hphantom{空白空}级：\expandafter\ifshu@secret\shu@secret@content\else%
 \shu@secretlevel\fi\hfill 学\hphantom{空白}号：{\bfseries\shu@id}}
 \par\vskip1mm
 \noindent\uline{\hskip105mm}\par\vskip2mm
   \ifshu@nocolor
   \raisebox{1ex}[0pt][0pt]{
   \includegraphics[height=3cm,width=9.8cm]{shublack.pdf}}\hskip5mm
   \includegraphics[height=3.3cm,width=2.7cm]{shulogoblack.pdf}
   \else
   \raisebox{1ex}[0pt][0pt]{
   \includegraphics[height=3cm,width=9.8cm]{shu.pdf}}\hskip5mm
   \includegraphics[height=3.3cm,width=2.7cm]{shulogo.pdf}\fi\par\vskip5mm
   \centerline{\maxsize\ifxetex\LanTingHei\else\bfseries\heiti\fi\shu@cdegree 学位论文}
 \par\vskip-1mm
 \noindent\uline{\hskip\linewidth}\par\vskip1mm
 {\zihao{-1}\bfseries
  \centerline{SHANGHAI~~UNIVERSITY}
  \ifshu@profmaster
    \centerline{PROFESSIONAL~~MASTER'S}
    \centerline{DISSERTATION}
  \else
    \ifshu@doctor
    \centerline{DOCTORAL~~DISSERTATION}
    \else
      \centerline{\MakeUppercase{\shu@edegree}'S~~DISSERTATION}
    \fi
  \fi}
 \begin{center}
  {\setlength\arrayrulewidth{1pt}
  \begin{tabular}{|c|c|}
    \hline
    \begin{minipage}[c][4cm][c]{2.5em}
      \centering%
      \zihao{-2}\ifxetex\HanYikai\else\bfseries\kaishu\fi\makecell{题\\ 目}
    \end{minipage}
    &
    \begin{minipage}[c][4cm][c]{11cm}
      \centering%
      \erhao[1.4]\bfseries\ifxetex\LanTingHei\else\heiti\fi
      \shu@ctitle
    \end{minipage}
    \\\hline
  \end{tabular}}
 \end{center}
 \vfill\renewcommand{\ULthickness}{1pt}
 \begin{center}
  {\heiti\xiaoer[1.9]
  \begin{tabular}{cc}
    \makebox[4em][s]{作者}          & \uline{\kaishu\makebox[12em]{\shu@cauthor}}\\
    \makebox[4em][s]{学科专业}      & \uline{\kaishu\makebox[12em]{\shu@cmajor}}\\
    \makebox[4em][s]{导师}          & \uline{\kaishu\makebox[12em]{\shu@csupervisor}}\\
    \makebox[4em][s]{完成日期}      & \uline{\kaishu\makebox[12em]{\shu@coverdate}}\\
  \end{tabular}}
 \end{center}
 \if@openright\cleardoublepage\else\clearpage\fi}
\newcommand{\makefirstpage}{
 \newgeometry{left=3.5cm,right=3.5cm,top=3cm,bottom=3.5cm}
 \shu@first@page
 \restoregeometry}
\newcommand{\shu@committee}{
 \pagestyle{shu@onlyhead}
 {\noindent 姓\hphantom{空白}名：{\shu@cauthor}\hfill 学号：{\shu@id}\\
  论文题目：\let\\=\relax{\shu@ctitle}} \par
 \vskip1.5cm
 \noindent\centerline{\zihao{2} \ifxetex\LanTingHei\else\bfseries\heiti\fi 上海大学} \par
 \vskip1.5cm
 \erhao[1.5] 本论文经答辩委员会全体委员审查，
 确认符合上海大学\shu@cdegree 学位论文质量要求。\par
 \vskip3.9cm
 \zihao{-2} 答辩委员会签名:\par
 \vskip1cm
 主\hphantom{空白}席:\par
 \vskip1cm
 委\hphantom{空白}员:\par
 \vskip5cm
 导\hphantom{空白}师:\par
 \vskip1cm
 答辩日期: \hphantom{空白空白}年\hphantom{空白}月\hphantom{空白}日
 \if@openright\cleardoublepage\else\clearpage\fi
 }
\newcommand{\shu@authordeclare}{%
 {\noindent 姓\hphantom{空白}名：{\shu@cauthor}\hfill 学号：{\shu@id}\\
  论文题目：\let\\=\relax{\shu@ctitle}} \par
 \vskip2.5cm
 \begin{center}
 \zihao{3}\ifxetex\LanTingHei\else\bfseries\heiti\fi 上海大学学位论文原创性声明
 \end{center} \par
 \sihao[1.7]
 本人郑重声明: 所呈交的学位论文是本人在导师指导下，独立进行研究工作所取得的成果。
 除了文中特别加以标注和致谢的内容外，论文中不包含其他人已发表或撰写过的研究成果。
 参与同一工作的其他研究者对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。\par
 \vskip1cm
 \hfill 学位论文作者签名: \hphantom{空白空白空}\par
 \vskip1cm
 \hfill 日期: \hphantom{空白空白}年\hphantom{空白}月\hphantom{空白}日
 \vskip2.5cm
 \begin{center}
 \zihao{3}\ifxetex\LanTingHei\else\bfseries\heiti\fi 上海大学学位论文使用授权说明
 \end{center}
 \par
 本人完全了解上海大学有关保留、使用学位论文的规定，即: 学校有权保留论文及送交论文复印件，
 允许论文被查阅和借阅；学校可以公布论文的全部或部分内容。\par
 ({\ifxetex\XBSong\else\bfseries\songti\fi 保密的论文在解密后应遵守此规定})
 \vskip1cm
 \noindent 学位论文作者签名: \hphantom{空白空白空}
 \hfill 导师签名: \hphantom{空白空白空白空白} \par
 \vskip1cm
 \noindent 日期: \hphantom{空白空}年\hphantom{空白}月\hphantom{空白}日
 \hfill 日期: \hphantom{空白空}年\hphantom{空白}月\hphantom{空白}日 \par
\if@openright\cleardoublepage\else\clearpage\fi}
\newcommand{\shu@cncover}{%
 \vspace*{1.3cm}
 \centerline{\zihao{2} 上海大学\shu@cdisciplines\shu@cdegree 学位论文}
 \vskip3.5cm
 \begin{center}\yihao[1.5]{\bfseries{\shu@ctitle}}\end{center}
 \vskip3.5cm
 \begin{center}\xiaoer[1.8]
  \begin{tabular}{cc}
   \makebox[4em][s]{\bfseries{作者}}:     & \uline{\kaishu\makebox[12em]{\shu@cauthor}}\\
   \makebox[4em][s]{\bfseries{学科专业}}: & \uline{\kaishu\makebox[12em]{\shu@cmajor}}\\
   \makebox[4em][s]{\bfseries{导师}}:     & \uline{\kaishu\makebox[12em]{\shu@csupervisor}}\\
  \end{tabular}
 \end{center}
 \vskip3.5cm
 \begin{center}
 \sanhao[1.6]\shu@cdepartment\\
 上海大学\\
 \shu@cdate
 \end{center}
\if@openright\cleardoublepage\else\clearpage\fi}
\newcommand{\shu@engcover}{%
 \vspace*{.5cm}
 \begin{center}
 \sanhao[1.6] A Dissertation Submitted to Shanghai University
 for the Degree \\ of
 \ifshu@doctor Doctor of Philosophy \else Master \fi
 in \shu@edisciplines\par
 \vskip3cm
 \begin{center}\zihao{1}{\bfseries{\shu@etitle}}\end{center}
 \vskip3cm
 \begin{tabular}{rl}
 \bfseries{Candidate}:  & \shu@eauthor\\
 \bfseries{Major}:      & \shu@emajor\\
 \bfseries{Supervisor}: & \shu@esupervisor\\
 \end{tabular}
 \vskip3cm
 \bfseries\shu@edepartment\\
 Shanghai University\\
 \shu@edate
 \end{center}
 \if@openright\cleardoublepage\else\clearpage\fi}
\def\makecover{\shu@setup@pdfinfo\shu@makecover}
\def\shu@setup@pdfinfo{
  \hypersetup{
    pdftitle={\shu@ctitle},
    pdfauthor={\shu@cauthor},
    pdfsubject={\shu@cdegree},
    pdfkeywords={\shu@ckeywords},
    pdfcreator={\shuthesis-v\version}}}
\newcommand{\shu@makecover}{
  \phantomsection
  \pdfbookmark[-1]{\shu@ctitle}{ctitle}
  \normalsize
 \shu@committee
 \normalsize
 \shu@authordeclare
 \shu@cncover
 \shu@engcover
 \normalsize
 \shu@makeabstract
 \let\@tabular\shu@tabular
 \if@openright\cleardoublepage\else\clearpage\fi}
\newbox\shu@kw
\newcommand\shu@put@keywords[2]{%
  \begingroup
    \setbox\shu@kw=\hbox{#1}
    \noindent\hangindent\wd\shu@kw\hangafter1%
    \box\shu@kw#2\par
  \endgroup}
\newcommand{\shu@makeabstract}{%
  \shu@chapter*{\cabstractname}
    \pagestyle{shu@headings}
    \pagenumbering{Roman}
  \shu@cabstract
  \vskip12bp
  \shu@put@keywords{\heiti\shu@ckeywords@title}{\shu@ckeywords}
  \shu@chapter*{\eabstractname}
  \shu@eabstract
  \vskip12bp
  \shu@put@keywords{%
    \textbf{Keywords}:\enskip}{\shu@ekeywords}}
\newenvironment{denotation}[1][2.5cm]{%
  \shu@chapter*{\shu@denotation@name}
  \vskip-30bp\begin{shu@denotation}[labelwidth=#1]
 }{%
  \end{shu@denotation}
 }
 \newlist{shu@denotation}{description}{1}
 \setlist[shu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=5cm,
  rightmargin=2.5cm,
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
 }
\newenvironment{acknowledgement}{\shu@chapter*[致谢]{致\hspace{\ccwd}谢}}{}
\def\shu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\shu@listof#1{% #1: float type
  \@ifstar
    {\shu@chapter*[]{\csname list#1name\endcsname}\shu@starttoc{#1}}
    {\shu@chapter*{\csname list#1name\endcsname}\shu@starttoc{#1}}}
\renewcommand\listoffigures{\shu@listof{figure}}
\renewcommand*\l@figure{\addvspace{6bp}\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\shu@listof{table}}
\let\l@table\l@figure
\renewenvironment{thebibliography}[1]{%
   \shu@chapter*{\bibname}%
   \xiaosi[2]
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\renewcommand{\makelabel}[1]{##1\hfill}
         \settowidth\labelwidth{1.1cm}
         \setlength{\labelsep}{0em}
         \setlength{\itemindent}{0pt}
         \setlength{\leftmargin}{\labelwidth+\labelsep}
         \addtolength{\itemsep}{-0.7em}
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy\frenchspacing
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \interlinepenalty4000%
    \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
    \endlist\frenchspacing}
\let\shu@appendix\appendix
\renewenvironment{appendix}{%
  \let\title\shu@appendix@title
  \shu@appendix}{%
  \let\title\@gobble}
\newenvironment{publications}[1][\shu@publications@title]{%
 \shu@chapter*{#1}}{}
\AtEndOfClass{\input{shuthesis.cfg}}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `shuthesis.cls'.
