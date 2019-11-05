<%-- 
    Document   : viewfeedback
    Created on : Apr 24, 2019, 12:38:09 AM
    Author     : SOM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
    PreparedStatement ps=con.prepareStatement("select * from feedback");
   ResultSet rs= ps.executeQuery();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View Feedback</h1>
        <%
                        while(rs.next()){
                            String name=rs.getString(1);
                            String message=rs.getString(2);
                            %>
                            <h4><%=name%></h4>
                            <h3><%=message%></h3>
        
        <%
                        }
                        %>
    </body>
</html>
