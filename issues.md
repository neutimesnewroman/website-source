---
layout: base
title: Issues
---

<div id="issuelayout">
    {% for issue in site.issues %}
        <div class="issuecontainer">
            <img class="issuegridpicture" src="{{issue.image}}" />
            <a href="{{ issue.url }}">
                <div class="issueoverlay">
                    <h6>{{ issue.title }}</h6>
                    <p>{{ issue.excerpt | markdownify }}</p>
                </div>
            </a>
        </div>
    {% endfor %}
</div>