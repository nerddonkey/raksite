---
layout: page
title: Resources
menutitle: <b>Kennedy</b> &middot; Resources
author: Rod Kennedy
menuranking: 200
---

{% include contents.md %}

{% assign counter = 0 %}
{% assign resource-list = site.pages | sort:"date" %}
{% for page in resource-list reversed %}
	{% if page.categories contains 'technote' %}
		{% assign counter = counter | plus: 1 %}
		{% if counter == 1 %}
### Technical Note Index
<ul>
		{% endif %}
		<li>[{{ page.date | date_to_string }}] <a href="{{ site.baseurl }}{{ page.url }}">{{ page.title }}</a></li>
	{% endif %}
{% endfor %}
{% if counter != 0 %}
</ul>
{% endif %}

{% assign counter = 0 %}
{% assign resource-list = site.pages | sort:"date" %}
{% for page in resource-list reversed %}
	{% if page.categories contains 'code' %}
		{% assign counter = counter | plus: 1 %}
		{% if counter == 1 %}
### Code Index
<ul>
		{% endif %}
		<li>[{{ page.date | date_to_string }}] <a href="{{ site.baseurl }}{{ page.url }}">{{ page.title }}</a></li>
	{% endif %}
{% endfor %}
{% if counter != 0 %}
</ul>
{% endif %}
