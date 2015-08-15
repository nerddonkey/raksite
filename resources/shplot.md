---
layout: technote
title: Spherical Harmonic MATLAB&reg; Code 1
author: Rod Kennedy
date: 16 Jul 2015
resource-categories: [sphere]
downloads: [matlab/shplot.m, matlab/figures/shplot.png]
published: true
---

{% include toc.md %}


{% capture shplot %}{{page.downloads[0]}}{% endcapture %}

### MATLAB&reg; code &mdash; [<code>{{ shplot | split: "/" | last }}</code>]({{ shplot }})

This is adapted from the MATLAB&reg; example code webpage [here](http://www.mathworks.com/examples/matlab/1226-animating-a-surface)

{% highlight matlab tabsize=3 %}
{% include_relative {{ shplot }} %}
{% endhighlight %}


{% capture pngPath %}{{page.downloads[1]}}{% endcapture %}

### Output png figure &mdash; [<code>{{ pngPath | split: "/" | last }}</code>]({{ pngPath }})

![fig]({{ pngPath }}){: class="matlab"}


### Downloads

{% for dd in page.downloads %}{% capture filePath %}{{ dd }}{% endcapture %}
- [<code>{{ filePath | split: "/" | last }}</code>]({{ dd }}){% endfor %}
