%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                             %%
%%  Zachary T. Zimmerman's Resume LaTeX Class  %%
%%                                             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zres}[2015/06/13 Zachary Zimmerman's Resume Class]
\LoadClass{article}

% Load external packages
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{ragged2e}

% Set main font
\usepackage{fontspec}
\setmainfont{Maven Pro}

% Define font weights of Maven Pro
\newfontfamily{\mavenblack}[UprightFont={* Black}]{Maven Pro}
\newfontfamily{\mavenbold}[UprightFont={* Bold}]{Maven Pro}
\newfontfamily{\mavenmedium}[UprightFont={* Medium}]{Maven Pro}
\newfontfamily{\mavenregular}[UprightFont={* Regular}]{Maven Pro}

% Set page margins
\usepackage[top=0.3in, bottom=0.5in, left=0.3in, right=0.3in]{geometry}

% Remove page numbering
\pagenumbering{gobble}

% Layout variables
\newlength{\side}
\setlength{\side}{0.225\textwidth}
\newlength{\gutter}
\setlength{\gutter}{0.025\textwidth}
\newlength{\main}
\setlength{\main}{0.75\textwidth}
\newlength{\baseline}
\setlength{\baseline}{16pt}

% Color variables
\definecolor{gray}{HTML}{9A9BAC}
\definecolor{carnelian}{HTML}{CC3F3F}

% Name styling
\newcommand{\name}[1]{
  {\Huge\mavenblack #1}\\[2pt]
}

% Contact info styling
\newcommand{\contact}[3]{
  {\large\mavenregular\color{gray} #1 \textbullet\  #2 \textbullet\  #3}\vspace{0.6em}
}

% Header layout
\newenvironment{header}
{\hfill\begin{minipage}[t]{\main}\raggedright}
{\end{minipage}}

% Sidebar layout
\newenvironment{sidebar}
{\begin{minipage}[t]{\side}\raggedright}
{\end{minipage}\hspace{\gutter}}

% Main content layout
\newenvironment{resume}
{\begin{minipage}[t]{\main}}
{\end{minipage}}

% Redefine \section and define \accomplishment, \semester, \details
\titleformat{\section}{\Large\mavenmedium\color{carnelian}\raggedright}{}{0em}{}[\titlerule]
\titlespacing*{\section}{0pt}{0.8em}{0.8em}

\titleformat{\subsection}{\large\scshape\raggedright}{}{0em}{}
\titlespacing*{\subsection}{0pt}{0.8em}{0.4em}

\newcommand{\accomplishment}[3]{
  \subsection[#1]{\mavenregular{\large#1 \hspace{0.4em} {\textcolor{gray}{\small\mavenmedium#2}} \hfill \small#3}}
}

\newcommand{\semester}[2]{\mavenregular{\normalsize#1 \hfill \small#2}}
\newcommand{\details}[2]{\vspace{-0.2em}\textcolor{gray}{{\mavenmedium#1 \hfill \small#2}}\\[-5pt]}

% Define \infosection, \infosubsection, and \infolist, as well as \fulljustify
\newcommand{\infosection}[1]{\vspace{0.8em}\raggedright{\large\mavenblack\textcolor{carnelian}{#1}}\justify}
\newcommand{\infosubsection}[1]{\vspace{0.6em}\raggedright{\large\mavenmedium\textcolor{gray}{#1}}\justify}
\newenvironment{infolist}{\justify\vspace{-0.2em}}{\vspace{0.4em}}
\newcommand{\fulljustify}{{\parfillskip0pt\par}}