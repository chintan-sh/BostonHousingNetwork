<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="random" class="java.util.Random" scope="application" />
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

<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/jquery-1.11.3.min.js"></script>
		<script src="resources/js/jquery-1.9.1.min.js"></script> 

<!-- include US  -->
<%@ include file="includes.jsp" %>

</head>
<body>	
	
	<!-- include ME  -->
	<%@ include file="header.jsp" %>

	<div class="super_container">
	  <br>
	    <div class="listing-page container">
	      <div class="row">
	    <div class="col-md-6">
	      <div class="listing-show-image">
	      	 <c:forEach var="image" begin="1" end="1" items="${propertyObj.image}"> 
	            <img src="${image.url}" class="lazy img-responsive" width="584" height="584" alt="banner image" />
	      	 </c:forEach>
	      </div>
	    </div>
	    <div class="col-md-6 listing-show-details">
	      <div class="row">
	        <div class="col-sm-6">
	          <h2>$${propertyObj.rental}</h2>
	          <h5>price</h5>
	        </div>
	        <!--  <div class="col-sm-3 col-xs-6">
	          <div class="listing-like" id='listing_card_4247'>
	            <a href="#" class="unlike-button">
	              <i class="nklyn-icon-heart-fill nooklyn_listing_square_heart"></i>
	              <i class="nklyn-icon-heart nooklyn_listing_square_heart"></i>
	            </a>
	            <h6>Save</h6>
	          </div>
	        </div>-->
	        <div class="col-sm-3 col-xs-6">
	          <h2>${random.nextInt(100)}</h2>
	          <h5>Views</h5>
	        </div>
	      </div>
	      <hr>
	      <div class="row">
	        <div class="col-sm-6">
	          <!--<i class="nklyn-icon-building nklyn-3x"></i>-->
	          <h3>${propertyObj.address.street}</h3>
	          <h5>hood</h5>
	          <br>
	        </div>
	        <div class="col-sm-3 col-xs-6">
	          <!--  <i class="nklyn-icon-amenity-bed nklyn-3x"></i>-->
	          <h3>${propertyObj.room}</h3>
	          <h5>bed</h5>
	          <br>
	        </div>
	        <div class="col-sm-3 col-xs-6">
	          <!--  <i class="nklyn-icon-amenity-bath nklyn-3x"></i>-->
	          <h3>${propertyObj.bath}</h3>
	          <h5>bath</h5>
	          <br>
	        </div>
	      </div>
	      <hr>
	      <h5>Description</h5>
	      <p>
	          ${propertyObj.room} Bed / 1 Bath in <a href="https://www.google.com/maps/place/${propertyObj.address.street},+${propertyObj.address.state}" target="_blank">${propertyObj.address.street}</a>, <span style="text-transform: capitalize"> ${propertyObj.address.state}. </span>
	           Pets are allowed.
				
			   This newly renovated ${propertyObj.room} Bedroom has stainless steel appliances, hardwood floors, high ceilings, Central A/C, ${propertyObj.amenities}. Rent it today!
	
	      </p>
	      <br>
	    </div>
	  </div>
	  <hr>
	  <div class="row">
		    <div class="col-md-6">
			      <h5 class="text-center">Transit</h5><br>
			      <div class="listing-transit">
			       	  <img class="train" alt="L train" src="//nooklyn-files.s3.amazonaws.com/subway/L.png" />
					  <img class="train" alt="G train" src="//nooklyn-files.s3.amazonaws.com/subway/G.png" />
					  <img class="train" alt="R train" src="//nooklyn-files.s3.amazonaws.com/subway/R.png" /> <br ></br>
					  <h6>${propertyObj.subway} - L,G,R lines</h6>
			      </div>
			      <hr>
			      <h5 class="text-center">Amenities</h5><br>
			      <p class="amenities">
			      	  <c:set var="amenities" value="" />
			      	  <c:forEach var="amenity" items="${fn:split(propertyObj.amenities, ',')}">
				      		<i class="nklyn-icon-dot-fill nklyn-green"></i> <span style="text-transform: capitalize">${amenity}</span><br>	
				      </c:forEach>
			      </p>
		    </div>
		    
		    <div class="col-md-6">
			      <div class="text-center listing-contact-area">
			        <h3>Listed by <a href="javascript:;">${propertyObj.owner.name}</a></h3>
			
			          <a href="javascript:;">
			            <img class="img-circle" alt="owner" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" />
			 		 </a>
			        <h3>${propertyObj.phone}</h3>
			        <br>
			        	
			        	<c:if test="${sessionScope.loggedUser.type != 'admin'}">
				        	<c:if test="${propertyObj.owner.personID != sessionScope.loggedUser.personID}">
				        		<a class="button btn-blue btn-3x" href="grab.htm?property_id=${propertyObj.id}">Grab this Rental!</a>
				         	</c:if>
			         	</c:if>
			        <br>
			        		<a class="button btn-blue btn-3x" target="_blank" href="report.htm?property_id=${propertyObj.id}">Download listing</a>
			      </div>
			    </div>
		  </div>
		  <hr>
	
	
	        <div class="text-center">
			    <h3>Pictures</h3>
			    <div class="row">
				      <div class="listing-gallery">
				      	 <c:forEach var="image" items="${propertyObj.image}"> 
					            <img src="${image.url}" class="lazy img-responsive col-sm-6 col-xs-12" width="584" height="584" />
				  		 </c:forEach>     
				  	 </div>
			    </div>
			  </div>
	
	      <hr>
	
	
	
	    </div>
	    <br>
	    <div class="container">
	    </div>
	</div>


</body>
</html>