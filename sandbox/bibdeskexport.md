---
layout: technote
title: BibDesk Publication html Export
author: Rod Kennedy
date: 1 Aug 2015
resource-categories: [code]
downloads: [bibdesk-export/raksite-default-item.html, bibdesk-export/raksite-main-page.html, bibdesk-export/bibdesk-export.css, bibdesk-export/toggle.js]
published: false
---

{% include toc.md %}

{% capture defaultItem %}{{page.downloads[0]}}{% endcapture %}
{% capture mainPage %}{{page.downloads[1]}}{% endcapture %}
{% capture bibexp %}{{page.downloads[2]}}{% endcapture %}
{% capture toggle %}{{page.downloads[3]}}{% endcapture %}

This is material for a html export template for BibDesk.

### BibDesk Template Default Item &mdash; [<code>{{ defaultItem | split: "/" | last }}</code>]({{ defaultItem }})

{% highlight css tabsize=3 %}
{% include_relative {{ defaultItem }} %}
{% endhighlight %}

### BibDesk Template Main Page &mdash; [<code>{{ mainPage | split: "/" | last }}</code>]({{ mainPage }})

{% highlight css tabsize=3 %}
{% include_relative {{ mainPage }} %}
{% endhighlight %}

### Style file &mdash; [<code>{{ bibexp | split: "/" | last }}</code>]({{ bibexp }})

{% highlight css tabsize=3 %}
{% include_relative {{ bibexp }} %}
{% endhighlight %}

### Javascript &mdash; [<code>{{ toggle | split: "/" | last }}</code>]({{ toggle }})

{% highlight javascript tabsize=3 %}
{% include_relative {{ toggle }} %}
{% endhighlight %}

### Export Example

#### BibDesk Exported html Source

{% highlight html tabsize=3 %}
{% include_relative bibdesk-export/bibdesk-demo.html %}
{% endhighlight %}

#### BibDesk Exported html in Browser (with css <code>bibdesk-export.css</code>)

{% include_relative bibdesk-export/bibdesk-demo.html %}

### Downloads

{% for dd in page.downloads %}{% capture filePath %}{{ dd }}{% endcapture %}
- [<code>{{ filePath | split: "/" | last }}</code>]({{ dd }}){% endfor %}
