---
layout: page
title: Resources
menutitle: <b>Kennedy</b> &middot; Resources
author: Rod Kennedy
menuranking: 200
---

{% include contents.md %}

## Technical notes

{% assign resource-list = site.pages | sort:"date" %}
{% for page in resource-list reversed %}
<ul>
	{% if page.categories contains 'technote' %}
		<li>[{{ page.date | date_to_string }}] <a href="{{ page.url }}">{{ page.title }}</a></li>
	{% endif %}
</ul>
{% endfor %}
