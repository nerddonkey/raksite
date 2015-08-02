---
layout: technote
title: TikZ&ndash;tikzexternalize to png
author: Rod Kennedy
date: 21 Jul 2015
resource-categories: [code]
---

{% include toc.md %}

### Relevant latex code

{% highlight latex tabsize=3 %}
{% include latex/tikz-ext-png.tex %}
{% endhighlight %}

### Output png figure <code>figures/myfigure.png</code> (150dpi)

<img src="{{ site.baseurl }}/images/myfigure.png" class="matlab">

### Output png figure <code>figures/myfigure-600.png</code> (600dpi)

<img src="{{ site.baseurl }}/images/myfigure-600.png" class="matlab">

### Exporting to png notes

- this is always done by first generating the vector graphic pdf and then rasterizing to png
- png is web friendly and defaults with a transparent background
- <code>\usepgfplotslibrary{external}</code> needs your latex system to be configured to run shell commands
	- for example in TeXShop, adding <code>--shell-escape</code> such as<br> <code>pdflatex --file-line-error --shell-escape --synctex=1</code>
	- enabling this can make your system vulnerable to malicious latex documents
- make sure you have an existing <code>figures</code> subdirectory if you use the <code>\tikzsetexternalprefix</code> line (as above)
	- this will create files <code>figures/myfigure.pdf</code> and <code>figures/myfigure.png</code>
	- otherwise just comment out this line to have the files <code>myfigure.pdf</code> and <code>myfigure.png</code> (in the same directory)
- png generation uses the <code>convert</code> command from [Imagemagick&reg;](http://www.imagemagick.org/script/index.php)
	- Imagemagick&reg; needs to be installed and can be a bit horendous to set up
	- Imagemagick&reg; is usually, but not always, installed at <code>/opt/local/bin</code>
- alternative png generation using:
 [sips](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/sips.1.html) &mdash; scriptable image processing system
	- use: <code>sips -s format png --out "\image.png" "\image.pdf";</code>
	- good: <code>sips</code> is pre-installed on OSX
	- bad: it won't let you rasterize the pdf at other than a fixed dpi (150)

### Debugging

Use the modified latex:

{% highlight latex tabsize=3 %}
\tikzset{png export/.style={
	external/system call={
		% print some info to console
			echo "\\n---- Checking Imagemagick&reg;/convert available ----\\n\\nPATH:" $PATH "\\n";
			which convert; echo; convert -version;
		pdflatex \tikzexternalcheckshellescape
			-halt-on-error -interaction=batchmode -jobname "\image" "\texsource";
		% convert from pdf to png
		convert -units pixelsperinch -density 150 "\image.pdf" "\image.png";
		convert -units pixelsperinch -density 600 "\image.pdf" "\image-600.png";
}}}
{% endhighlight %}

If <code>convert</code> is succesfully found should induce this portion of the console message:

~~~
---- Checking Imagemagick/convert available ----

PATH: /usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/usr/local/bin:/opt/local/bin

/opt/local/bin/convert

Version: ImageMagick 6.9.0-0 Q16 x86_64 2015-07-29 http://www.imagemagick.org
Copyright: Copyright (C) 1999-2014 ImageMagick Studio LLC
Features: DPC Modules
Delegates (built-in): bzlib djvu fftw fontconfig freetype gslib jbig jng jp2 jpeg lcms ltdl lzma openexr png ps tiff webp x xml zlib
~~~

If <code>convert</code> cannot be found or your <code>PATH</code> can't point to it then hardwire the path such as follows:<br>
<code>/opt/local/bin/convert -units pixelsperinch -density 150 "\image.pdf" "\image.png";</code>

If silent weird things are happening then comment out the externalization like this <code>%\tikzexternalize</code>.  This will let latex stop and display errors.


### Downloads

- <a href="{{ site.baseurl }}/assets/latex/tikz-ext-png.tex" download><code>tikz-ext-png.tex</code></a>
- <a href="{{ site.baseurl }}/assets/latex/tikz-ext-png.pdf" download><code>tikz-ext-png.pdf</code></a>
- <a href="{{ site.baseurl }}/assets/latex/tikz-ext-png-debug.tex" download><code>tikz-ext-png-debug.tex</code></a>
- <a href="{{ site.baseurl }}/images/myfigure.png" download><code>myfigure.png</code></a>
- <a href="{{ site.baseurl }}/images/myfigure-600.png" download><code>myfigure-600.png</code></a>
