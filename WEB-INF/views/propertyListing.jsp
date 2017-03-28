<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

<style>
.glyphicon { margin-right:5px; }
.thumbnail
{
    margin-bottom: 20px;
    padding: 0px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.item.list-group-item
{
	margin-left:0px;
	margin-top: 30px;
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 5px;
}
.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
{
    /*  background: #428bca;*/
}

.item.list-group-item .list-group-image
{
    margin-right: 10px;
}
.item.list-group-item .thumbnail
{
    margin-bottom: 0px;
}
.item.list-group-item .caption
{
    padding: 9px 9px 0px 9px;
}
.item.list-group-item:nth-of-type(odd)
{
    background: #eeeeee;
}

.item.list-group-item:before, .item.list-group-item:after
{
    display: table;
    content: " ";
}

.item.list-group-item img
{
    float: left;
}
.item.list-group-item:after
{
    clear: both;
}
.list-group-item-text
{
    margin: 0 0 11px;
}


</style>

<script>
$(document).ready(function() {
    $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
    $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
});
</script>


</head>
<body>	
	<!-- include ME  -->
	<%@ include file="header.jsp" %>
	<div class="container-fluid">
	     <!--  <div class="well well-sm">
	        <strong>Display</strong>
	        <div class="btn-group">
	            <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
	            </span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
	                class="glyphicon glyphicon-th"></span>Grid</a>
	        </div>
	    </div>-->
	    
	    <div class="row">
		    <!-- <div class="col-sm-2 col-md-2 sidebar" width="90%" style="float:left; margin-right:0px">
		          <ul class="nav nav-sidebar">
		            <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
		            <li><a href="#">Reports</a></li>
		            <li><a href="#">Analytics</a></li>
		            <li><a href="#">Export</a></li>
		          </ul>
		          <ul class="nav nav-sidebar">
		            <li><a href="">Nav item</a></li>
		            <li><a href="">Nav item again</a></li>
		            <li><a href="">One more nav</a></li>
		            <li><a href="">Another nav item</a></li>
		            <li><a href="">More navigation</a></li>
		          </ul>
		          <ul class="nav nav-sidebar">
		            <li><a href="">Nav item again</a></li>
		            <li><a href="">One more nav</a></li>
		            <li><a href="">Another nav item</a></li>
		          </ul>
		     </div> -->
		    
		    <div id="products" class="list-group col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" style="float:right">
		    
		    	<c:forEach var="property" items="${propertyList}"> 
					 <div class="list-group-item item col-xs-4 col-lg-4">
				            <div class="thumbnail">
				            	 <c:forEach var="image" begin="1" end="1" items="${property.image}"> 
				            	 	<c:set var="city" value="${property.address.city}" scope="request" />
									<img class="group list-group-image" width="256" height="400" src="${image.url}" alt="" />
				                </c:forEach>
				                <div class="caption">
				                    <h4 class="group inner list-group-item-heading" style="text-transform: capitalize">${property.name}</h4>
				                    <p class="group inner list-group-item-text">
		                               ${property.room} Bed / 1 Bath in <span style="text-transform: capitalize">${property.address.street}</span>, <span style="text-transform: capitalize"> ${property.address.state}. </span>
							           Pets are allowed.This newly renovated ${property.room} Bedroom has stainless steel appliances, hardwood floors, high ceilings, Central A/C, <span style="text-transform: capitalize">${property.amenities}</span>. Rent it today!
									</p>
				                    <div class="row">
				                        <div class="col-xs-12 col-md-6">
				                            <p class="lead">$${property.rental}</p>
				                        </div>
				                        <div class="col-xs-12 col-md-6">
				                            <a class="btn btn-success" href="detail.htm?property_id=${property.id}">Check Listing</a>
				                            <c:if test="${sessionScope.loggedUser.type == 'admin'}">
				                            	<c:choose>
												    <c:when test="${property.property_status == 'pending'}">
												        <a class="btn btn-success" href="approve.htm?property_id=${property.id}">Approve Listing</a>
												    </c:when>  
												    <c:otherwise>
												    	<a class="btn btn-success" href="remove.htm?property_id=${property.id}">Remove Listing</a>
												    </c:otherwise>  
												</c:choose>
				                            	
					                            
					                         </c:if>
				                        </div>
				                        
				                       
				                    </div>
				                </div>
				            </div>
				        </div>
					<br><br>
				 </c:forEach>
				 
				 
		    </div>
		    
		</div>
		
		    
			 
	</div>
	
	<div class="container">
		<div class='row'>
                    <c:forEach begin="1" end="${sessionScope.totalCount}" varStatus="loop">
                        <a href="listing.htm?page=<c:out value="${loop.index}"/>&type=rent&city=${city}"  id="<c:out value="${loop.index}"/>"> <c:out value="${loop.index}"/></a>
                    </c:forEach>
              </div>
	</div>
	
</body>
</html>