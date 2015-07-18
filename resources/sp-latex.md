---
layout: technote
title: Spherical Harmonics Macros
author: Rod Kennedy
date: 18 Jul 2015
categories: [code, sphere]
---

[plot on sphere](https://www.youtube.com/watch?v=NB6rDT4ycVY)

## J-Book Macros

[mathtools.pdf](http://texdoc.net/texmf-dist/doc/latex/mathtools/mathtools.pdf)

{% highlight latex %}
\RequirePackage{mathtools} % \DeclareDelimiter etc

%%%% [mathtools] Norm, sets, inner products etc
\DeclarePairedDelimiterX\abs[1]{\lvert}{\rvert}{#1}
\DeclarePairedDelimiterX\brak[1]{\lbrace}{\rbrace}{#1}
\DeclarePairedDelimiterX\cardinality[1]{\lvert}{\rvert}{#1}
\DeclarePairedDelimiterX\innerp[2]{\langle}{\rangle}{#1,#2}
\DeclarePairedDelimiterX\norm[1]{\lVert}{\rVert}{#1}
\DeclarePairedDelimiterX\paren[1]{(}{)}{#1} % delete
\DeclarePairedDelimiterX\parn[1]{(}{)}{#1}
\DeclarePairedDelimiterX\sequ[1]{\lbrace}{\rbrace}{#1}
\DeclarePairedDelimiterX\set[1]{\lbrace}{\rbrace}{#1}
\DeclarePairedDelimiterX\sqrb[1]{[}{]}{#1}
\DeclarePairedDelimiterX\coeff[1]{(}{)}{#1}

{% endhighlight %}

{% highlight latex %}
\norm{x}
\innerp{x}{y}

\abs*{\frac{a}{b}}

\norm[\big]{X}
\innerp[\Big]{X}{Y}

\usepackage{etoolbox}
 \DeclarePairedDelimiterX\norm[1]\lVert\rVert{
   \ifblank{#1}{\:\cdot\:}{#1}
 }

\prescript{}{s}{Y}^{m}_{\ell}


theta = linspace(0, 2*pi);
phi = (-pi/2, pi/2);
[tt,pp] = meshgrid(theta, phi);
rho = 2;
[x,y,z] = sph2cart(theta, phi, rho);
{% endhighlight %}
