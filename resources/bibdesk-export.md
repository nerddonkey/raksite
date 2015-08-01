---
layout: technote
title: BibDesk Publication html Export
author: Rod Kennedy
date: 1 Aug 2015
resource-categories: [code]
---

{% include toc.md %}

This is material for a html export template for BibDesk.

### Default Item

{% highlight html tabsize=3 %}
{% include snippets/raksite-default-item.html %}
{% endhighlight %}

### Main Page

{% highlight html tabsize=3 %}
{% include snippets/raksite-main-page.html %}
{% endhighlight %}

### css

{% highlight css tabsize=3 %}
{% include snippets/bibdesk-export.css %}
{% endhighlight %}

### javascript

{% highlight javascript tabsize=3 %}
<script type="text/javascript">
	function toggle(id) {
		e = document.getElementById(id);
		if (e.style.display == "none")
			e.style.display = "inline";
		else
			e.style.display = "none";
	}
</script>
{% endhighlight %}

### Export Example

#### Source html

{% highlight html tabsize=3 %}
{% include snippets/icassp14p.html %}
{% endhighlight %}

#### Actual appearance

{% include snippets/icassp14p.html %}

### Downloads

- <a href="bibdesk-export/raksite-default-item.html" download><code>raksite-default-item.html</code></a>
- <a href="bibdesk-export/raksite-main-page.html" download><code>raksite-main-page.html</code></a>
- <a href="bibdesk-export/bibdesk-export.css" download><code>bibdesk-export.css</code></a>
