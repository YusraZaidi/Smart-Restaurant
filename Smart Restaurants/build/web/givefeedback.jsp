 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Menu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<style>
    body{
          background: url(https://4rsmokehouse.com/wp-content/themes/4rivers/library/images/menu_bg_salads_sides_sodas.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  color:white;
      }
      .container{
          margin-top: 10%;
      }
</style>
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
<div class="container">
  <h2>Give Feedback</h2>
  <form class="form-horizontal" action="addfeedback">
    <div class="form-group">
      <label class="control-label col-sm-2" for="name">Name</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="Name" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="text"></label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="text" placeholder="Share Your Views" name="text">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success btn-lg">Submit</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>


