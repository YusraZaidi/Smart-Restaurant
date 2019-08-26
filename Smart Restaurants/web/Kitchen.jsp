
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String tableno=(String)request.getParameter("tableno");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
    PreparedStatement ps = con.prepareStatement("select * from kitchen");
    ResultSet rs = ps.executeQuery();
    ResultSet qs=rs;
%>
<html lang="en">
<head>
  <title>Kitchen</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
      body{
          background: url(https://4rsmokehouse.com/wp-content/themes/4rivers/library/images/opener_bg_press.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
      }
      #a1{
          color:white;
      }
   </style>
   <script type = "text/JavaScript">
         
            function AutoRefresh( t ) {
               setTimeout("location.reload(true);", t);
            }
      
      </script>
</head>
<body onload = "JavaScript:AutoRefresh(5000);"> 
 
<div class="container">
	<div class="row">
		
	</div>
  <h2 id="a1">Smart Restaurants</h2>
  
  <div class="card-deck">
    <div class="card bg-primary">
      <div class="card-body text-center">
    <h4 class="card-title">Table No. 1</h4>
    <%
                        while(qs.next()){
                            String table=qs.getString(1);
                            String DishName=qs.getString(2);
                               String quantity=qs.getString(3);
                               if(table.equals("1")){
                        %>
                       <ul class="list-group">
  							
  							<li class="list-group-item"><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b>=<b><%=quantity%></b></li>
						</ul>
                        <%    
                            }
                        }
                        %>
                        <form action="deletekitchen">
                        <input type="hidden"  name="table" value="1">
                        <input type="submit" class="btn btn-success" value="Ready">
                    	</form>
    
  </div>
    </div>
    <%
                        qs.first();
                    %>
    <div class="card bg-warning">
      <div class="card-body text-center">
        <h4 class="card-title">Table No. 2</h4>
    <%
                        while(qs.next()){
                            String table=qs.getString(1);
                            String DishName=qs.getString(2);
                               String quantity=qs.getString(3);
                               if(table.equals("2")){
                        %>
                       <ul class="list-group">
  							
  							<li class="list-group-item"><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b>=<b><%=quantity%></b></li>
						</ul>
                        <%    
                            }
                        }
                        %>
                        <form action="deletekitchen">
                        <input type="hidden"  name="table" value="2">
                        <input type="submit" class="btn btn-success" value="Ready">
                    	</form>
      </div>
    </div>
    <%
                        qs.first();
                    %>
    <div class="card bg-success">
      <div class="card-body text-center">
        <h4 class="card-title">Table No. 3</h4>
    <%
                        while(qs.next()){
                            String table=qs.getString(1);
                            String DishName=qs.getString(2);
                               String quantity=qs.getString(3);
                               if(table.equals("3")){
                        %>
                       <ul class="list-group">
  							
  							<li class="list-group-item"><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b>=<b><%=quantity%></b></li>
						</ul>
                        <%    
                            }
                        }
                        %>
                        <form action="deletekitchen">
                        <input type="hidden"  name="table" value="3">
                        <input type="submit" class="btn btn-primary" value="Ready">
                    	</form>
      </div>
    </div>
    <%
                        qs.first();
                    %>
    <div class="card bg-danger">
      <div class="card-body text-center">
        <h4 class="card-title">Table No. 4</h4>
    <%
                        while(qs.next()){
                            String table=qs.getString(1);
                            String DishName=qs.getString(2);
                               String quantity=qs.getString(3);
                               if(table.equals("4")){
                        %>
                       <ul class="list-group">
  							
  							<li class="list-group-item"><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b>=<b><%=quantity%></b></li>
						</ul>
                        <%    
                            }
                        }
                        %>
                        <form action="deletekitchen">
                        <input type="hidden"  name="table" value="4">
                        <input type="submit" class="btn btn-success" value="Ready">
                    	</form>
      </div>
    </div>  
    
  </div>
   <div class="card-deck">
   	<%
                        qs.first();
                    %>
    <div class="card bg-primary">
      <div class="card-body text-center">
        <h4 class="card-title">Table No. 5</h4>
    <%
                        while(qs.next()){
                            String table=qs.getString(1);
                            String DishName=qs.getString(2);
                               String quantity=qs.getString(3);
                               if(table.equals("5")){
                        %>
                       <ul class="list-group">
  							
  							<li class="list-group-item"><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b>=<b><%=quantity%></b></li>
						</ul>
                        <%    
                            }
                        }
                        %>
                        <form action="deletekitchen">
                        <input type="hidden"  name="table" value="5">
                        <input type="submit" class="btn btn-success" value="Ready">
                    	</form>
      </div>
    </div>
    <%
                        qs.first();
                    %>
    <div class="card bg-warning">
      <div class="card-body text-center">
        <h4 class="card-title">Table No. 6</h4>
    <%
                        while(qs.next()){
                            String table=qs.getString(1);
                            String DishName=qs.getString(2);
                               String quantity=qs.getString(3);
                               if(table.equals("6")){
                        %>
                       <ul class="list-group">
  							
  							<li class="list-group-item"><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b>=<b><%=quantity%></b></li>
						</ul>
                        <%    
                            }
                        }
                        %>
                        <form action="deletekitchen">
                        <input type="hidden"  name="table" value="6">
                        <input type="submit" class="btn btn-success" value="Ready">
                    	</form>
      </div>
    </div>
    <%
                        qs.first();
                    %>
    <div class="card bg-success">
      <div class="card-body text-center">
        <h4 class="card-title">Table No. 7</h4>
    <%
                        while(qs.next()){
                            String table=qs.getString(1);
                            String DishName=qs.getString(2);
                               String quantity=qs.getString(3);
                               if(table.equals("7")){
                        %>
                       <ul class="list-group">
  							
  							<li class="list-group-item"><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b>=<b><%=quantity%></b></li>
						</ul>
                        <%    
                            }
                        }
                        %>
                        <form action="deletekitchen">
                        <input type="hidden"  name="table" value="7">
                        <input type="submit" class="btn btn-primary" value="Ready">
                    	</form>
      </div>
    </div>
    <%
                        qs.first();
                    %>
    <div class="card bg-danger">
      <div class="card-body text-center">
        <h4 class="card-title">Table No. 8</h4>
    <%
                        while(qs.next()){
                            String table=qs.getString(1);
                            String DishName=qs.getString(2);
                               String quantity=qs.getString(3);
                               if(table.equals("8")){
                        %>
                       <ul class="list-group">
  							
  							<li class="list-group-item"><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b>=<b><%=quantity%></b></li>
						</ul>
                        <%    
                            }
                        }
                        %>
                        <form action="deletekitchen">
                        <input type="hidden"  name="table" value="8">
                        <input type="submit" class="btn btn-success" value="Ready">
                    	</form>
      </div>
    </div>  
    
  </div>
</div>

</body>
</html>
