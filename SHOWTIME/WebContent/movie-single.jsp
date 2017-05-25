<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SHOWTIME</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/menu.css" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<!---- start-smoth-scrolling---->
</head>
<body>
	<!-- header-section-starts -->
		
				<div class="container">
		  <div class="main-content">
			<div class="header">
				<div class="logo">
					<a href="index.jsp"><h1>SHOWTIME</h1></a>
				</div>
				<div class="clearfix"></div>
			</div>
	<div class="bootstrap_container">
            <nav class="navbar navbar-default w3_megamenu" role="navigation">
                <div class="navbar-header">
          			<button type="button" data-toggle="collapse" data-target="#defaultmenu" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="index.html" class="navbar-brand"><i class="fa fa-home"></i></a>
				</div><!-- end navbar-header -->
        
            <div id="defaultmenu" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="movie.jsp">Movie</a></li>
                    <li><a href="about.jsp">AboutUs</a></li>	
                    								</ul><!-- end dropdown-menu -->
                           
                
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Contact Us<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <form id="contact1" action="contact" name="contactform" method="get">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="name" id="name1" class="form-control" placeholder="Name"> 
                                        <input type="text" name="email" id="email1" class="form-control" placeholder="Email"> 
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="phone" id="phone1" class="form-control" placeholder="Phone">
                                        <input type="text" name="subject" id="subject1" class="form-control" placeholder="Subject"> 
                                    </div>                 
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea class="form-control" name="comments" id="comments1" rows="6" placeholder="Your Message ..."></textarea>
                                    </div>   
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="pull-right">
                                            <input type="submit" value="SEND" id="submit1" class="btn btn-primary small">
                                        </div>  
                                    </div>
									<div class="clearfix"></div>  
                                </form>
                            </li>
                        </ul>
					</li>
				</ul><!-- end nav navbar-nav navbar-right -->
			</div><!-- end #navbar-collapse-1 -->
            
			</nav><!-- end navbar navbar-default w3_megamenu -->
		</div><!-- end container -->
    
<!-- AddThis Smart Layers END -->

	<div class="m-single-article">
		<div class="article-left">
			<h3><%=session.getAttribute("name") %> </h3>
				<div class="clearfix"></div>
			<div class="article-time-strip">
				<div class="article-time-strip-left">
					<p>Duration <span><i class="fa fa-clock-o"></i><%=session.getAttribute("duration") %> </span>  &nbsp;&nbsp; Release Date <span><i class="fa fa-calendar"></i><%=session.getAttribute("date") %></span></p>
				</div>
				<div class="clearfix"></div>
				<div class="article-img">
					<img src="<%=session.getAttribute("moviebanner") %>" class="img-responsive zoom-img" alt="" /></div>
								<p class="info"><strong>CAST</strong>: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=session.getAttribute("actor") %>.</p>
								<p class="info"><strong>DIRECTION</strong>: &nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("director") %></p>
								<p class="info"><strong>TYPE</strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=session.getAttribute("type") %>.</p>
								<p class="info"><strong>DURATION</strong>:&nbsp;&nbsp;&nbsp; &nbsp; <%=session.getAttribute("duration") %></p>
							</div>
			</div>
		</div>
		<div class="article-right">
			<div class="grid_3 grid_5">
				   <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
			  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Tue-23</a></li>
			  <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">WED-24</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
			  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">				  
                 <p class="m-s-t">PVR(VIKASPURI)</p>
				 <a class="show-time" href="control2?hid=1&time=<%=session.getAttribute("pvrvp1") %>&cid=1&date=1&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp1") %></a><a class="show-time" href="control2?hid=2&time=<%=session.getAttribute("pvrvp2") %>&date=1&cid=1&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp2") %></a><a class="show-time" href="control2?hid=3&cid=1&date=1&time=<%=session.getAttribute("pvrvp3") %>&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp3") %></a><a class="show-time" href="control2?hid=4&cid=1&time=<%=session.getAttribute("pvrvp4") %>&date=1&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp4") %></a><a class="show-time" href="control2?time=<%=session.getAttribute("pvrvp5") %>&hid=5&date=1&cid=1&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp5") %></a>
				 <br>
				 <br>
				 <br>
				 <br>
				 <p class="m-s-t">WAVE</p>
				 <a class="show-time" href="control2?hid=101&cid=2&date=1&time=<%=session.getAttribute("wave1") %>&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("wave1") %></a><a class="show-time" href="control2?hid=102&date=1&time=<%=session.getAttribute("wave2") %>&cid=2&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("wave2") %></a><a class="show-time" href="control2?hid=103&cid=2&date=1&time=<%=session.getAttribute("wave3") %>&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("wave3") %></a><a class="show-time" href="control2?hid=104&date=1&cid=2&time=<%=session.getAttribute("wave4") %>&id=<%= session.getAttribute("id") %> "><%=session.getAttribute("wave4") %></a><a class="show-time" href="control2?hid=105&time=<%=session.getAttribute("wave5") %>&cid=2&date=1&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("wave5") %></a>
				 
				 </div>
			  <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				 <p class="m-s-t">PVR(VIKASPURI)</p>
				 <a class="show-time" href="control2?hid=501&time=<%=session.getAttribute("pvrvp1") %>&date=2&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp1") %></a><a class="show-time" href="control2?hid=502&date=2&time=<%=session.getAttribute("pvrvp2") %>&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp2") %></a><a class="show-time" href="control2?hid=503&time=<%=session.getAttribute("pvrvp3") %>&date=2&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp3") %></a><a class="show-time" href="control2?hid=504&date=2&time=<%=session.getAttribute("pvrvp4") %>&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp4") %></a><a class="show-time" href="control2?hid=505&date=2&time=<%=session.getAttribute("pvrvp5") %>&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("pvrvp5") %></a>
				 <br>
				 <br>
				 <br>
				 <br> 
				 <p class="m-s-t">WAVE</p>
				 <a class="show-time" href="control2?hid=601&time=<%=session.getAttribute("wave1") %>&date=2&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("wave1") %></a><a class="show-time" href="control2?hid=602&date=2&time=<%=session.getAttribute("wave2") %>&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("wave2") %></a><a class="show-time" href="control2?hid=603&date=2&time=<%=session.getAttribute("wave3") %>&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("wave3") %></a><a class="show-time" href="control2?hid=604&date=2&time=<%=session.getAttribute("wave4") %>&id=<%= session.getAttribute("id") %> "><%=session.getAttribute("wave4") %></a><a class="show-time" href="control2?hid=605&time=<%=session.getAttribute("wave5") %>&date=2&id=<%= session.getAttribute("id") %>"><%=session.getAttribute("wave5") %></a>
				 
				  </div>
			</div>
		   </div>
		  </div>
		</div>
		<div class="clearfix"></div>
	</div>
	
		</body> 
</html>