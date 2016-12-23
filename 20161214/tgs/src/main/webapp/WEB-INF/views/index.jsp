<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<%@ include file="templates\header.jsp"%>

<!----------------------------------Background Title--------------------------------------------------------->
<div class="bg"></div>
<div class="jumbotron">
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h1>The Gadget Shop</h1>
<p class="lead">+ The Internet Super Store for Gadgets hshss</p>
<button class="btn btn-xl btn-outline mb1 white" style="background-color:transparent" id="page-scroll">Jump to Store!</button>
</div>
<!-------------------------------------------New Arrivals (Carousel)--------------------------------------------------------->

<div class="content">
<div id="new" class="row bg-black">
    <div class="col-sm-12 col-md-6">	
      <h2>Check Out What's New!<br></h2>
        <div id="carousalarrivals"class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousalarrivals" data-slide-to="0" class="active"></li>
      <li data-target="#carousalarrivals" data-slide-to="1"></li>
      <li data-target="#carousalarrivals" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
         <img src="resources/images/newarrivals/3.jpg" alt="glyph" class="carousel-pic">
        <div class="carousel-caption">
		<h3>Glyph - Your Personal Theatre: Rs.69,999/-</h3>
       <p>The world's first personal theater brings big-screen entertainment to your personal space. View all your favorite entertainment in vivid detail on this video headset with amazing audio and HD clarity, at home or at 30,000 feet. See the difference.
      </p>
	  </div>
      </div>
      <div class="item">
          <img src="resources/images/newarrivals/3.jpg" alt="sgnl" class="carousel-pic">
       <div class="carousel-caption">
       <h3>SGNL: Rs.65,999/-</h3>
	   <p>A bracelet that turns your hand into a phone - Really. It sounds like witchcraft, but it actually takes advantage of a basic physics principle to transmit sound through a surface. This wristband works with any watch that's compatible with standard straps.
		</p>
      </div>   
      </div>
     <div class="item">
        <img src="resources/images/newarrivals/3.jpg" alt="nima" class="carousel-pic">
       <div class="carousel-caption">
       <h3>The Nima: Rs.14,940/-</h3>
<p>
     The Nima from 6 Sensor Labs is a $249 gadget that can test food for gluten in under 2 minutes with antibody-based test and disposable pods. Something like this could change the lives of those with Celiac disease or gluten sensitivity. 
    </p>
      </div>   
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#carousalarrivals" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="color:#ffffff"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousalarrivals" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="color:#ffffff"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


<!-------------------------------------------Offers (Carousel)--------------------------------------------------------->
</div>
<div class="col-sm-12 col-md-6">	
      <h2>Offers for You!<br></h2>
        <div id="carousaloffers"class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousaloffers" data-slide-to="0" class="active"></li>
      <li data-target="#carousaloffers" data-slide-to="1"></li>
      <li data-target="#carousaloffers" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/offers/christmas.jpg" alt="christmas" >
		</div>
      <div class="item">
        <img src="resources/images/offers/nikon.jpg" alt="nikon">
      </div>
     <div class="item">
        <img src="resources/images/offers/smartphones.jpg" alt="smartphones">   
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#carousaloffers" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="color:#ffffff"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousaloffers" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="color:#ffffff"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


</div>
</div>


<!----------------------------------About--------------------------------------------------------->
<div id="abt" class="row bg-black">
 <center><h2> </h2></center> 
    <div id="about" class="col-sm-12 col-md-6">
      <div id="contentabout">
	  <h2>About Us</h2>
      
      <p>Online Shopping India - Gadgets and Electronics

The Gadget Shop Online Shop is the one stop destination to buy gadgets, electronics online ranging from mobiles, laptops, power banks and others.

Our main aim at The Gadget Shop is to provide an online shopping site wherein you can get the expert product reviews to decide what to buy and then actually buy the product without switching between sites. All this not only at the lowest price but with the best offers and exclusive deals to make the online shopping experience the best you can have at any online gadgets or electronics store.

With the advancements in the field of technology the list of gadgets available has become ever increasing and never ending.</p>  
	</div>
	</div>
	<div class="container col-sm-12 col-md-6">
  <div class="item">
        <video width="100%" autoplay loop>
  <source src="resources/videos/commercial.mp4" type="video/mp4" />
  Your browser does not support the video tag.
</video>      
</div>
</div>
</div>
<!------------------Categories------------------------------------------------>

<div class = "row bg-black" id="category">
 <center><h2>Categories</h2></center>
 
 <div class = "col-sm-6 col-md-3" >
 <div class = "caption">
         <h4>Tablets</h4>                       
      </div>
      <div class = "thumbnail">
         <img src = "resources/images/categories/tablets.jpg" alt = "Tablets"/>
		  <button type="button" class="btn btn-block">Shop!</button>
      </div>      
   </div>

   

   <div class = "col-sm-6 col-md-3">
   <div class = "caption">
         <h4>Phones</h4>                       
      </div>
      <div class = "thumbnail">
         <img src = "resources/images/categories/phones.jpg" alt = "Phones"/>
		  <button type="button" class="btn btn-block">Shop!</button>
       </div> 
   </div>

   
<div class = "col-sm-6 col-md-3" >      
      <div class = "caption">
         <h4>Laptops</h4>                       
      </div>
      <div class = "thumbnail">
         <img src = "resources/images/categories/laptops.jpg" alt = "Laptops"/>
		  <button type="button" class="btn btn-block">Shop!</button>
      </div>
   </div>


<div class = "col-sm-6 col-md-3" >
<div class = "caption">
         <h4>Miscellaneous</h4>
      </div>
      <div class = "thumbnail">	  
         <img src = "resources/images/categories/misc.jpg" alt = "Misc"/>
		  <button type="button" class="btn btn-block">Shop!</button>
      </div>
   </div>
 
 </div>
</div>
	<%@ include file="templates\footer.jsp"%>

       
  
</body>

</html>
