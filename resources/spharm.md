---
layout: technote
title: Book Spherical Harmonic Code
author: Rod Kennedy
date: 6 Aug 2015
resource-categories: [sphere]
downloads: [matlab/generate_spherical_harmonic.m, matlab/RZRYRZdeg.m, matlab/shex_01.m, matlab/figures/shex_01.png]
published: true
---

{% include toc.md %}

{% capture shgen %}{{page.downloads[0]}}{% endcapture %}

### MATLAB&reg; Code [<code>{{ shgen | split: "/" | last }}</code>]({{ shgen }})

Note that the spherical harmonic is not normalized since we are interested in the shape and not the scaling.

{% highlight matlab tabsize=3 %}
{% include_relative {{ shgen }} %}
{% endhighlight %}

{% capture RZRYRZdeg %}{{page.downloads[1]}}{% endcapture %}

### MATLAB&reg; Code [<code>{{ RZRYRZdeg | split: "/" | last }}</code>]({{ RZRYRZdeg }})

{% highlight matlab tabsize=3 %}
{% include_relative {{ RZRYRZdeg }} %}
{% endhighlight %}

### Examples

Here we demonstrate some uses of the above MATLAB&reg; functions.

{% capture exa %}{{page.downloads[2]}}{% endcapture %}

#### 1) MATLAB&reg; Code [<code>{{ exa | split: "/" | last }}</code>]({{ exa }})

Here we pick one spherical harmonic corresponding to $$\ell=8$$ and $$m=7$$ and plot it without rotation (on the left) and with a rotation through Euler angles (in degree) $$\alpha=270$$, $$\beta=45$$ and $$\gamma=0$$ (on the right).  The rotation is achieved by rotating the mesh.

{% highlight matlab tabsize=3 %}
{% include_relative {{ exa }} %}
{% endhighlight %}

{% capture pngPath %}{{page.downloads[3]}}{% endcapture %}

##### Output png figure &mdash; [<code>{{ pngPath | split: "/" | last }}</code>]({{ pngPath }})

![png]({{pngPath}}){: width="750px" class="matlab"}

### Downloads

{% for dd in page.downloads %}{% capture filePath %}{{ dd }}{% endcapture %}
- [<code>{{ filePath | split: "/" | last }}</code>]({{ dd }}){% endfor %}
