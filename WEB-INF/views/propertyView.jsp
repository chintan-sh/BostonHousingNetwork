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


<!-- include ME  -->
	<%@ include file="includes.jsp" %>

<style>
/*CSS for index page*/

body{
	font-family: helvetica,arial,sans-serif;
	
	background-color: #EEEEEE;
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
				<h1>Rent your Property</h1>
				<p>Please fill out each section <u>COMPLETELY</u> and acknowledge the agreement at the bottom of page</p>
			</div>
		</div>

		<div class="row">
			<form:form action="property.htm" id="tab" commandName="property" method="post" enctype="multipart/form-data">
				<div class="section">
						<h1 class="text-center"> Basic Property Information </h1>
						<div class="form-group">
							<label for="propertyName">Property Name : </label><span>   </span><font color="red"><form:errors path="name"/></font>
							<form:input path="name" name="propertyNameTxt" id="propertyName" class="form-control" placeholder="Please enter property name" /> 
					    </div> 

						<div class="form-group">
							 <label for="startDate"> Availability Start Date :</label>
							 <span id="startDate">
								 <select name="startMonthTxt">
									<option value="January">January</option>
									<option value="Febuary">February</option>
									<option value="March">March</option>
									<option value="April">April</option>
									<option value="May">May</option>
									<option value="June">June</option>
									<option value="July">July</option>
									<option value="August">August</option>
									<option value="September">September</option>
									<option value="October">October</option>
									<option value="November">November</option>
									<option value="December">December</option>
								</select>

								<select name="startDayTxt">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
								</select>

								<select name="startYearTxt">
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018">2018</option>
								</select>
						    </span>
						</div> <br /><br />

						<div class="form-group">
							<label for="propertyTypeTxt">Property Type : </label>
							<form:select path="property_type" name="propertyTypeTxt">
									<form:option value="residential">Residential</form:option>
									<form:option value="commercial">Commercial</form:option>
							</form:select>
						</div> <br /><br />
						
						
						<div class="form-group">
								<label>Amenities : </label> <span>   </span><font color="red"><form:errors path="amenities"/></font><br />
								<form:checkbox path="amenities" value="wifi"/>WiFi<br />
								<form:checkbox path="amenities" value="cctv"/>CCTV<br />
								<form:checkbox path="amenities" value="parking"/>Parking Space<br />
								<form:checkbox path="amenities" value="heat"/>Heat<br />
								<form:checkbox path="amenities" value="gas"/>Gas<br />
								<form:checkbox path="amenities" value="microwave"/>Microwave<br />
								<form:checkbox path="amenities" value="swimming"/>Swimming Pool<br />
								<form:checkbox path="amenities" value="elevator"/>Elevator<br />
						</div> <br /><br />
						
						<div class="form-group">
							<label for="rentalPeriodTxt">Rental Period : </label>
							<form:select path="rental_period" name="rentalPeriodTxt">
									<form:option value="12">12 months</form:option>
									<form:option value="6">6 months</form:option>
							</form:select>
						</div> <br /><br />
						
						<div class="form-group">
							<label for="rentalPriceTxt">Rental Price (in US Dollars): </label><span>   </span><font color="red"><form:errors path="rental"/></font>
							<form:input path="rental" type="text" class="form-control"  name="rentalPriceTxt" id="rentalPriceTxt" />
						</div> <br /><br />
						
						<div class="form-group">
							<label for="propertyAreaTxt">Property Area : </label><span>   </span><font color="red"><form:errors path="area"/></font>
							<form:input path="area" type="text" class="form-control"  name="propertyAreaTxt" id="propertyArea" />
						</div> <br /><br />
						
						<div class="form-group">
							<label for="phoneTxt"> Phone: </label> <span>   </span><font color="red"><form:errors path="phone"/></font>
							<form:input path="phone" type="text" class="form-control"  name="phoneTxt" id="phoneTxt"/>
						</div> <br /><br />
						
						<div class="form-group">
							<label for="bathTxt"> Bath: </label> <span>   </span><font color="red"><form:errors path="bath"/></font>
							<form:input path="bath" type="text" class="form-control"  name="bathTxt" id="bathTxt"/>
						</div> <br /><br />
						
						<div class="form-group">
							<label for="subwayTxt"> Nearest Transit (Subway): </label> <span>   </span><font color="red"><form:errors path="subway"/></font>
							<form:input path="subway" type="text" class="form-control"  name="subwayTxt" id="subwayTxt"/>
						</div> <br /><br />
						
						<div class="form-group">
							<label for="bedroomTxt">No of Bedrooms : </label> <span>   </span><font color="red"><form:errors path="room"/></font>
							<form:input path="room" type="text" class="form-control"  name="bedroomTxt" id="bedroomTxt"/>
						</div> <br /><br />
						
				</div><!-- Basic info ends -->
				
				
				<!-- Address info starts -->
				<div class="section">
					<div class="refreshmentPanel form-group">
						<h1 class="text-center"> Address Details </h1><br/>
						<label for="streetTxt">Street : </label> 
						<input  type="text" class="form-control"  name="streetTxt" id="streetTxt" />
						
					</div> <br /><br />

					<div class="form-group">
						<label for="cityTxt">City : </label> 
					    <select name="cityTxt">
							<option value="boston">Boston</option>
							<option value="newyork">New York</option>
						</select>
					</div><br /><br />

					<div class="form-group">
						<label for="stateTxt">State : </label> 
						<input type="text" class="form-control"  name="stateTxt" id="stateTxt" />
					</div><br /><br />

					<div class="form-group">
						<label for="zipcodeTxt">Zipcode : </label> 
						<input type="text" class="form-control"  name="zipcodeTxt" id="zipcodeTxt" />
					</div><br /><br />
				</div><!-- Address ends -->
				
				
				
				<!-- Image info starts -->
				<div class="section">
					<div class="refreshmentPanel form-group">
						<h1 class="text-center"> Property Images </h1><br/>
						<label for="image1Txt">Image 1 : </label> 
						<input type="file"  name="imageTxt" id="image1Txt" />
						
					</div> <br /><br />
					
					<div class="form-group">
						<label for="image2Txt">Image 2 : </label> 
						<input type="file"  name="imageTxt" id="image2Txt" />
					</div><br /><br />


					<div class="form-group">
						<label for="image3Txt">Image 3 : </label> 
						<input type="file" name="imageTxt" id="image3Txt" />
					</div><br /><br />

					<div class="form-group">
						<label for="image4Txt">Image 4 : </label> 
						<input type="file"  name="imageTxt" id="image4Txt" />
					</div><br /><br />
				</div><!-- Image ends -->
				
				
				

				<div class="section">
					<h1 class="text-center"> Property Information and Acknowledgement</h1><br/>
					<div class="form-group" >
						
						<input type="checkbox" name="checkTerms" value="yes" /> I have read and understand the above rules as listed in the  Agreement as well as 
						all site policies, the laws of the Commonwealth of Massachusetts.  I also understand that it is my responsibility to share this information with my gro
						up.  I understand that if I don't follow these rules, there may be disciplinary sanctions against me and my group. <br /><br />

						<input type="submit" name="submit" value="Submit" class="btn btn-primary center-block" />
				   </div>
				</div><!-- Student group information ends -->

			</form:form>
		</div> <!-- Row ends here -->

</div><!-- Container ends -->
</body>
</html>