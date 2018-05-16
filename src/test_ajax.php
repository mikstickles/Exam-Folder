<?php

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <p id='tutor'></p>
    <p id='absentee'></p>
  </body>
</html>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

<script type="text/javascript">
    var js_obj = {'action': "getTutors"};
    var encoded = JSON.stringify(js_obj);
  $.ajax({
    type: "POST",
    url: 'task2.php',
    data: encoded,
    success(data){
      $("#tutor").text(data);
    }
  })

  var js_obj = {'action': "getAbsentees"};
  var encoded = JSON.stringify(js_obj);
$.ajax({
  type: "POST",
  url: 'task2.php',
  data: encoded,
  success(data){
    $("#absentee").text(data);
  }
})
</script>
