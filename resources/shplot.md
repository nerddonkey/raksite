---
layout: technote
title: Computing and Plotting Spherical Harmonics using MATLAB&reg;
author: Rod Kennedy
date: 16 Jul 2015
resource-categories: [sphere]
published: false
---

{% include toc.md %}

![sh](matlab/figures/new.png){: height="250px"}

{% capture shplot %}matlab/sh_plot.m{% endcapture %}
{% capture animate %}matlab/sh_plot_animate.m{% endcapture %}

### MATLAB&reg; code &mdash; [<code>{{ shplot | split: "/" | last }}</code>]({{ shplot }})

This is adapted from the [Matlab Website](http://www.mathworks.com/examples/matlab/1226-animating-a-surface)

{% highlight matlab tabsize=3 %}
{% include_relative {{ shplot }} %}
{% endhighlight %}

### MATLAB&reg; code &mdash; [<code>{{ animate | split: "/" | last }}</code>]({{ animate }})

{% highlight matlab tabsize=3 %}
{% include_relative {{ animate }} %}
{% endhighlight %}
