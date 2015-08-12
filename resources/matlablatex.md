---
layout: technote
title: Latex labels with MATLAB&reg;
author: Rod Kennedy
date: 12 Aug 2015
resource-categories: [code]
published: true
---

{% include toc.md %}


{% capture cmplxexp %}matlab/cmplxexp.m{% endcapture %}

### MATLAB&reg; code &mdash; [<code>{{ cmplxexp | split: "/" | last }}</code>]({{ cmplxexp }})

{% highlight matlab tabsize=3 %}
{% include_relative {{ cmplxexp }} %}
{% endhighlight %}


{% capture pngPath %}matlab/figures/ct-cmplxexp.png{% endcapture %}

### Output png Figure &mdash; [<code>{{ pngPath | split: "/" | last }}</code>]({{ pngPath }})

![ct]({{ pngPath }}){: width="45%" class="matlab"}


{% capture pngPath2 %}matlab/figures/dt-cmplxexp.png{% endcapture %}

### Output png Figure &mdash; [<code>{{ pngPath2 | split: "/" | last }}</code>]({{ pngPath2 }})

![dt]({{ pngPath2 }}){: width="45%" class="matlab"}
