<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>


<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>City - Guide to Rentals</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="http://library.northeastern.edu/sites/all/themes/nulib/ico/favicon.ico" type="image/vnd.microsoft.icon" />

<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

<!-- Bootstrap  CSS/JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<div class="container">
	<div class="row">
        <div class="span12">
    		<div class="" id="loginModal">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3>Have an Account?</h3>
              </div>
              <div class="modal-body">
                <div class="well">
                  <ul class="nav nav-tabs">
                    <li class="active"><a href="#login" data-toggle="tab">Login</a></li>
                    <li><a href="#create" data-toggle="tab">Create Account</a></li>
                  </ul>
                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="login">
                      <form:form action="register.htm" class="form-horizontal" commandName="user" method="post">
			                     <fieldset>
			                          <div id="legend">
			                            <legend class="">Login</legend>
			                          </div>    
				                          
			                          <div class="control-group">
			                            <!-- Username -->
			                            <label class="control-label"  for="username">Username</label><span>   </span><font color="red"><form:errors path="name"/></font>
			                            <div class="controls">
						                        <form:input path="name" class="form-control input-xlarge" size="30" /> 
			                                    <!--<input type="text" id="username" name="username" placeholder="" class="input-xlarge">-->
			                            </div>
			                          </div>
			     
			                          <div class="control-group">
			                            <!-- Password-->
			                            <label class="control-label" for="password">Password</label><span>   </span><font color="red"><form:errors path="password"/></font>
			                            <div class="controls">
			                            	<form:input path="password" type="password" class="form-control input-xlarge" size="30" /> <font color="red"><form:errors path="password"/></font>
			                              	<!--  <input type="password" id="password" name="password" placeholder="" class="input-xlarge">-->
			                            </div>
			                          </div>
			     						
			     					   <input type="hidden" name="action" value="login"/>
			     					
			     					  <br />
			                          <div class="control-group">
			                              <button class="btn btn-info">Login</button>
			                          </div>
		                          
		                        </fieldset>
                       </form:form>
                    </div>
                    
                    <div class="tab-pane fade" id="create">
                      <form:form action="register.htm" id="tab" commandName="user" method="post">
	                        
	                        
	                        <label>First Name</label><span>   </span><font color="red"><form:errors path="firstName"/></font>
	                        <form:input path="firstName" class="form-control input-xlarge" size="30" /> 
	                        <!-- <input type="text" value="" class="form-control input-xlarge">-->
	                        
	                        <label>Last Name </label><span>   </span><font color="red"><form:errors path="lastName"/></font>
	                        <form:input path="lastName" class="form-control input-xlarge" size="30" /> 
	                        <!-- <input type="text" value="" class="form-control input-xlarge">-->
	                        
	                        <label>Username </label><span>   </span><font color="red"><form:errors path="name"/></font>
	                        <form:input path="name" class="form-control input-xlarge" size="30" /> 
	                        <!--  <input type="text" value="" class="form-control input-xlarge">-->
	                        
	                        <label>Password </label> <span>   </span><font color="red"><form:errors path="password"/></font>
	                        <form:input path="password" class="form-control input-xlarge" size="30" />
	                        <!--  <input type="text" value="" class="form-control input-xlarge">-->
	                        
	                        <label>Email </label><span>   </span><font color="red"><form:errors path="email.emailId"/></font>
	                        <form:input path="email.emailId" class="form-control input-xlarge" size="30" /> 
	                        
	                        <br />
	                        <label>What kind of user are you?</label> <span>   </span><font color="red"><form:errors path="type"/></font><br />
	                        <form:radiobutton path="type" value="buyer"/>Buyer <br />
							<form:radiobutton path="type" value="seller"/>Seller<br />
	                        
	                        <br><br>
	                        <input type="hidden" name="action" value="signup"/>
	                       
	     					
	     					<button class="btn  btn-primary">Create Account</button>
                       </form:form>
                    </div>
                    
                </div>
              </div>
            </div>
        </div>
	</div>
</div>

</body>
</html>

