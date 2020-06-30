---
title: "QUIZ: Which Northeastern Publication Are You?"
author: dmelcer
description: "Take this quiz and find out!"
---


### Question 1

Are you funny?

<form id="husky-quiz">
<input type="radio" name="magazine" value="tnr">
<label for="tnr">Yes</label>
<br>
<input type="radio" name="magazine" value="husky">
<label for="husky">No</label>
</form>

<div id="husky-quiz-result">
</div>

<script>
$("#husky-quiz input").on('change', function() {
    var val = $('input[name=magazine]:checked', '#husky-quiz').val();

    var title = "";
    var content = "";

    if(val === "tnr"){
        title = "You Are Times New Roman!";
        content = "You are Northeastern's Premiere Satire Magazine, with the most talented <a href=\"/staff.html\">writing staff</a> the school has to offer.";
    } else if(val === "husky"){
        title = "You Are Husky Husky!";
        content = "You are a copycat website, <a href=\"/2020/06/29/husky-husky-cosplay-or-real-dog.html\">cosplaying as huskies.</a>";
    }

    $('#husky-quiz-result').html(
      '<h4>'+title+'</h4>'+
      '<p>'+content+'</p>');
});

</script>