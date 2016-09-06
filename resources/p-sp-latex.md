---
layout: technote
title: Spherical Harmonics LaTeX Macros
author: Rod Kennedy
date: 18 Jul 2015
resource-categories: [code, sphere]
published: true
---

{% include toc.md %}

### J-Book Macros

The key package is [mathtools.pdf](http://texdoc.net/texmf-dist/doc/latex/mathtools/mathtools.pdf)

{% highlight latex tabsize=3 %}

\usepackage{amsmath}
\usepackage{mathtools}
\usepackage{etoolbox}

\DeclarePairedDelimiterX\norm[1]\lVert\rVert{\ifblank{#1}{\,\cdot\,}{#1}}
\DeclarePairedDelimiterX\abs[1]{\lvert}{\rvert}{\ifblank{#1}{\,\cdot\,}{#1}}
\DeclarePairedDelimiterX\innerp[2]{\langle}{\rangle}{\ifblank{#1#2}{\,\cdot\,,\cdot\,}{#1,#2}}

\newcommand{\sharm}[3][]{\ifblank{#1}{Y^{#2}_{#3}}{\prescript{}{#1}Y^{#2}_{#3}}}

\[
	\sharm[s]{m}{\ell} \quad \sharm{m}{\ell}
\]
{% endhighlight %}

### You-tube Video

[plot on sphere](https://www.youtube.com/watch?v=NB6rDT4ycVY)
