<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Hain?</title>
</head>
<body>

	<h1> Status kya hai session ka? | <c:out value="${sessionScope.loggedUser}" /> | Hain?<br>
	
	<c:choose>
	    <c:when test="${sessionScope.loggedUser!=null}">
	        Set hai!
	    </c:when>    
	    <c:otherwise>
	        Jhol hai!
	        <c:redirect url="/home.html"/>
	    </c:otherwise>
	</c:choose>
	
	</h1>
</body>
</html>