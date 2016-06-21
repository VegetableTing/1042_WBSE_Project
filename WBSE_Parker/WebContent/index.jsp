<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.type.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en-gb" class="no-js">
<!--<![endif]-->
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!--[if lt IE 9]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Parker</title>
<meta name="description" content="">
<meta name="author" content="Themesrefinery">
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--[if lte IE 8]>
		<script type="text/javascript" src="http://explorercanvas.googlecode.com/svn/trunk/excanvas.js"></script>
<![endif]-->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/styles.css" />
<!-- Animation -->
<link rel="stylesheet" href="css/style-animate.css" />
<!-- Font Awesome -->
<link href="font/css/font-awesome.min.css" rel="stylesheet">
<!--Slider CSS-->
<link rel="stylesheet" type="text/css" href="css/slider.css">
<!--Custom CSS-->
<link rel="stylesheet" type="text/css" href="css/custom.css">
<!-- shopping cart CSS-->
<link rel="stylesheet" type="text/css" href="css/yee.css">

</head>

<body>
<!--Top Header-->
<header class="header">
	<div class="container">
    	<nav class="navbar navbar-inverse" role="navigation">
        	<div class="navbar-header">
            	<button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <a href="index.html" class="navbar-brand scroll-top logo animated bounceInLeft rollIn"><b>Parker</b></a></div>
              <div id="main-nav" class="collapse navbar-collapse">
                <ul class="nav navbar-nav" id="mainNav">
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="#">地圖</a></li>
                              <li class="dropdown">
                               <a href="#" data-toggle="dropdown" class="dropdown-toggle">表格 <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#DashBoard">停車場數量比較</a></li>
                                    <li><a href="#Chart">動態停車場與靜態停車比例</a></li>
                                </ul>
                            </li>
                  <li><a href="#">Parker</a></li>
                  <li><a href="#">Parker</a></li>
                </ul>
              </div>

        </nav>
    </div>

</header>
<!--Top Header End-->


<!--Slider Start-->
<div class="slider_outer">
	<div id="slider1_container" style="position: relative; margin: 0 auto;
        top: 0px; left: 0px; width: 1300px; height: 800px; overflow: hidden;">

        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px;
            height: 800px; overflow: hidden;">
            <div >
							<iframe scrolling="no" height="100%" width="100%"  src="https://alex100433.cartodb.com/viz/c1d5ed3a-36f4-11e6-aa6b-0ecfd53eb7d3/embed_map"></iframe	>
            </div>

        </div>


    </div>
</div>
<!--Slider Start-->

<!-- shopping cart -->

<div class="wrap">

  <a href="#modal-one" class="btn btn-big">Paker</a>

</div>

<!-- Modal  -->
<a href="#" class="modal" id="modal-one" aria-hidden="true">
  </a>
  <div class="modal-dialog">
    <div class="modal-header">
      <h2>History</h2>
      <a href="#" class="btn-close" aria-hidden="true">×</a>
    </div>
    <div class="modal-body">
    	<!-- jsp -->
	    <c:forEach var="compareEach" items="${sessionScope.compareList}">
		<p>${compareEach.id} ： ${compareEach.name}</p>
		</c:forEach>
		<!-- jsp end -->
    </div>
    <div class="modal-footer">
      <a href="#" class="btn">Compare!</a>
      <a href="#" class="btn">Clear!</a>
    </div>
  </div>
<!-- shopping cart End -->


<!--Main Body-->
<a id="DashBoard"> </a>
<div class="container">
   <div class="row">
   <div class="col-lg-8">
    <div class="col-md-12">
    	<h1>停車場數量比較</h1>
        <div class="entry-meta table">
        	<span>
            Written by
            <a href="#">WBSE_ParKer</a>
            </span>
            <span> / </span>
            <span> DashBoard </span>
            <span> / </span>
            <span> June 21, 2016 </span>
        </div>
        <div>
        	<iframe src="./DashBoard.html" width="1100" height="1250"  scrolling="no" style="margin:0 auto;text-align:center;"></iframe>
        </div>
        <div class="media">
        	<p>目前為該停車場中，低、中、高價錢的判斷方法。</p>
					<p>每小時的收費20元以下(含)為低、50元以上(含)為高、介於中間為中。</p>
        </div>

    </div>

    <div class="col-md-12">
			<a id="Chart"> </a>
    	<h1>動態停車場與靜態停車比例</h1>
        <div class="entry-meta table">
        	<span>
            Written by
            <a href="#">WBSE_ParKer Ali</a>
            </span>
            <span> / </span>
            <span> Chart </span>
            <span> / </span>
            <span> June 21, 2016 </span>
        </div>
        <div>
        	<iframe src="./PieChart.html" width="1100" height="500"  scrolling="no" style="margin:0 auto;text-align:center;"></iframe>
        </div>
        <div class="media">
        	<p>顯示新北市的動態停車廠與靜態停車場的數量比例。</p>
        </div>
        <div class="read-more padding text-center">

        </div>
    </div>

    </div>

  </div>

<!--Footer Start-->
<footer>
	<div class="row">
                <div class="col-lg-4">
                	<h1>Developer</h1>
                    <ul class="list-unstyled">
                    	<li><a href="https://www.facebook.com/photo.php?fbid=1007291276027930&set=a.122765911147142.26576.100002412017265&type=3&theater">徐志榮</a></li>
                        <li><a href="#">鄭詩耀</a></li>
                        <li><a href="#">溫世康</a></li>
                        <li><a href="#">藍孟彬</a></li>
                        <li><a href="#">蔡昌廷</a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                <h1>Like Us</h1>
                        <a href="https://www.facebook.com/profile.php?id=100002412017265&fref=ts"><i class="fa fa-facebook square"></i></a>
                        <a href="https://www.facebook.com/profile.php?id=100002412017265&fref=ts"><i class="fa fa-twitter square"></i></a>
                        <a href="#"><i class="fa fa-github square"></i></a>
                        <a href="https://www.facebook.com/profile.php?id=100002412017265&fref=ts"><i class="fa fa-google-plus square"></i></a>
                </div>
                <div class="col-lg-4">
                	<h1>Thank</h1>
                	<ul class="list-unstyled">
                    	<li><a href="#">D3</a></li>
                        <li><a href="#">CartoDB</a></li>
                        <li><a href="#">JS</a></li>
                        <li><a href="#">新北市</a></li>

                    </ul>
                </div>
    </div>
    <div class="col-lg-12 top2 bottom2">
    	<div class="text-center">Copy Right &copy; 2016.Design By <a href="http://www.themesrefinery.net/"><i class="fa  fa-file-code">WBSE_ParKer</i></a></div>
    </div>
</footer>
<!--Footer End-->
</div>
<!--Main Body End-->

<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jssor.js" type="text/javascript"></script>
<script src="js/jssor.slider.js" type="text/javascript"></script>
<script src="js/slider.js" type="text/javascript"></script>
</body>
</html>