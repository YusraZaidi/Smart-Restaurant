<%-- 
    Document   : billpaid
    Created on : Apr 1, 2019, 10:42:44 PM
    Author     : SOM
--%>


<%-- 
    Document   : viewbill
    Created on : Apr 1, 2019, 9:15:00 PM
    Author     : SOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Smart Restaurants</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <style>
                    .container{
                        margin-top:10%;
                    }
                    form{
                        margin-top: 50%;
                    }
                     body{
                        color:white;
          background: url(a2.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  color:white;
      
                    }
                </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		  <a class="navbar-brand" href="Owner.jsp">Smart Restaurant</a>
		  <ul class="navbar-nav">
		    <li class="nav-item">
		      <a class="nav-link" href="menu.jsp">Add Item</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="viewbill.jsp">View Bill</a>
		    </li>
                    <li class="nav-item">
		      <a class="nav-link" href="viewfeedback.jsp">View Feedback</a>
		    </li>
		  </ul>
		</nav>
<div class="container">
  
  
      <div class="row">
          <div class="col-md-5"></div>
          
          <div class="col-md-3">
              <form action="deleteorder">
                  <div class="form-group">
                      <center><h2>Bill Status</h2></center>
      <input type="number" class="form-control" id="email" placeholder="Enter Table No." name="tableno">
    </div>
                  <center><button type="submit" class="btn btn-block btn-primary">Bill Paid</button></center>
  </form>
          </div>
          <div class="col-md-4"></div>
      </div>
    
</div>

</body>
</html>
