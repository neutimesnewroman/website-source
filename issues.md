---
layout: base
title: Issues
---

<div id="issuelayout">
    {% assign issues = site.issues | sort:'date' | reverse %}
    {% for issue in issues %}
        <div class="issuegridpicture">
            {% include issue_large_thumbnail.html issue=issue %}
        </div>
    {% endfor %}
</div>
