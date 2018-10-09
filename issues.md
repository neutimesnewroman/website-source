---
layout: base
---

<div id="picturelist">
    {% for issue in site.issues %}
    <div class="picturelistitem">
        <div class="picture">

        </div>
        <div class="description">

            <h3><a href="{{ issue.url }}">{{ issue.title }}</a></h3>
            <p>{{ issue.excerpt | markdownify }}</p>
        </div>
    </div>
    {% endfor %}
</div>