<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
</script>
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
	<script src="js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
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
                    <li><a href="movies.jsp">MOVIES</a></li>	
                    <li><a href="about.html">AboutUs</a></li>
                    <!-- Mega Menu -->
										
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
    
</script>
<!-- AddThis Smart Layers END -->

	
	<div class="now-showing-movies">
		<h3 class="m-head">Now Showing</h3>
		<div class="col-md-4 movie-preview">
			<a href="control?id=1" class="mask">
				<img src="<%=session.getAttribute("movieimage1") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=1"><%=session.getAttribute("mname1") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate1") %></p>
						<a href="control?id=1">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="control?id=2" class="mask">
				<img src="<%=session.getAttribute("movieimage2") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=2"><%=session.getAttribute("mname2") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate2") %></p>
						<a href="control?id=2">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="control?id=3" class="mask">
				<img src="<%=session.getAttribute("movieimage3") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=3"><%=session.getAttribute("mname3") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate3") %></p>
						<a href="control?id=3">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="control?id=4" class="mask">
				<img src="<%=session.getAttribute("movieimage4") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=4"><%=session.getAttribute("mname4") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate4") %></p>
						<a href="control?id=4">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="control?id=5" class="mask">
				<img src="<%=session.getAttribute("movieimage5") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=5"><%=session.getAttribute("mname5") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate5") %></p>
						<a href="control?id=5">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="control?id=6" class="mask">
				<img src="<%=session.getAttribute("movieimage6") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=6"><%=session.getAttribute("mname6") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate6") %></p>
						<a href="control?id=6">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="control?id=7" class="mask">
				<img src="<%=session.getAttribute("movieimage7") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=7"><%=session.getAttribute("mname7") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate7") %></p>
						<a href="control?id=7">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="control?id=8" class="mask">
				<img src="<%=session.getAttribute("movieimage8") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=8"><%=session.getAttribute("mname8") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate8") %></p>
						<a href="control?id=8">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="control?id=9" class="mask">
				<img src="<%=session.getAttribute("movieimage9") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="control?id=9"><%=session.getAttribute("mname9") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate9") %></p>
						<a href="control?id=9">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		 <div class="clearfix"></div>
	</div>
	<div class="now-showing-movies">
		<h3 class="m-head">UPCOMING WEEK</h3>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage10") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname10") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate10") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage11") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname11") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate11") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage12") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname12") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate12") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
	
		</div>
		<div class="now-showing-movies">
		<h3 class="m-head">NEXT MONTH</h3>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage13") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname13") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate13") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage14") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname14") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate14") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage15") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname15") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate15") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage16") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname16") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate16") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage17") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname17") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mdate17") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<div class="col-md-4 movie-preview">
			<a href="" class="mask">
				<img src="<%=session.getAttribute("movieimage18") %>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href=""><%=session.getAttribute("mname18") %></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><%=session.getAttribute("mname18") %></p>
						<a href=""></a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	</div>
	</div>
	
	
		
		</body>
</html>