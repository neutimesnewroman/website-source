---
title: Blog
layout: base
---

AKA, all the articles that were too bad to be in an issue.

---

{% assign blog_posts = site.posts | sort: 'date' | reverse | where_exp: "i", "i.issue == Nil" %}

{% for post in blog_posts %}

   {% include article_extended_excerpt.html post=post %}

{% endfor %}