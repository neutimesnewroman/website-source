---
layout: base
title: Issues
---

<div id="issuelayout">
    {% assign issues = site.issues | sort:'date' | reverse %}
    {% for issue in issues %}
        <div class="issuecontainer">
            <img class="issuegridpicture" src="{{issue.image}}" />
           
            <div class="issueoverlay">
                <h6>{{ issue.title }}</h6>
                <p>{{ issue.excerpt | markdownify }}</p>
            </div>

            <a class="taptarget" href="{{ issue.url }}"></a>
        </div>
    {% endfor %}
</div>