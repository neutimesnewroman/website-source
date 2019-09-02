---
layout: base
title: Times New Roman
---

{% assign recentissue = site.issues | sort: 'date' | reverse | first %}

# Welcome to Northeastern's Premier Humour Publication


Hello and welcome to Times New Roman, Northeastern's Premier Humor
Publication! Make yourself right at home. Here, take a seat.
Can I get you anything to drink? Just some water? Okay.
Ice or no ice? Okay, coming right up! Make yourself comfortable.



Okay here you are. One water with no ice for you and
one with just ice for me. I’m on this new liquid free diet
now, you know. Yeah, I started it after I saw it on Oprah.
Thanks so much for visiting! It's been too long. Too long.
How've you been? How are the kids? Aw good, good.
Well let me show you around a little. Joe has been so
busy around here, doing all these DIY projects. Yeah.
He really is. So just below you'll find our most recent issue.
It's so soft. Go check it out. Go on! I'll wait.



Then up there, yeah just below the crown
molding (Isn't that molding just lovely! Joe just put it up
last week! He's so handsy. Oops! I mean handy. Haha!) you'll’
see some tabs. There you'll see some more info about us,
our blog, some older issues in the archives, and - my
favorite, especially when I'm alone with Joe, especially
when it's late at night, especially when I've had a glass
of wine or two and Joe's had his Viagra, the videos tab ;).
Enjoy!

<p></p>

## Our most recent issue, [{{ recentissue.title }}]({{recentissue.url}}):

{{recentissue.excerpt}}
{% include issue_detail.html issue=recentissue %}


---

## Recent posts

{% assign blog_posts = site.posts | sort: 'date' | reverse | where_exp: "i", "i.issue == Nil" %}

{% for post in blog_posts limit:5 %}
    {% include article_extended_excerpt.html post=post %}

---

{% endfor %}
