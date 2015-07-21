---
layout: technote
title: TikZ-externatizing png
author: Rod Kennedy
date: 21 Jul 2015
resource-categories: [code]
---


### Relevant latex code

{% highlight latex %}

\documentclass[a4paper]{article}

\usepackage[margin=5mm]{geometry}
\usepackage{tikz,pgfplots}
\usetikzlibrary{matrix,arrows,calc,shadows,positioning,patterns,backgrounds}

\usepgfplotslibrary{external} % creates a tight self-contained pdf figure for each tikzpicture
\tikzexternalize % comment out to debug if latex errors: generates the external pdf
\tikzset{external/force remake} % otherwise will use external pdf
\tikzsetexternalprefix{fig/} % output the pdf to an existing directory (needs to exist)

\tikzset{png export/.style={
	external/system call={
		pdflatex \tikzexternalcheckshellescape -halt-on-error -interaction=batchmode -jobname "\image" "\texsource";
		sips -s format png --out "\image.png" "\image.pdf"
	}}}

\pgfplotsset{compat=1.12}

\tikzset{png export}

\begin{document}
\thispagestyle{empty}

\tikzsetnextfilename{rak-genealogy}

\begin{tikzpicture}

...

\end{tikzpicture}

{% endhighlight %}
