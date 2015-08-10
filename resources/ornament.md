---
layout: technote
title: Outputing png from pgfornament
author: Rod Kennedy
date: 31 Jul 2015
resource-categories: [misc]
downloads: [latex/pgf-ornament-generate.tex, latex/figures/pgf-ornament.png, latex/figures/pgf-ornament-600.png]
published: true
---

{% include toc.md %}

### Installation of pgfornament

Download [pgfornament.zip](http://www.altermundus.com/pages/downloads/packages/pgfornament/pgfornament.zip) and follow the instructions in [ornaments.pdf](http://altermundus.com/pages/downloads/packages/pgfornament/ornaments.pdf) to install. Specifically:

- <code>pgfornament</code> must to be in <code>/texmf/tex/latex</code>
- <code>pgflibraryvectorian.code.tex</code> must to be in <code>/texmf/tex/latex</code>
- <code>pgflibraryam.code.tex</code> must to be in <code>/texmf/tex/latex</code>
- the folder <code>vectorian</code> must to be in <code>/texmf/tex/generic</code>
- the folder <code>am</code> must to be in <code>/texmf/tex/generic</code>

<!-- latex/pgf-ornament-generate.tex -->
{% capture latexPath %}{{page.downloads[0]}}{% endcapture %}

### Latex code &mdash; [<code>{{ latexPath | split: "/" | last }}</code>]({{ latexPath }})

Here we render ornament 88.  There are 89 ornaments, see instructions [ornaments.pdf](http://altermundus.com/pages/downloads/packages/pgfornament/ornaments.pdf).

{% highlight latex tabsize=3 %}
{% include_relative {{ latexPath }} %}
{% endhighlight %}

{% capture pngPath %}{{page.downloads[1]}}{% endcapture %}

### Output png figure &mdash; [<code>{{ pngPath | split: "/" | last }}</code>]({{ pngPath }})

![fig]({{ pngPath }}){: class="matlab"}

{% capture pngPath2 %}{{page.downloads[2]}}{% endcapture %}

### Output png figure &mdash; [<code>{{ pngPath2 | split: "/" | last }}</code>]({{ pngPath2 }})

![fig]({{ pngPath2 }}){: width="200", class="matlab"}

### Downloads

{% for dd in page.downloads %}{% capture filePath %}{{ dd }}{% endcapture %}
- [<code>{{ filePath | split: "/" | last }}</code>]({{ dd }}){% endfor %}
