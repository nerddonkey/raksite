---
layout: technote
title: Outputing png from pgfornament
author: Rod Kennedy
date: 31 Jul 2015
resource-categories: [code]
---

{% include toc.md %}

{% capture latexPath %}latex/pgf-ornament-generate.tex{% endcapture %}
{% capture pngPath %}latex/figures/pgf-ornament.png{% endcapture %}
{% capture pngPath2 %}latex/figures/pgf-ornament-600.png{% endcapture %}

### Latex code &mdash; [<code>{{ latexPath | split: "/" | last }}</code>]({{ latexPath }})

{% highlight latex tabsize=3 %}
{% include_relative {{ latexPath }} %}
{% endhighlight %}

### Output png figure &mdash; [<code>{{ pngPath | split: "/" | last }}</code>]({{ pngPath }})

![fig]({{ pngPath }}){: class="matlab"}

### Downloads

- [<code>{{ latexPath | split: "/" | last }}</code>]({{ latexPath }})
- [<code>{{ pngPath | split: "/" | last }}</code>]({{ pngPath }})
- [<code>{{ pngPath2 | split: "/" | last }}</code>]({{ pngPath2 }})
