<div>
   <nav class="navbar navbar-inverse nklyn-navbar" role="navigation">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand"  href="/app/" style="padding-top:15px; padding-left:20px; background-color:#F84B4A">
	        <span class="glyphicon glyphicon-home"></span>
		  </a>      <h5><a href="/app/">City</a></h5>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav nklynbar-nav">
	        <li><a href="listing.htm?city=boston&page=1&type=rent">Rentals</a></li>
	        <li><a href="listing.htm?city=newyork&page=1&type=rent">Hoods</a></li>
	        <c:choose>
				    <c:when test="${sessionScope.loggedUser.type=='seller'}">
	        		<li><a href="property.htm">Sell</a></li>
	        		</c:when> 
			</c:choose>
	      </ul>
	      <ul class="nav navbar-nav nklynbar-nav navbar-right">
	      		<c:choose>
				    <c:when test="${sessionScope.loggedUser==null}">
				        <li><a href="register.htm">Login</a></li>
	       			    <li><a href="register.htm">Sign Up</a></li>
				    </c:when>    
				    <c:otherwise>
					       <li> <a href="javascript:;" > Welcome Back, <span style="text-transform: capitalize">${sessionScope.loggedUser.name}</a> </span> </li>
						   <li><a href="logout.htm">Logout</a></li>
					</c:otherwise>
				</c:choose>
	      </ul>
	    </div>
	  </div>
	</nav>
</div>