---
layout: technote
title: Book Spherical Harmonic Code
author: Rod Kennedy
date: 6 Aug 2015
resource-categories: [sphere]
---

{% include toc.md %}

{% capture shgen %}matlab/generate_spherical_harmonic.m{% endcapture %}
{% capture RZRYRZdeg %}matlab/RZRYRZdeg.m{% endcapture %}

### MATLAB&reg; Code [<code>{{ shgen | split: "/" | last }}</code>]({{ shgen }})

{% highlight matlab tabsize=3 %}
{% include_relative {{ shgen }} %}
{% endhighlight %}

### MATLAB&reg; Code [<code>{{ RZRYRZdeg | split: "/" | last }}</code>]({{ RZRYRZdeg }})

{% highlight matlab tabsize=3 %}
{% include_relative {{ RZRYRZdeg }} %}
{% endhighlight %}

![too]({{ site.baseurl }}/images/new.png){: height="250px" width="250px"}
