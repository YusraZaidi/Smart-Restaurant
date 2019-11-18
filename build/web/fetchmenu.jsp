<%-- 
    Document   : fetchmenu
    Created on : Mar 29, 2019, 4:35:59 PM
    Author     : SOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String val=(String)request.getSession().getAttribute("tableNo");
%>


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
		<link rel="stylesheet" type="text/css" href="fetchmenutype.css">

		<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<div class="wrapper">
		<div class="container-fluid">
			<div class="header" id="myheader">

				 
				<div class="logo">
						<a href="Customer.jsp" >
							<img src="">
							<p>SMART RESTAURANT</p>

						</a>
				 		
					</div>
				<div class="topnav nav" id="myTopnav">
					<a href="fetchmenu.jsp" >MENU</a>
                                        <a href="tablebill.jsp">TOTAL BILL</a>
				 	<a href="givefeedback.jsp">FEEDBACK</a>
				 	<a href="#d3">CONTACT</a>
				 	
				</div>
				<div class="cart" >
					<a href="#cart" style="color: #90887c; ">CART <i class='fas fa-shopping-cart ' style='font-size:14px;color: #ae8648;'></i></a>

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
			<div class="bgimg ">
					<img src="res2.jpg" alt="Snow" style="width:100%; height: 500px;">
				<div class="content" style="color:white; text-shadow: 2px 2px 5px white;letter-spacing: .5em;">
					<h1>MENU</h1>
					<hr>
				</div>
			</div>	
			<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="fmt starters">
								<a href="fetchfoodtype.jsp?a=Starters">STARTERS</a>
								<div class="bg" style="transform: translate(0px, 0px) scale(1, 1); opacity: 0;"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="fmt maincourse">
								<a  href="fetchfoodtype.jsp?a=Maincourse">MAIN COURSE</a>
								<div class="bg" style="transform: translate(0px, 0px) scale(1, 1); opacity: 0;"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="fmt desserts">
								<a href="fetchfoodtype.jsp?a=Dessert">DESSERTS</a>
								<div class="bg" style="transform: translate(0px, 0px) scale(1, 1); opacity: 0;"></div>
							</div>
						</div>
					</div>
				</div>
				
			



			<div class="footer">
				<span >&copy; 2019 company name</span>
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
	<script src="D:\frontend\welcome.js">
            </script>
</body>
</html>

