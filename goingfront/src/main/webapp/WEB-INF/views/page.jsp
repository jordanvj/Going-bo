<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<meta name="keywords"
	content="Flight Ticket Booking , Bus Reservation, Hotel Booking, Trip Planner" />
<meta name="originLocation" content="Miami" />
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>GoingBo.com - ${title}</title>
<script>
	window.menu = '${title}';
</script>
<link rel="stylesheet" type="text/css" href="${css}/style.css" />
<!-- Bootstrap -->
<link rel="stylesheet" href="${css}/bootstrap.min.css" />
<link rel="stylesheet" href="${css}/bootstrap-theme.min.css" />
<link rel="stylesheet" href="${css}/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="${css}/style.css" />
<link rel="stylesheet" type="text/css" href="${css}/style1.css" />
<link rel="stylesheet" type="text/css" href="${css}/style28.css" />
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<script src="${js}/html5shiv.min.js"></script>
<script src="${js}/respond.min.js"></script>
</head>
<body data-spy="scroll" data-target="#navbar-collapse">
	<!-- nav section start -->
	<%@include file="./shared/navbar.jsp"%>
	<!-- end nav section -->

	<!-- Content Section -->
	<c:if test="${userClickHome == true}">
		<%@include file="flight.jsp"%>
	</c:if>
	<!-- Content ends here -->


	<!-- Offers Zone Is Here -->
	<%@include file="offers.jsp"%>

	<!-- load only on click -->

	<c:if test="${userClickHotels == true}">
		<%@include file="hotels.jsp"%>
	</c:if>
	<c:if test="${userClickBuses == true}">
		<%@include file="buses.jsp"%>
	</c:if>
	<c:if test="${userClickAbout == true}">
		<%@include file="about.jsp"%>
	</c:if>

	<div class="clear-fix"></div>
	<!-- Footer Section -->
	<%@include file="./shared/footer.jsp"%>
	<!-- Footer ends here -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${js}/bootstrap.min.js"></script>
	<script src="${js}/myapp.js"></script>
	<!--script for portfolio-->
	<script src="${js}/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true
			// 100% fit in a container
			});
		});
	</script>
	<!--//script for portfolio-->
	<!-- Calendar -->
	<link rel="stylesheet" href="${css}/jquery-ui.css" />
	<script src="${js}/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3")
					.datepicker();
		});
	</script>
	<!-- //Calendar -->
	<!--quantity-->
	<script>
		$('.value-plus')
				.on(
						'click',
						function() {
							var divUpd = $(this).parent().find('.value'), newVal = parseInt(
									divUpd.text(), 10) + 1;
							divUpd.text(newVal);
						});

		$('.value-minus')
				.on(
						'click',
						function() {
							var divUpd = $(this).parent().find('.value'), newVal = parseInt(
									divUpd.text(), 10) - 1;
							if (newVal >= 1)
								divUpd.text(newVal);
						});
	</script>
	<!--//quantity-->
	<!--load more-->
	<script>
		$(document).ready(function() {
			size_li = $("#myList li").size();
			x = 1;
			$('#myList li:lt(' + x + ')').show();
			$('#loadMore').click(function() {
				x = (x + 1 <= size_li) ? x + 1 : size_li;
				$('#myList li:lt(' + x + ')').show();
			});
			$('#showLess').click(function() {
				x = (x - 1 < 0) ? 1 : x - 1;
				$('#myList li').not(':lt(' + x + ')').hide();
			});
		});
	</script>
	<!-- //load-more -->
</body>
</html>