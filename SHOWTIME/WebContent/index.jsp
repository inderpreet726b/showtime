<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Showtime</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/menu.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/abcd2.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
						<div class="clearfix"></div>
		
		<div class="container">
		  <div class="main-content">
			<div class="header">
				<div class="logo">
					<a href="index.jsp"><h1>SHOWTIME </h1></a>                                   
					
					<%if(request.getAttribute("msg5000")!=null)
										    {%>
													<h3 align="center" ><%=request.getAttribute("msg5000") %></h3>
													<%
													}
													%>
													<%if(request.getAttribute("confirm")!=null)
										    {%>
													<h3 style="text-align:center"><%=request.getAttribute("confirm") %></h3>
													<%
													}
													%>
											
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
                    <li class="active"><a href="index.jsp">Home</a></li>
                   	<li><a href="movies.jsp">MOVIES</a></li>
                    <li><a href="about.html">ABOUT US</a></li>
                    					 </ul>                            
                        
                     					
                
                
				<ul class="nav navbar-nav navbar-right">
					<li> <a>(user:<%=session.getAttribute("uname") %>)</a></li>
					<li> <a href="login.jsp">logout</a></li>
					
					<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Contact Us<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <form id="contact1" action="contact" name="contactform" method="get">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="name" id="name" class="form-control" placeholder="Name"> 
                                        <input type="text" name="email" id="email" class="form-control" placeholder="Email"> 
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <input type="text" name="phone" id="phone" class="form-control" placeholder="Phone">
                                        <input type="text" name="subject" id="subject" class="form-control" placeholder="Subject"> 
                                    </div>                 
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea class="form-control" name="comments" id="comments" rows="6" placeholder="Your Query"></textarea>
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


	<div class="main-banner">
		 <div class="banner col-md-8">
			<section class="slider">
				<div class="flexslider">
						<ul class="slides">
						<li>
							<img src="images/pic1.jpg" class="img-responsive" alt="" />
						</li>
						<li>
							<img src="images/pic2.jpg" class="img-responsive" alt="" />
						</li>
						<li>
							<img src="images/pic3.jpg" class="img-responsive" alt="" />
						</li>
						<li>
							<img src="images/pic4.jpg" class="img-responsive" alt="" />
						</li>
				  </ul>
				</div>
					</section>
				 <!-- FlexSlider -->
				 <script defer src="js/jquery.flexslider.js"></script>
				 <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
					<script type="text/javascript">
				$(function(){
				 SyntaxHighlighter.all();
			});
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				 });
				});
			 </script>
         </div>
		 <div class="col-md-4 banner-right">
			<h4>Instant Ticket Booking</h4>
			<div class="grid_3 grid_5">
				   <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
			  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Movies</a></li>
			  </ul>
			<div id="myTabContent" class="tab-content">
			  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">				  
                   
					<select class="list_of_movies"><optgroup label="Hindi"><option style="padding-left: 10px;" ><a href="control?id=1">Rustom</a></option><a href="control?id=2"><option style="padding-left: 10px;" >Mohenjadaro</option></a><a href="control?id=3"><option style="padding-left: 10px;" >Happy Bhag jayegi</option></a><a href="control?id=6"><option style="padding-left: 10px;" >me teri tu mera</option></a><a href="control?id=7"><option style="padding-left: 10px;" >unindian</option></a></optgroup><optgroup label="English"><a href="control?id=4"><option style="padding-left: 10px;" >Pete's Dragon</option></a><a href="control?id=5"><option style="padding-left: 10px;" >Suicide Squad</option></a><a href="control?id=8"><option style="padding-left: 10px;" >War Dogs</option></a><a href="control?id=9"><option style="padding-left: 10px;" >Ben-Hur</option></a></optgroup></select>
					</div>
			 
			</div>
		   </div>
		  </div>
		 </div>
		 <div class="clearfix"></div>
	</div>
				<div class="review-slider">
			 <ul id="flexiselDemo1">
			<li>
				<a href="control?id=1"><img src="<%=session.getAttribute("indeximage1") %>" alt=""/></a>
				<div class="slide-title"><h4><%=session.getAttribute("mname1") %></div>
				<div class="date-city">
					<h5><%=session.getAttribute("mdate1") %></h5>
					<h6>Multi-city</h6>
					<div class="buy-tickets">
						<a href="control?id=1">BUY TICKETS</a>
					</div>
				</div>
			</li>
			<li>
				<a href="control?id=2"><img src="<%=session.getAttribute("indeximage2") %>" alt=""/></a>
				<div class="slide-title"><h4><%=session.getAttribute("mname2") %></h4></div>
				<div class="date-city">
					<h5><%=session.getAttribute("mdate2") %></h5>
					<h6>Multi-city</h6>
					<div class="buy-tickets">
						<a href="control?id=2">BUY TICKETS</a>
					</div>
				</div>
			</li>
			<li>
				<a href="control?id=3"><img src="<%=session.getAttribute("indeximage3") %>" alt=""/></a>
				<div class="slide-title"><h4><%=session.getAttribute("mname3") %></h4></div>
				<div class="date-city">
					<h5><%=session.getAttribute("mdate3") %></h5>
					<h6>Multi-city</h6>
					<div class="buy-tickets">
						<a href="control?id=3">BUY TICKETS</a>
					</div>
				</div>
			</li>
			<li>
				<a href="control?id=4"><img src="<%=session.getAttribute("indeximage4") %>" alt=""/></a>
				<div class="slide-title"><h4><%=session.getAttribute("mname4") %></h4></div>
				<div class="date-city">
					<h5><%=session.getAttribute("mdate4") %></h5>
					<h6>Multi-city</h6>
					<div class="buy-tickets">
						<a href="control?id=4">BUY TICKETS</a>
					</div>
				</div>
			</li>
			<li>
				<a href="control?id=5"><img src="<%=session.getAttribute("indeximage5") %>" alt=""/></a>
				<div class="slide-title"><h4><%=session.getAttribute("mname5") %></h4></div>
				<div class="date-city">
					<h5><%=session.getAttribute("mdate5") %></h5>
					<h6>Multi-city</h6>
					<div class="buy-tickets">
						<a href="control?id=5">BUY TICKETS</a>
					</div>
				</div>
			</li>
			<li>
				<a href="control?id=6"><img src="<%=session.getAttribute("indeximage6") %>" alt=""/></a>
				<div class="slide-title"><h4><%=session.getAttribute("mname6") %></h4></div>
				<div class="date-city">
					<h5><%=session.getAttribute("mdate6") %></h5>
					<h6>Multi-city</h6>
					<div class="buy-tickets">
						<a href="control?id=6">BUY TICKETS</a>
					</div>
				</div>
			</li>
		</ul>
		  	<script type="text/javascript">
		$(window).load(function() {
			
		  $("#flexiselDemo1").flexisel({
				visibleItems: 5,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: false,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:480,
						visibleItems: 2
					}, 
					landscape: { 
						changePoint:640,
						visibleItems: 3
					},
					tablet: { 
						changePoint:800,
						visibleItems: 4
					}
				}
			});
			});
		</script> 
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>	
		</div>
	
						 <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
							  <ul class="resp-tabs-list">
					<!--  	  	  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Now Playing</span></li>-->
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Opening This Week</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Comming Soon</span></li>
							  <div class="clearfix"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<ul class="tab_img">
									  <li>
										<div class="view view-first">
			                            <div class="tab_desc">
													
                                              <a href=""><img src="<%=session.getAttribute("indeximage10") %>" class="img-responsive" alt=""/></a>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								                <div class="tab_desc">
													<a href="https://www.youtube.com/watch?v=1J9Z0qhKZqo">watch trailer</a>
													<div class="percentage-w-t-s">
														<div class="clearfix"></div>
													</div>
											  </div>
										  </div>
										  </div>
										</li>
									  <li>
										<div class="view view-first">
					   		  			  <a href=""> <img src="<%=session.getAttribute("indeximage11") %>" class="img-responsive" alt=""/></a>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								                <div class="tab_desc">
													<a href="https://www.youtube.com/watch?v=POJPMqWHtW8">watch trailer</a>
													<div class="percentage-w-t-s">
															<div class="clearfix"></div>
													</div>
											  </div>
										  </div>
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <a href=""><img src="<%=session.getAttribute("indeximage12") %>" class="img-responsive" alt=""/></a>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								               <div class="tab_desc">
													<a href="https://www.youtube.com/watch?v=sYIKFPfqPZA">Watch trailer</a>
													<div class="percentage-w-t-s">
																<div class="clearfix"></div>
													</div>
											  </div>
										  </div>
										</li>
										
									</ul>
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<ul class="tab_img">
										<li>
										  <div class="view view-first">
					   		  			  <a href=""> <img src="<%=session.getAttribute("indeximage13") %>" class="img-responsive" alt=""/></a>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								                <div class="tab_desc">
													<a href="https://www.youtube.com/watch?v=QsCkty3mpg0">Watch trailer</a>
													<div class="percentage-w-t-s">
														<div class="clearfix"></div>
													</div>
											  </div>
										  </div>
										</li>
										<li>
										  <div class="view view-first">
					   		  			  <a href=""><img src="<%=session.getAttribute("indeximage14") %>" class="img-responsive" alt=""/></a>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								                <div class="tab_desc">
													<a href="https://www.youtube.com/watch?v=Gx1K4yZW5Ds">Watch trailer</a>
													<div class="percentage-w-t-s">
														<div class="clearfix"></div>
													</div>
											  </div>
										  </div>
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <a href=""><img src="<%=session.getAttribute("indeximage15") %>" class="img-responsive" alt=""/></a>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								                <div class="tab_desc">
													<a href="https://www.youtube.com/watch?v=76yBTNDB6vU">Watch trailer</a>
													<div class="percentage-w-t-s">
														<div class="clearfix"></div>
													</div>
											  </div>
										  </div>
										</li>
										
									</ul>
							     </div>	
							     		        					 	        					 
			     		    </div>	
                        </div>
					</div>
				</div>	
				
							
			
</body>
</html>