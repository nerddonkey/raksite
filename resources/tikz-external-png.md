---
layout: technote
title: TikZ &mdash; \tikzexternalize to PNG
author: Rod Kennedy
date: 21 Jul 2015
resource-categories: [code]
---

{% include toc.md %}

### Relevant latex code

{% highlight latex tabsize=3 %}
{% include latex/tikz-ext-png.tex %}
{% endhighlight %}

---

### Notes

- PNG is web friendly and defaults with a transparent background
- <code>\usepgfplotslibrary{external}</code> needs your latex system to be configured to run shell scripts
	- for example in TeXShop, adding <code>--shell-escape</code> such as <code>pdflatex --file-line-error --shell-escape --synctex=1</code>
	- enabling this can make your system vulnerable to malicious latex documents
- make sure you have a <code>fig</code> subdirectory if you uncomment the <code>\tikzsetexternalprefix</code> line
	- this will create files <code>fig/myfigure.pdf</code> and <code>fig/myfigure.png</code>
- png generation uses [sips](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/sips.1.html) &mdash; scriptable image processing system
	- sips is pre-instslled on OSX
	- as used here it converts the native externalized pdf output to an externalized png
