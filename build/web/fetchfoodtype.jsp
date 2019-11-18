<%-- 
    Document   : fetchstarters
    Created on : Mar 29, 2019, 4:39:25 PM
    Author     : SOM
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
    String a=(String)request.getParameter("a");
    PreparedStatement ps=con.prepareStatement("select * from menu where dishtype=?");
    ps.setString(1,request.getParameter("a"));
   ResultSet rs= ps.executeQuery();%>

<html>
	<head>
		<title>BILL</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- jQuery library -->
		
		<!-- Latest compiled JavaScript -->
		
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<style>
		
			#a1{				
				background-repeat: no-repeat;
				background-image: url("https://cdn.pixabay.com/photo/2015/11/08/12/24/bokeh-1033539__340.jpg"); 
	  			background-color: black;
	  			height: 300px;
	  			width: 100%;
	  			position:fixed;
	  		}
			h2{
			
				color:white;
				font-size:4.5em;
				position: relative;
	    		top: 149px;
	    		 font-family: "Times New Roman", Times, serif;
			}
			.col-md-2{
				background-color: white;
			}
			.col-md-2,.col-md-8{
				margin-top:350px;
				padding:0;
			}
			footer{
					background-color: black;
	  			height: 100px;
	  			width: 100%;
	  			margin-top: 7%;
			}
		</style>
	</head>
	<body>	
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		  <a class="navbar-brand" href="Customer.jsp">Smart Restaurant</a>
		  <ul class="navbar-nav">
		    <li class="nav-item">
		      <a class="nav-link" href="fetchmenu.jsp">Menu</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="viewcart.jsp">Cart</a>
		    </li>
		  </ul>
		</nav>
		<div class="container-fluid" id="a2">
			<div class="row">
				<div id="a1">
						<b><center><h2><%=a%></h2></center></b>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-8">
				<div class="table-responsive">
                                   
					<table class="table table-hover table-dark">
					    <thead>
					      <tr>
					        <th>#</th>
					        <th>Dish Name</th>
					        <th>Quantity</th>
					        <th>Price</th>
					        <th>Form</th>
					      
					      </tr>
					    </thead>
					     <%
                                                 int i=1;
                        while(rs.next()){
                            String DishName=rs.getString(1);
                               String price=rs.getString(3);%>
                       
                        <tr>
                            <td><b><%=i%></b></td>
                            <td><b><%=DishName%></a></b></td>
                            <td><b>1</b></td>
                            <td><b><%=price%></b></td>
                            <td>
                                 <form action="insercart">
            <input type="text" name ="quantity" placeholder="Quantity"/>
            <input type="hidden" name="dishname" value="<%=DishName%>"/>
            <input type="hidden" name="price" value="<%=price%>"/>
            <input type="Submit" class="btn btn-success" value="Add to cart"/>
        </form>
                            </td>
                        </tr>
                        <%    
                            i++;
                        }
                        %>
					    </tbody>
					  </table>
					  

				
                                
                                
				<div class="col-md-2"></div>

			</div>
		</div>

		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>

