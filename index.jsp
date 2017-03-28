<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>City</title>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css" >
	<link rel="stylesheet" type="text/css" href="resources/style.css">
	<link rel="stylesheet" type="text/css" href="resources/css/owl.carousel.css">
	<link rel="shortcut icon" href="http://library.northeastern.edu/sites/all/themes/nulib/ico/favicon.ico" type="image/vnd.microsoft.icon" />
  	<script src="resources/js/jquery.quovolver.min.js"></script>
	<!-- include US  -->
	<%@ include file="WEB-INF/views/includes.jsp" %>
</head>
<style>


</style>
	<body>
		<!-- include ME  -->
		<%@ include file="WEB-INF/views/header.jsp" %>
		
		<!--header starts-->
		<header class="main-header">
			<div class="backbg-color">
				<div class="navigation-bar">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<!--navigation starts
								<nav class="navbar navbar-default">
									<div class="navbar-header">
									    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
									       <span class="icon-bar"></span>
									       <span class="icon-bar"></span>
									       <span class="icon-bar"></span>
									    </button>
									    <a class="navbar-brand" href="#"><span class="grey">Ci</span>ty</a>
									</div>
									<div class="collapse navbar-collapse navbar-right" id="myNavbar">
									    <ul class="nav navbar-nav">
									     	<li class="active"><a href="#">Home</a></li>
									        <li><a href="#listed">Listing</a></li>
									        <li><a href="#gallery">Popular</a></li>
									        <li><a href="#contact">Social</a></li>
									    </ul>
									</div>
								</nav>
								navigation ends-->
							</div>
						</div>
					</div>
				</div>
				<!--banner starts-->
				<div class="banner-text">
					<div class="container">
						<div class="row">
							<div class="banner-info text-center">
								<h2><span class="grey">CITY</span> - Rent a Space</h2>
							</div>
							<div class="banner-heading text-center">
								<h3>Easiest way to rent a home.</h3>
							</div>
							<div class="banner-search col-md-offset-2 col-md-8 col-md-offset-2">
								<form action="listing.htm" method="get">
									<div class="col-md-3">
										<select name="type" class="form-control sellone">
										    <option value="rent">Rent</option>
										    <!--  <option value="sell">Sell</option>--> 
										</select>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											  <select name="city" class="form-control sellone">
											    <option value="boston">Boston</option>
											    <option value="newyork">New York</option>
											</select>
											<input type="hidden" name="page" value="1" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-btn">
											<button type="submit">Search</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--banner ends-->
		</header>
		<!--header ends-->
		<section class="intro-one">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="intro-text text-center">
							<h3>We Fullfill Your Dreams</h3>
							
							<p>Let us help you find your next apartment in the greatest city<span style="display:block;"> on the planet. You'll love it.</span></p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--listing section-->
		<section class="feature" id="listed">
			<div class="container">
				<div class="row">
					<div class="fea-head">
						<div class="col-md-12">
							<div class="sec-head">
								<h2> Recently <span>Listed </span></h2>
								<hr></hr>
							</div>
						</div>
						<div class="feature-slider col-md-12">
						    <div id="owl-demo">    
						      <div class="item">
						      	<img src="resources/img/fea1.jpg" alt="Owl Image">
						      	<div class="img-info">
						      		<h4>Tremont Street</h4>
						      	</div>
						      </div>
						      <div class="item">
						      	<img src="resources/img/fea2.jpg" alt="Owl Image">
						      	<div class="img-info">
						      		<h4>Allston</h4>
						      	</div>
						      </div>
						      <div class="item">
						      	<img src="resources/img/fea3.jpg" alt="Owl Image">
						      	<div class="img-info">
						      		<h4>Shawmut</h4>
						      	</div>
						      </div>
						      <div class="item">
						      	<img src="resources/img/fea4.jpg" alt="Owl Image">
						      	<div class="img-info">
						      		<h4>Mass Ave</h4>
						      	</div>
						      </div>
						      <div class="item">
						      	<img src="resources/img/fea5.jpg" alt="Owl Image">
						      	<div class="img-info">
						      		<h4>Watertown</h4>
						      	</div>
						      </div>
						      <div class="item">
						      	<img src="resources/img/fea6.jpg" alt="Owl Image">
						      	<div class="img-info">
						      		<h4>Chatham</h4>
						      	</div>
						      </div>
						    </div>
						</div>
					</div>
				</div> 
			</div>
		</section>
		<section class="works" id="gallery">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="sec-head">
							<h2>Popular <span> </span></h2>
							<hr></hr>
						</div>
					</div>
					<div class="work-sec">
						<!--  <div class="col-md-12 fil-btn">
							<div class="filter col-md-3 col-sm-3 col-xs-3 wrk-title active" data-filter="all">Show All</div>
							<div class="filter col-md-3 col-sm-3 col-xs-3 wrk-title" data-filter=".category-1">Boston</div>
							<div class="filter col-md-3 col-sm-3 col-xs-3 wrk-title" data-filter=".category-2">New York</div>
							<div class="filter col-md-3 col-sm-3 col-xs-3 wrk-title lst-cld" data-filter=".category-3">Seatle</div>
						</div>-->
							<div id="Container">
								<div class="filimg mix category-1 category-3 col-md-4 col-sm-4 col-xs-12" data-myorder="2">
									<img src="resources/img/fea1.jpg">
									<div class="img-hover">
										<h3>Rowhouse</h3>
									</div>
								</div>
								<div class="filimg mix category-2 col-md-4 col-sm-4 col-xs-12" data-myorder="4">
									<img src="resources/img/fea2.jpg">
									<div class="img-hover">
										<h3>Apartments</h3>
									</div>
								</div>
								<div class="filimg mix category-1 col-md-4 col-sm-4 col-xs-12" data-myorder="1">
									<img src="resources/img/fea3.jpg">
									<div class="img-hover">
										<h3>Mansion</h3>
									</div>
								</div>
								<div class="filimg mix category-2 category-3 col-md-4 col-sm-4 col-xs-12" data-myorder="8">
									<img src="resources/img/fea4.jpg">
									<div class="img-hover">
										<h3>House</h3>
									</div>
								</div>
								<div class="filimg mix category-2 col-md-4 col-sm-4 col-xs-12" data-myorder="8">
									<img src="resources/img/fea5.jpg">
									<div class="img-hover">
										<h3>Villa</h3>
									</div>
								</div>
								<div class="filimg mix category-2 category-3 col-md-4 col-sm-4 col-xs-12" data-myorder="8">
									<img src="resources/img/fea6.jpg">
									<div class="img-hover">
										<h3>Community</h3>
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>
		</section>

		<section class="appoin-sec" id="contact">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="footer-sec text-center">
							<h2>Made with <3 at Northeastern</h2>
							<p>2016 &copy; All Rights Reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!--  <footer class="footer">
			<div class="container">
				<div class="row text-center">
					<ul class="footer-social">
						<li><a href="#"><i class="fa fa-facebook" id="blue"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus" id="red"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter" id="light-blue"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin" id="blue"></i></a></li>
					</ul>
				</div>
			</div>
		</footer>
		<section class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<p>2016 &copy; All Rights Reserved.</p>
					</div>
				</div>
			</div>
		</section>-->
		<script src="resources/js/jquery.min.js"></script>
    	<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/jquery-1.11.3.min.js"></script>
		<script src="resources/js/jquery-1.9.1.min.js"></script> 
    	<script src="resources/js/owl.carousel.js"></script>
    	<script src="resources/js/jquery.mixitup.js" type="text/javascript"></script>
    	<script type="text/javascript" src="resources/js/jquery.quovolver.js"></script>
    	<!--for smooth scrolling-->
		    	<script>
			$(function() {
			  $('a[href*=#]:not([href=#])').click(function() {
			    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

			      var target = $(this.hash);
			      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			      if (target.length) {
			        $('html,body').animate({
			          scrollTop: target.offset().top
			        }, 1000);
			        return false;
			      }
			    }
			  });
			});
			</script>
    	<!--demo-->
    	<script>
	    $(document).ready(function() {
	      $("#owl-demo").owlCarousel({
	        autoPlay: 4000,
	        items : 4,
	        itemsDesktop : [1199,3],
	        itemsDesktopSmall : [979,3]
	      });

	    });

    	</script>

    	<script type="text/javascript">
		   

		    $(document).ready(function() {
		     
		      var owl = $("#owl-demo");
		     
		      owl.owlCarousel();
		     
		      // Custom Navigation Events
		      $(".next").click(function(){
		        owl.trigger('owl.next');
		      })
		      $(".prev").click(function(){
		        owl.trigger('owl.prev');
		      })
		     
		    });




    	</script>

    	<script type="text/javascript">
		    	$(function(){

			// Instantiate MixItUp:

			$('#Container').mixItUp();

		});
    	</script>
    	<script>
		    		jQuery(function ($) {
		    // fancybox
		    $(".fancybox").fancybox({
		        modal: true, // disable regular nav and close buttons
		        // add buttons helper (requires buttons helper js and css files)
		        helpers: {
		            buttons: {}
		        } 
		    });
		    // filter selector
		    $(".filter").on("click", function () {
		        var $this = $(this);
		        // if we click the active tab, do nothing
		        if ( !$this.hasClass("active") ) {
		            $(".filter").removeClass("active");
		            $this.addClass("active"); // set the active tab
		            // get the data-rel value from selected tab and set as filter
		            var $filter = $this.data("rel"); 
		            // if we select view all, return to initial settings and show all
		            $filter == 'all' ? 
		                $(".fancybox")
		                .attr("data-fancybox-group", "gallery")
		                .not(":visible")
		                .fadeIn() 
		            : // otherwise
		                $(".fancybox")
		                .fadeOut(0)
		                .filter(function () {
		                    // set data-filter value as the data-rel value of selected tab
		                    return $(this).data("filter") == $filter; 
		                })
		                // set data-fancybox-group and show filtered elements
		                .attr("data-fancybox-group", $filter)
		                .fadeIn(1000); 
		        } // if
		    }); // on
		}); // ready
    	</script>
    	<!--texitimonial-->
    	<script>


   $('.quotes').quovolver({
      equalHeight   : true
    });

    	</script>

	</body>
</html>

