<!doctype html>
<html>
<head>
<title>TheGadgetshop</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="resources/images/equalizer.png">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
<link href="<c:url value="resources/css/custom.css"/>" rel="stylesheet" type="text/css">
<script>
$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
	});
$(document).ready(function()
{
  $("#about").css("border-radius", "50%");
  $("#page-scroll").click(function() {
  $("html").animate({scrollTop: $("#category").offset().top}, 1200); ;
});	
});	

</script>
 <style>

.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url(resources/images/preloader.gif) center no-repeat #fff;
	}

.bg {
  background: url(resources/images/main.jpg) no-repeat;
  position: fixed;
  height: 1000px;
  width: 100%;  
  /*same height as jumbotron */
  top:0;
  left:0;
  z-index: -1;
}
</style> 
</head>
<!---------------------------------------------------body-------------------------------------------------------------------------------------------------->
<body id="myPage" data-spy="scroll" data-target=".navbar">
<div  class="se-pre-con"></div><!---for preloader-->
<!-------------------------------------------Navbar----------------------------------------------------->
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     <a class="navbar-brand" href="#myPage"><span class="glyphicon glyphicon-equalizer" aria-hidden="true"> TGS</span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul  class="nav navbar-nav">
        <li><a href="#aboutus">About Us</a></li>
        <li><a href="home">Home</a></li>
        <li><a href="products">Products</a></li>
        <li><a href="#new">New Arrivals</a></li>
       </ul>
	    <ul class="nav navbar-nav navbar-right">
        <li><a href="login">Login</a></li>
        <li><a href="startFlow">Register</a></li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>