%% dlmuupcsrep.cls
%% Copyright 2008 M. Y. Name
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Githubonline1396529
%
% This work consists of the file dlmuupcsrep.cls

\ProvidesClass{dlmuupcsrep}[
    2024/10/07 A Unoffical document class 
    for Dalian Maritime University undergraduate students 
    to make their course  experiment reports]

\LoadClass[
    12pt, openany
    ]{article}

% 导入 CTEX 宏包来支持中文文本 
\RequirePackage{ctex}

% \let\cleardoublepage\clearpage

% 用于设置目录样式的包
\RequirePackage{titlesec}
\RequirePackage[titles, subfigure]{tocloft}
\RequirePackage{titletoc}

% 其他常见的 TeX 包
\RequirePackage{array}

% 设置页面布局
\RequirePackage[
    a4paper,
    left=3.18cm,
    right=3.18cm,
    top=2.54cm,
    bottom=2.54cm]{geometry}

\RequirePackage{ragged2e}
\RequirePackage{fontspec}
\RequirePackage{float}
\RequirePackage{ulem}
\RequirePackage{soul}

% 与数学环境有关的包
% 真的会有人打算在思政课报告里面写数学公式吗？不管怎么说，这里毕竟是 LaTeX
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[
    colorlinks=true, 
    linkcolor=black, 
    citecolor=black, 
    urlcolor=black]{hyperref} 
\RequirePackage{amsthm} 
\RequirePackage{mathtools} 
\RequirePackage{mathrsfs}
\RequirePackage{calc}

% 其他包
\RequirePackage{fancyhdr}
\RequirePackage{enumerate}
\RequirePackage{enumitem} % 用于有序列表的设置
\RequirePackage{metalogo}
\RequirePackage{setspace}
\RequirePackage{caption} % For customizing captions
\RequirePackage{subcaption}
\RequirePackage{abstract} % 用于设置摘要

% 用于设置表格样式的包
\RequirePackage{booktabs} % 使用 Excel2LaTeX 插件导出的表格需要这个
\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage{pdfpages}
\RequirePackage[
    style=gb7714-2015,
    sorting=none, 
    backend=biber,
    hyperref=true,
    url=false]{biblatex}  % 使用 biblatex 处理引用

% 颜色处理
\RequirePackage{color}
\RequirePackage{xcolor}

%             A____A       A____A
%            /*    *\     /*    *\
%           {   _  _ }   {   _  _ }
%           A` >  v /<   A` >  ^ /<
%         / !!!!! !!}  / !!!!! !!}
%        / ! \!!!!! | / ! \!!!!! |
%   ____{   ) |  |  |    ) |  |  |
%  / ___{!!!c |  |  | !!!c |  |  |
% { (___ \__\__@@_)@_)\__\__@@_)@_)
%  \____)       \____)

% \addbibresource{references.bib}  % 指定参考文献文件名

% 编译器约束
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{dlmuucexprepthesis}{
    You must use the 'xelatex' driver\MessageBreak Please choose 'xelatex'}{%
    Just choose 'xelatex', no 'pdflatex' or 'latex' and so on.}
\fi

% 如果需要使用 .csl 样式文件，可以添加如下命令：
% \DeclareLanguageMapping{chinese}{chinese-gb7714-2015}
% 这里使用的是2015年的国标文件 chinese-gb7714-2015.csl

% 字体设置
% 无论中西文一律默认使用宋体
\setmainfont[AutoFakeBold=2]{SimSun}
\setCJKmainfont[AutoFakeBold=2]{SimSun}

\setCJKfamilyfont{heiti}[AutoFakeBold=2]{SimHei} 
\renewcommand{\heiti}{\CJKfamily{heiti}}
\setCJKfamilyfont{yahei}{Microsoft YaHei}
\renewcommand{\yahei}{\CJKfamily{yahei}}

% 设置西文字体为微软雅黑
\newfontface\enyahei{Microsoft YaHei}

% 定义一个新命令，结合中西文字体
\newcommand{\titlepagesectionfont}[1]{\yahei\enyahei #1}

% 正文格式设置
\linespread{2}
\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}

\setlist[itemize]{
    topsep=0pt, 
    itemsep=0pt, 
    parsep=0pt
}

\setlist[enumerate]{
    topsep=0pt, 
    itemsep=0pt, 
    parsep=0pt
}

% 设置超链接的颜色
\hypersetup{
    colorlinks=true,
    linkcolor=black
}

% 摘要格式设置
\renewcommand{\abstractname}{摘\quad 要} % 设置摘要标题文本
% \abslabeldelim{:} % 在摘要标题后添加 符号“:”
\renewcommand{\abstractnamefont}
{\fontsize{12pt}{12pt}\selectfont\bfseries}
\renewcommand{\abstracttextfont}
{\normalfont\fontsize{12pt}{12pt}\selectfont\bfseries}

% 调整摘要位置的间距
\setlength{\absleftindent}{0cm} % 控制摘要左缩进
\setlength{\absrightindent}{0cm} % 控制摘要右缩进
\setlength{\abstitleskip}{0em} % 控制摘要标题与摘要正文的间距
% \setlength{\absparindent}{2em} % 控制摘要段落的缩进

\setcounter{secnumdepth}{3} % 确保为 subsubsection 编号

% 定义中文序号
% \renewcommand\thechapter
% {\chinese{chapter}、}
\renewcommand\thesection
{\chinese{section}、}
\renewcommand\thesubsection
{(\chinese{subsection}) }
\renewcommand\thesubsubsection
{\arabic{subsubsection}) }

% 标题格式设置
% \titleformat{\chapter}[hang]
% {\centering\bfseries}{\thechapter}{0em}{}
\titleformat{\section}
{\raggedright\bfseries}{\thesection}{0em}{}
\titleformat{\subsection}
{\raggedright\bfseries}{\thesubsection}{0em}{}
\titleformat{\subsubsection}
{\raggedright\bfseries}{\thesubsubsection}{0em}{}

% 标题间距设置
\titlespacing{\section}{0pt}{0.5\baselineskip}{0.5\baselineskip}
\titlespacing{\subsection}{0pt}{0.5\baselineskip}{0.5\baselineskip}
\titlespacing{\subsubsection}{0pt}{0.5\baselineskip}{0.5\baselineskip}

% 设置目录标题样式
%
% 目录标题：三号宋体，加粗，居中，段前20磅，段后10磅，无缩进，
% “目”和“录”之间空4格；
\renewcommand{\contentsname}{\hfill 目\ \ \ \ 录\hfill}
\renewcommand{\cfttoctitlefont}{\normalsize\bfseries} 
\renewcommand{\cftaftertoctitle}{}
\renewcommand{\cftloftitlefont}{\normalsize} % LoF = List of Figures
\renewcommand{\cftafterloftitle}{}
\renewcommand{\cftlottitlefont}{\normalsize} % LoT = List of Tables

\setlength{\cftbeforetoctitleskip}{0pt}
% \setlength{\cftbeforechapskip}{0pt} 
\setlength{\cftbeforesecskip}{0pt} 
\setlength{\cftbeforesubsecskip}{0pt}
\setlength{\cftbeforesubsubsecskip}{0pt}
\setlength{\cftaftertoctitleskip}{0pt}

% 设置目录项样式
%
% 各章题序及其余：小4号宋体；自动生成，段前段后0磅；
% 一级标题空2个字符（空4格），
% 二级标题空4个字符（空8格），
% 三级标题空6个字符（空12格）。

% 隐藏子小节
% 设置目录深度显示三级
\setcounter{tocdepth}{2} % 只显示到 subsection，subsubsection 不显示

% \renewcommand{\cftchapfont}{\fontsize{12pt}{12pt}} % 章节标题字体
\renewcommand{\cftsecfont}{\fontsize{12pt}{12pt}} % 小节标题字体
\renewcommand{\cftsubsecfont}{\fontsize{12pt}{12pt}} % 子小节标题字体
\renewcommand{\cftsubsubsecfont}{\fontsize{12pt}{12pt}} % 子小节标题字体

% 设置目录项格式
% \renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % 章节之间的点线
\renewcommand{\cftsecpagefont}{\hfill\textperiodcentered} % 小节页码格式
\renewcommand{\cftsubsecpagefont}{\hfill\textperiodcentered} % 子小节页码格式
\renewcommand{\cftsubsubsecpagefont}{\hfill\textperiodcentered}

% 设置目录项缩进和间距
% \setlength{\cftbeforechapskip}{0pt} % 章节前的段距
\setlength{\cftbeforesecskip}{0pt} % 小节前的段距
\setlength{\cftbeforesubsecskip}{0pt} % 子小节前的段距
\setlength{\cftbeforesubsubsecskip}{0pt} % 子小节前的段距

% \setlength{\cftchapindent}{2em} % 章节标题缩进
\setlength{\cftsecindent}{2em} % 小节标题缩进
\setlength{\cftsubsecindent}{4em} % 子小节标题缩进
\setlength{\cftsubsubsecindent}{6em} % 子小节标题缩进

% 设置全局图表格式

% 图表按章节编号
\numberwithin{table}{section} 
\numberwithin{figure}{section}
\numberwithin{equation}{section}
% \numberwithin{lstlisting}{section}  % 设置 listings 环境按章节编号
% \newcounter{lstlisting}[section]
\renewcommand{\thetable}{\arabic{section}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}
\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
% \renewcommand{\thelstlisting}{\arabic{section}.\arabic{lstlisting}}

% 设置图表标题样式
\captionsetup{  
    font={small,bf,stretch=1.25},  
    labelsep=space,  
    justification=centering,  
    singlelinecheck=false  
} 

\subcaptionsetup{
    labelfont=bf, textfont=bf,
    font={small,bf,stretch=1.25}, % 字体大小、加粗、行距
    labelsep=space, % 标签和标题之间的间隔
    labelformat=simple,
    singlelinecheck=off % 关闭单行检测
}

\renewcommand\thesubfigure{\alph{subfigure})}

% 全局调整表格字号
\AtBeginEnvironment{table}{\fontsize{10.5pt}{12.6pt}\selectfont}
% \AtBeginEnvironment{longtable}{\fontsize{9pt}{10.5pt}\selectfont}

% 定义小五号表格环境
\newenvironment{xiaowutab}
  {\begingroup\fontsize{9pt}{11pt}\selectfont\begin{tabular}}
  {\end{tabular}\endgroup}

% 定义五号表格环境
\newenvironment{wuhaotab}
  {\begingroup\fontsize{10.5pt}{12pt}\selectfont\begin{tabular}}
  {\end{tabular}\endgroup}

% 设置全局表格行列距
\renewcommand{\arraystretch}{1.25} % 设置表格行距为1.25倍
\setlength{\tabcolsep}{5pt} % 设置列间距

% 插表之前文中必须有相关文字提示，如“见表1.1”、“如表1.1所示”。
% 一般情况下插表不能拆开两页编排，如某表在一页内安排不下时，才可转页，
% 以续表形式接排，表左上角注明编号，编号后加“（续表）”，并重复表头。
\setlength{\arrayrulewidth}{0.5pt} % 设置表格线条宽度
\setlength{\heavyrulewidth}{0.5pt}
\setlength{\lightrulewidth}{0.5pt}

% 如下的内容主要是帮助解决繁杂的跨页表格排版的问题
% 定义了如下的几个命令：
% 
% 1. \getlongtablecols 获取表格的列数
% 2. \storecaption 将文本保存为一个变量，以便多次调用表格的 caption 
% 3. \mycaption 使用过 \storecaption 保存标题变量之后使用 \mycaption 
%    可以调用保存的标题文本内容
% 4. \continuetablephrase 插入续表的表头

% 首先定义依赖命令 getlongtablecols 获取 longtable 的总列数
\makeatletter
\newcommand{\getlongtablecols}{\LT@cols} 
\makeatother

% 定义命令来存储和访问表格的 caption 文本
\newcommand{\storecaption}[1]{\gdef\mycaption{#1}}
\newcommand{\mycaption}{}

% 定义命令来追加 (续表) 字样
\newcommand{\continuedcaption}{（续表）}

% 定义命令 continuetablephrase，用于在跨页长表中插入符合格式的“续表”字样
\newcommand{\continuetablephrase}{
    \multicolumn{
        \getlongtablecols
        }{l} {
            \bfseries\fontsize{10.5pt}{10.5pt} 
            \tablename\thetable{} \continuedcaption}
}

% 定义五号长表格环境
\newenvironment{wuhaolongtab}
  {\begingroup\fontsize{10.5pt}{12pt}\selectfont\begin{longtable}}
  {\end{longtable}\endgroup}

% 文档的信息
% 用于在封面上展示
\makeatletter
\newcommand\university[1]{\def\@university{#1}}
\newcommand\college[1]{\def\@college{#1}}

\newcommand\course[1]{\def\@course{#1}}
\newcommand\score[1]{\def\@score{#1}}

\newcommand\stuid[1]{\def\@stuid{#1}}

\newcommand\grade[1]{\def\@grade{#1}}
\newcommand\major[1]{\def\@major{#1}}
\newcommand\class[1]{\def\@class{#1}}

\renewcommand{\author}[1]{\def\@author{#1}}
\renewcommand{\title}[1]{\def\@title{#1}}
\renewcommand{\date}[1]{\def\@date{#1}}

% 默认的封面元数据
\university{大连海事大学}
\college{马克思主义学院}
\score{} % 默认为空
\course{形势与政策}
\stuid{2220XXXXXX}
\major{某某专业}
\grade{20XX级}
\class{X班}
\author{你的名字}

\title{实践报告}

% 设置页眉和页脚
\pagestyle{fancy}
% \pagestyle{empty}
\fancyhead{} % 仅清空页眉
\renewcommand{\headrulewidth}{0pt} % 去掉页眉的横线

% 出于封面样式的需要，将 ulem 的下划线设置为 1pt
\renewcommand{\ULthickness}{1pt} % 设置下划线厚度为 1pt

% 封面
\renewcommand{\maketitle}{

\renewcommand{\baselinestretch}{2.0}

% 匪夷所思的 1.35em 标题缩进，但是要求就是这样的

\centering\heiti
\fontsize{16pt}{18pt}\selectfont\raisebox{-4pt}{%
    \hspace{1.35em}\textbf{\@university 马克思主义学院社会实践报告}
}
\vspace{18pt} % 微调位置

\setlength{\parindent}{1.35em}
\raggedright
\noindent\fontsize{12pt}{12pt}\selectfont
% \justify
% \ \ \ \ \ \ \ \ \ \ %
% 课程名称:\@course%
% \ \ \ \ \ \ \ \ \ \ \ \ %
% 实验报告成绩:\@score%

% 这里的 1.9cm、2.5cm 在原文档中是打空格打出来的长度
\hspace{2.4715cm}%
\makebox[1.9cm][l]{\heiti 课程名称:}%
\makebox[4.65cm][l]{\@course}%
\makebox[2.75cm][l]{实践报告成绩:}\@score%

\vspace{9pt} % 微调位置

\setlength{\baselineskip}{22pt}

\noindent\yahei\fontsize{14.0525pt}{14.0525pt}\selectfont\textbf{一、社会实践报告要求：}

\vspace{5pt} % 微调文本位置

\normalfont\fontsize{12.1pt}{11.5pt}\selectfont
\setlength{\parindent}{2em}
\setlength{\baselineskip}{22pt}

1．前言。阐明选题背景、选题意义、研究目的、研究方法。

2．主体。详述调研过程、具体做法，包括介绍调查对象概况、发展历程、现实状况、主要成绩、突出问题等基本情况，汇总和分析调研材料并提炼出核心观点。

3．结论。提出解决问题的方法、对策或下一步改进工作的建议；或总结全文的主要观点，进一步深化主题；或提出问题，引发人们的进一步思考；或展望前景，发出鼓舞和号召。

\vspace{-7pt} % 微调文本位置

\noindent\yahei\fontsize{14.0525pt}{14.0525pt}\selectfont\textbf{二、报告提交方式：}

\normalfont\fontsize{12.0450pt}{12.0450pt}\selectfont
\setlength{\parindent}{2em}

全文3000字左右，请保证原创。文件命名：\hspace{0.5pt}“课程序号\!\thinspace +\!\thinspace 学号\!\thinspace+\!\thinspace 姓名”\hspace{0.5pt}，请按照课程任课教师规定的时间和方式提交。

\vspace{20pt}

\noindent\yahei\fontsize{14.0525pt}{14pt}\selectfont\textbf{三、调研基本信息：}

\setlength{\parindent}{1.18em}
\setlength{\baselineskip}{26pt}
\normalfont

\uline{
    \makebox[3.45cm][l]{\textbf{姓\ \ \ \ \ \ \ \ 名：}}%
    \makebox[10.37cm][l]{\textbf{\@author}}}

\uline{
    \makebox[3.45cm][l]{\textbf{学\ \ \ \ \ \ \ \ 号：}}%
    \makebox[10.37cm][l]{\textbf{\@stuid}}}

\uline{
    \makebox[3.45cm][l]{\textbf{学\ \ \ \ \ \ \ \ 院：}}%
    \makebox[10.37cm][l]{\textbf{\@college}}}

\uline{
    \makebox[3.45cm][l]{\textbf{年级专业班级：}}%
    \makebox[10.37cm][l]{\textbf{\@grade\@major\@class}}}

\uline{
    \makebox[4cm][l]{\textbf{调\ \ 研\ 主\ \ 题：}}%
    \makebox[9.82cm][l]{\textbf{\@title}}}

\vspace*{32pt} % 微调格式
\setlength{\parindent}{2em}
\setlength{\baselineskip}{24pt}
\noindent\bfseries 正文\ ：
% 以下的字体设置将应用于正文
\fontsize{12pt}{12pt}\selectfont\bfseries
}
\makeatother
