<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; Charset=UTF-8">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body>

<div class="container">
    <div class="row justify-content-md-center">

            <h3>СИСТЕМА БРОНИРОВАНИЯ</h3>

            <span><a class="red" style="color:red;">AA</a> - забронирован</span>
            <span><a class="red" style="color:lawngreen; background-color: lawngreen">AA</a> - выбран</span>
            <h5>МАЙ 2021</h5>


<div id="content" ></div>


</div>
</div>

<script>
    $(document).ready(function(){


            $.ajax({
                type: "POST",
                url: "show.php",
                data: "",
                success: function(html){
                    $("#content").html(html);
                }

        });

    });
</script>
</body>
</html>