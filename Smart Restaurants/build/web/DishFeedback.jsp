<%-- 
    Document   : DishFeedback
    Created on : Mar 29, 2019, 5:48:12 PM
    Author     : SOM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String DishName=(String)request.getParameter("a");
        String a=(String)request.getParameter("a");
        String price=(String)request.getParameter("price");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insercart">
            <input type="text" name ="quantity" placeholder="quantity"/>
            <input type="hidden" name="dishname" value="<%=DishName%>"/>
            <input type="hidden" name="price" value="<%=price%>"/>
            <input type="Submit" value="Add to cart"/>
        </form>
        <h1><%=DishName%></h1><br>
        <p>This for image</p>
        <h4>Comments</h4>
        <%
     Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");

//    PreparedStatement ps=con.prepareStatement("select * from feedbackDish where dish=?");
//    ps.setString(1,request.getParameter("a"));
//   ResultSet rs= ps.executeQuery();
//        while(rs.next()){
//            String Name=rs.getString(1);
//            String comment=rs.getString(2);
            %>
<!--            <p><h6><b>Name%></b><h6></p>
            <p><comment%></p>-->
        <%
//        }
        %>
   
    </body>
</html>
