<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
	<%
        int netbill=0;
    Class.forName("com.mysql.jdbc.Driver");
    String tableno=(String)request.getParameter("tableno");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
    PreparedStatement ps = con.prepareStatement("select * from order1 where tableno=?");
    ps.setString(1,tableno);
    ResultSet rs = ps.executeQuery();
    ResultSet qs=rs;
    %>
	<body>	
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		  <a class="navbar-brand" href="Owner.jsp">BitesToBits</a>
		  <ul class="navbar-nav">
		    <li class="nav-item">
		      <a class="nav-link" href="menu.jsp">Add Item</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="billpaid.jsp">Bill Status</a>
		    </li>
                    <li class="nav-item">
		      <a class="nav-link" href="viewfeedback.jsp">View Feedback</a>
		    </li>
		  </ul>
		</nav>
		<div class="container-fluid" id="a2">
			<div class="row">
				<div id="a1">
						<b><center><h2>TOTAL BILL</h2></center></b>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-8">
				<div class="table-responsive">
                                    <%
                                        if(rs.next()){
                                            rs.previous();
                                    %>
					<table class="table table-hover table-dark">
					    <thead>
					      <tr>
					        <th>#</th>
					        <th>Item Name</th>
					        <th>Quantity</th>
					        <th>Price</th>
					        <th>Total Amount</th>
					      
					      </tr>
					    </thead>
					    <tbody>
					    	<%
                                                    int i;
                                                    i=1;
                        while(rs.next()){
                            String DishName=rs.getString(2);
                               String quantity=rs.getString(3);
                               int price=Integer.parseInt(rs.getString(4));
                               int totalamt=price*Integer.parseInt(quantity);
                                netbill=netbill+totalamt;
                        %>
					      <tr>
                                                  <td><%=i%></td>
					       <td><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b></td>
                            <td><b><%=quantity%></b></td>
                            <td><b><%=price%></b></td>
                            <td><b><%=totalamt%></b></td>
					      </tr>
					       <%  
                                                   i++;
                        }
                        %>
					       
					    </tbody>
					  </table>
					  

				</div>
					<h3 style="margin-left: 30%;"> TOTAL AMOUNT VALUE=<%=netbill%></h3>
                                        <center> <a class="btn btn-success" href="bill?tableno=<%=tableno%>&total=<%=netbill%>">Clear Table</a></center>
				</div>
                                <footer>
			<div class="container-fluid">
				<div class="row">
					
				</div>
			</div>

		</footer>
                                <%
                                    }else{%>
                                    	<h4>
						<center><b>THERE ARE CURRENTLY NO ITEMS IN YOUR BILL</b> </center>
					</h4>
                                
                                    
<%}
                                %>
				<div class="col-md-2"></div>

			</div>
		</div>

		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
