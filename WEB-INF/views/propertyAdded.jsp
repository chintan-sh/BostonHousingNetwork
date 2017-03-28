<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!-- SESSION CHECK  -->
<c:choose>
    <c:when test="${sessionScope.loggedUser==null}">
        <c:redirect url="/register.htm"/>
    </c:when>    
</c:choose>
<!-- SESSION CHECK  -->

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<!-- include US  -->
<%@ include file="includes.jsp" %>

<style>
/*CSS for index page*/

body{
	font-family: helvetica,arial,sans-serif;
	background-color: #EFEFEF;
	color: #000000;
}

.section{
	background-color: #fff;
	border:1px dotted #FFFAE4;
	margin: 30px;
	padding:30px;
	border-radius: 10px;
}


</style>


</head>
<body>
<!-- include ME  -->
<%@ include file="header.jsp" %>
<div class="container">
		<div class="row">
			<div class="header text-center">
				<h1>Sit tight! Property listing is under moderation. We'll let you know once we update the status.</h1>
				<a href="listing.htm?city=boston&page=1&type=rent">See other listings -></a>
			</div>
		</div>

		<div class="row">
		</div>
</div><!-- Container ends -->
</body>
</html>