---
layout: technote
title: Spherical Harmonics Macros
author: Rod Kennedy
date: 18 Jul 2015
resource-categories: [code, sphere]
---

### You-tube Video

[plot on sphere](https://www.youtube.com/watch?v=NB6rDT4ycVY)

### J-Book Macros

[mathtools.pdf](http://texdoc.net/texmf-dist/doc/latex/mathtools/mathtools.pdf)

{% highlight latex %}

\usepackage{amsmath}
\usepackage{mathtools}
\usepackage{etoolbox}

\DeclarePairedDelimiterX\norm[1]\lVert\rVert{\ifblank{#1}{\,\cdot\,}{#1}}
\DeclarePairedDelimiterX\abs[1]{\lvert}{\rvert}{\ifblank{#1}{\,\cdot\,}{#1}}
\DeclarePairedDelimiterX\innerp[2]{\langle}{\rangle}{\ifblank{#1#2}{\,\cdot\,,\cdot\,}{#1,#2}}

\newcommand{\sharm}[3][]{\ifblank{#1}{Y^{#2}_{#3}}{\prescript{}{#1}Y^{#2}_{#3}}}

{% endhighlight %}