---
layout: page
title: Resources
menutitle: <b>Kennedy</b> &middot; Resources
author: Rod Kennedy
menuranking: 200
---

{% for category in site.resource-categories %}
	{% assign node-list = site.pages | sort:"date" | reverse %}
	{% assign counter = 0 %}
	{% for node in node-list %}
		{% if node.resource-categories contains category %}
			{% assign counter = counter | plus: 1 %}
			{% if counter == 1 %}
### {{ category | capitalize }} Index:
<ul>
			{% endif %}
<li><small>[{{ node.date | date_to_string }}]</small> &mdash;
		<a href="{{ site.baseurl }}{{ node.url }}">{{ node.title }}</a></li>
		{% endif %}
	{% endfor %}
	{% if counter > 0 %}
</ul>
	{% endif %}
{% endfor %}
