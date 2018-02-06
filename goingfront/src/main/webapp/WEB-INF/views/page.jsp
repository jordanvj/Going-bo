<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <spring:url var="css" value="/resources/css"></spring:url>
 <spring:url var="js" value="/resources/js"></spring:url>
 <spring:url var="fonts" value="/resources/fonts"></spring:url>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Flight Ticket Booking , Bus Reservation, Hotel Booking, Trip Planner" />
    <meta name="originLocation" content="Miami" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>GoingBo.com</title>
	<link rel="stylesheet" type="text/css" href="${css}/style.css" />
    <!-- Bootstrap -->
    <link rel="stylesheet" href="${css}/bootstrap.min.css" />
	<link rel="stylesheet" href="${css}/bootstrap-theme.min.css" />
	<link rel="stylesheet" href="${css}/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="${css}/style.css" />
	<link rel="stylesheet" type="text/css" href="${css}/style1.css" />
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    	<script src="https://widgets.skyscanner.net/widget-server/js/loader.js" async></script>
     <script src="${js}/html5shiv.min.js"></script>
     <script src="${js}/respond.min.js"></script>    
  </head>
  <body data-spy="scroll" data-target="#navbar-collapse">
    <!-- nav section start -->
	<nav class="container-fluid navbar navbar-default" id="my-navbar">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
				<a href="" class="navbar-brand display-4">
					GoingBo
				</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<a href="" class="btn btn-md navbar-btn navbar-right btn-info">Download App</a>
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Flights</a></li>
					<li><a href="">Hotels</a></li>
					<li><a href="">Buses</a></li>
					<li><a href="">About Us</a></li>
				</ul>
		</div>
	</nav>
	<!-- end nav section -->
	
	<!-- Content Section -->
	<h1>GoingBo Flight Ticket Booking </h1>
	<div class="main-agileinfo">
		<div class="sap_tabs">		
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item"><span>Round Trip</span></li>
					<li class="resp-tab-item"><span>One way</span></li>
					<li class="resp-tab-item"><span>Multi city</span></li>				
				</ul>	
				<div class="clearfix"> </div>	
				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content roundtrip">
						<form action="#" method="post">
							<div class="from">
								<h3>From</h3>
								<input data-skyscanner-widget="SearchWidget" data-origin-name="document.querySelector('meta[name=originLocation]').content" type="text" name="city" class="city1" placeholder="Type Departure City" required="required">
							</div>
							<div class="to">
								<h3>To</h3>
								<input type="text" name="city" class="city2" placeholder="Type Destination City" required="required">
							</div>
							<div class="clear"></div>
							<div class="date">
								<div class="depart">
									<h3>Depart</h3>
									<input  id="datepicker" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="required">
									<span class="checkbox1">
										<label class="checkbox"><input type="checkbox" name="" checked="checked"><i> </i>Flexible with date</label>
									</span>
								</div>
								<div class="return">
									<h3>Return</h3>
									<input  id="datepicker1" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="required">
									<span class="checkbox1">
										<label class="checkbox"><input type="checkbox" name="" checked="checked"><i> </i>Flexible with date</label>
									</span>
								</div>
								<div class="clear"></div>
							</div>
							<div class="class">
								<h3>Class</h3>
								<select id="w3_country1" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Economy</option>  
									<option value="null">Premium Economy</option>   
									<option value="null">Business</option>   
									<option value="null">First class</option>   						
								</select>

							</div>
							<div class="clear"></div>
							<div class="numofppl">
								<div class="adults">
									<h3>Adult:(12+ yrs)</h3>
									<div class="quantity"> 
										<div class="quantity-select">                           
											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>
										</div>
									</div>
								</div>
								<div class="child">
									<h3>Child:(2-11 yrs)</h3>
									<div class="quantity"> 
										<div class="quantity-select">                           
											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
							<input type="submit" value="Search Flights">
						</form>						
					</div>
					<div class="tab-1 resp-tab-content oneway">
						<form action="#" method="post">
							<div class="from">
								<h3>From</h3>
								<input type="text" name="city" class="city1" placeholder="Type Departure City" required="required">
							</div>
							<div class="to">
								<h3>To</h3>
								<input type="text" name="city" class="city2" placeholder="Type Destination City" required="required">
							</div>
							<div class="clear"></div>
							<div class="date">
								<div class="depart">
									<h3>Depart</h3>
									<input class="date" id="datepicker2" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="required">
									<span class="checkbox1">
										<label class="checkbox"><input type="checkbox" name="" checked="checked"><i> </i>Flexible with date</label>
									</span>
								</div>
							</div>
							<div class="class">
								<h3>Class</h3>
								<select id="w3_country1" onchange="change_country(this.value)" class="frm-field" required="required">
									<option value="null">Economy</option>  
									<option value="null">Premium Economy</option>   
									<option value="null">Business</option>   
									<option value="null">First class</option>   						
								</select>

							</div>
							<div class="clear"></div>
							<div class="numofppl">
								<div class="adults">
									<h3>Adult:(12+ yrs)</h3>
									<div class="quantity"> 
										<div class="quantity-select">                           
											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>
										</div>
									</div>
								</div>
								<div class="child">
									<h3>Child:(2-11 yrs)</h3>
									<div class="quantity"> 
										<div class="quantity-select">                           
											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
							<input type="submit" value="Search Flights">
						</form>	
								
					</div>
					<div class="tab-1 resp-tab-content multicity">
						
									<form action="#" method="post">
										<div class="from">
											<h3>From</h3>
											<input type="text" name="city" class="city1" placeholder="Type Departure City" required="required">
										</div>
										<div class="to">
											<h3>To</h3>
											<input type="text" name="city" class="city2" placeholder="Type Destination City" required="required">
										</div>
										<div class="clear"></div>
										<div class="date">
											<div class="depart">
												<h3>Depart</h3>
												<input class="date" id="datepicker3" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="required">
												<span class="checkbox1">
													<label class="checkbox"><input type="checkbox" name="" checked="checked"><i> </i>Flexible with date</label>
												</span>
											</div>
										</div>
										<div class="class">
											<h3>Class</h3>
											<select id="w3_country1" onchange="change_country(this.value)" class="frm-field" required>
												<option value="null">Economy</option>  
												<option value="null">Premium Economy</option>   
												<option value="null">Business</option>   
												<option value="null">First class</option>   						
											</select>
										</div>
										<div class="clear"></div>
										<div id="loadMore">Add City+</div>
										<div id="showLess">Remove</div>
									</form>
				<div class="load_more">	
						<ul id="myList">
							<li>
			
								<div class="l_g spcl">
									<form action="#" method="post" class="blackbg">
										<div class="from">
											<h3>From</h3>
											<input type="text" name="city" class="city1" placeholder="Type Departure City" required="required">
										</div>
										<div class="to">
											<h3>To</h3>
											<input type="text" name="city" class="city2" placeholder="Type Destination City" required="required">
										</div>
										
										<div class="clear"></div>
										<div class="date">
											<div class="depart">
												<h3>Depart</h3>
												<input class="date" id="datepicker" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="required">
												<span class="checkbox1">
													<label class="checkbox"><input type="checkbox" name="" checked="checked"><i> </i>Flexible with date</label>
												</span>
											</div>
										</div>
										<div class="clear"></div>
									</form>
					
								</div>
								
							</li>
							<form action="#" method="post">
							<div class="numofppl">
								<div class="adults">
									<h3>Adult:(12+ yrs)</h3>
									<div class="quantity"> 
										<div class="quantity-select">                           
											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>
										</div>
									</div>
								</div>
								<div class="child">
									<h3>Child:(2-11 yrs)</h3>
									<div class="quantity"> 
										<div class="quantity-select">                           
											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
							<input type="submit" value="Search Flights">
							</form>
						</ul>
					</div>
					</div>
		
				</div>						
			</div>
			<div class="clear-fix"></div>
			
		</div>
		
	</div>
	
	<div class="offers">
				<h2>Offers and Highlights</h2>
				<div class="box">
					
				</div>
			</div>
	
	<div class="clear-fix"></div>
	<div class="footer-w3l">
		<p class="agileinfo"> &copy; 2018 Flight Ticket Booking  @ GoingBo.com, All Rights Reserved | Design by <a href="http://infirment.com">Jordan VJ</a></p>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${js}/bootstrap.min.js"></script>
	<!--script for portfolio-->
		<script src="${js}/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(document).ready(function () {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion           
					width: 'auto', //auto or any width like 600px
					fit: true   // 100% fit in a container
				});
			});		
		</script>
		<!--//script for portfolio-->
				<!-- Calendar -->
				<link rel="stylesheet" href="${css}/jquery-ui.css" />
				<script src="${js}/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->
			<!--quantity-->
									<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--//quantity-->
						<!--load more-->
								<script>
	$(document).ready(function () {
		size_li = $("#myList li").size();
		x=1;
		$('#myList li:lt('+x+')').show();
		$('#loadMore').click(function () {
			x= (x+1 <= size_li) ? x+1 : size_li;
			$('#myList li:lt('+x+')').show();
		});
		$('#showLess').click(function () {
			x=(x-1<0) ? 1 : x-1;
			$('#myList li').not(':lt('+x+')').hide();
		});
	});
</script>
<!-- //load-more -->
 </body>
</html>