<%-- 
    Document   : Customer.jsp
    Created on : Mar 27, 2019, 10:03:04 PM
    Author     : SOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String table=(String)request.getSession().getAttribute("tableNo");
%>
<!DOCTYPE html>
<html>
<head>
	<title>Smart Restaurant</title>
	<!-- Latest compiled and minified CSS --><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="page.css">

		<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<div class="wrapper">
		<div class="container-fluid">
			<div class="header" id="myheader">

				 
				<div class="logo">
						<a href="#logo" >   
                                                        <h4><p>Smart Restaurant</p></h4>

						</a>
				 		
					</div>
				<div class="topnav nav" id="myTopnav">
					<a href="fetchmenu.jsp" >MENU</a>
                                        <a href="tablebill.jsp">TOTAL BILL</a>
				 	<a href="givefeedback.jsp">FEEDBACK</a>
				 	<a href="#d3">CONTACT</a>
				 	
				</div>
				<div class="cart" >
					<a href="viewcart.jsp" style="color: #90887c; ">CART <i class='fas fa-shopping-cart ' style='font-size:14px;color: #ae8648;'></i></a>

				</div>

					<a href="javascript:void(0);" class="centerlogo" onclick="myFunction()">
				  		<img src=" " >
				  	</a>
				  	<a href="javascript:void(0);" class="icon" onclick="myFunction()">
 				  		 <i class="fa fa-bars" style='font-size:24px;color: #FFF8DC;'></i>
				  	</a>
					<a href="#cart" class="carticon" onclick="myFunction()">
 				  		 <i class="fas fa-shopping-cart " style='font-size:24px ;color:#FFF8DC;'></i>
				  	</a>
				
			</div>
			<div class="row  " style="background-color: #000;">
				<video autoplay muted  loop id="myVideo" style="width: 100%;height:100%; ">
 					 <source src="restaurant_vedio.mp4" type="video/mp4">
 						 Your browser does not support HTML5 video.
				</video>
				<div class="content">
					<h1>HOT BRISKET NOW</h1>
					<hr>
					<H3>18 YEARS TO MASTER. YOURS TO SAVOR.</H3>
					<a href="fetchmenu.jsp"><button>SHOW MENU</button></a>
				</div>
			</div>
			<div class="footer" id="d3">
				<span >&copy; 2019 Smart Restaurant</span>
					<ul class="right">
						<li>
							<a href=""><i class="fa fa-facebook-square" style="font-size:24px"></i>
							</a>
						</li>
						<li>
							<a href=""><i class="fa fa-instagram" style="font-size:24px"></i>
							</a>
						</li>
						<li>
							<a href=""><i class="fa fa-linkedin" style="font-size:24px"></i>
							</a>
						</li>
						<li>
							<a href=""><i class="fa fa-pinterest-p" style="font-size:24px"></i>
							</a>
						</li>
						<li>
							<a href=""><i class="fa fa-twitter" style="font-size:24px"></i>
							</a>
						</li>
					</ul>
				
			</div>
		</div>
	</div>
	<script src="welcome.js">
            </script>
</body>
</html>
