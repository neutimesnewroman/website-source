---
title: Videos
layout: base-title
---

<!-- Note that this still uses html because of the outer div, markdown doesn't process inside the html tag without making some other things annoying. -->

{% for vidname in page.vids %}
<div class="video-container">
  {% assign vid = site.videos | where: "vidid", vidname | first %}
 
  <h2>{{vid.title}}</h2>
  {% if vid.honors %}
  {% for honor in vid.honors %}
  <p>{{honor.venue}} - {{honor.award}}</p>
  {% endfor %}
  {% endif %}
  {% if forloop.index <= 4 %}
    <div class="video-embed-container">
      <iframe class="video-embed" src="https://www.youtube.com/embed/{{vid.ytid}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
  {% else %}
    <a href="https://www.youtube.com/watch?v={{vid.ytid}}">
        <img class="video-thumbnail" width="100%" src="https://img.youtube.com/vi/{{vid.ytid}}/sddefault.jpg">
    </a>
  {% endif %} 

  {% if vid.btsid %}
    (<a href="https://www.youtube.com/watch?v={{vid.btsid}}">Behind the scenes</a>)
  {% endif %}

  </div>
{% endfor %}