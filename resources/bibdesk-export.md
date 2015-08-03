---
layout: technote
title: BibDesk Publication html Export
author: Rod Kennedy
date: 1 Aug 2015
resource-categories: [code]
---

{% include toc.md %}

This is material for a html export template for BibDesk.

### BibDesk Template Default Item &mdash; [<code>raksite-default-item.html</code>][raksite-default-item]

{% highlight css tabsize=3 %}
{% include snippets/raksite-default-item.html %}
{% endhighlight %}

### BibDesk Template Main Page &mdash; [<code>raksite-main-page.html</code>][raksite-main-page]

{% highlight css tabsize=3 %}
{% include snippets/raksite-main-page.html %}
{% endhighlight %}

### Style File  &mdash; [<code>bibdesk-export.css</code>][bibdesk-export]

{% highlight css tabsize=3 %}
{% include snippets/bibdesk-export.css %}
{% endhighlight %}

### javascript  &mdash; [<code>toggle.js</code>][toggle]

{% highlight javascript tabsize=3 %}
{% include js/toggle.js %}
{% endhighlight %}

### Export Example

#### BibDesk Exported html Source

{% highlight html tabsize=3 %}
{% include snippets/bibdesk-demo.html %}
{% endhighlight %}

#### BibDesk Exported html in Browser (with css <code>bibdesk-export.css</code>)

{% include snippets/bibdesk-demo.html %}

### Downloads

- [raksite-default-item.html][raksite-default-item]
- [raksite-main-page.html][raksite-main-page]
- [bibdesk-export.css][bibdesk-export]

[raksite-default-item]: bibdesk-export/raksite-default-item.html
[raksite-main-page]:  bibdesk-export//raksite-main-page.html
[bibdesk-export]: bibdesk-export/bibdesk-export.css
[toggle]: bibdesk-export/toggle.js
