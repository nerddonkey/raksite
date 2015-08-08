---
layout: technote
title: BibDesk Publication html Export
author: Rod Kennedy
date: 1 Aug 2015
resource-categories: [code]
---

{% include toc.md %}

{% capture defaultItem %}bibdesk-export/raksite-default-item.html{% endcapture %}
{% capture mainPage %}bibdesk-export/raksite-main-page.html{% endcapture %}
{% capture bibexp %}bibdesk-export/bibdesk-export.css{% endcapture %}
{% capture toggle %}bibdesk-export/toggle.js{% endcapture %}

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

- [<code>{{ defaultItem | split: "/" | last }}</code>]({{ defaultItem }})
- [<code>{{ mainPage | split: "/" | last }}</code>]({{ mainPage }})
- [<code>{{ bibexp | split: "/" | last }}</code>]({{ bibexp }})
- [<code>{{ toggle | split: "/" | last }}</code>]({{ toggle }})
