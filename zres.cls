%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                             %%
%%  Zachary T. Zimmerman's Resume LaTeX Class  %%
%%                                             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zres}[2015/06/13 Zachary Zimmerman's Resume Class]
\LoadClass{article}

% load external packages
\RequirePackage{titlesec}

% Set font to Maven Pro
\usepackage{fontspec}
\setmainfont{Maven Pro}

% set page margins
\usepackage[top=0.5in, bottom=0.5in, left=0.5in, right=0.5in]{geometry}

% define environments
\newenvironment{resume}
{Hello}
{Bye}

% redefine \section and \subsection
\titleformat{\section}{\Large\scshape\raggedright}{}{0em}{}[\titlerule]
\titleformat{\subsection}{\large\scshape\raggedright}{}{0em}{}

% define new commands
\newcommand{\datedsection}[2]{
	\section[#1]{#1 \hfill #2}
}

\newcommand{\datedsubsection}[2]{
	\subsection[#1]{#1 \hfill #2}
}

\newcommand{\name}[1]{
	\centerline{\Huge{#1}}
}

\newcommand{\contact}[5]{
	#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
	{\Large} #4 \ {\Large} #5
}