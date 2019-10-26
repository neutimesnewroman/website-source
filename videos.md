---
title: Videos
layout: base
---

<div class="video-categories">

{% assign categories = site.videocategories | sort: "order" | reverse %}


{% for category in categories %}
<div class="video-category">
  {% assign featured = site.videos | where: "vidid", category.featured | first %}
  
    <h2><a href="{{category.url}}">{{category.title}}</a></h2>

   <a href="{{category.url}}">
   <img class="video-thumbnail" width="100%" src="https://img.youtube.com/vi/{{featured.ytid}}/sddefault.jpg">
   </a>

   <p></p>
   <p></p>
  
</div>
{% endfor %}

{% for i in (1..5) %}

<div class="video-category video-category-filler">
</div>

{% endfor %}

</div>