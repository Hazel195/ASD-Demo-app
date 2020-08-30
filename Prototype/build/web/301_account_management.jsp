<%-- 
    Document   : edit
    Created on : 2020. 8. 31, 오전 1:10:55
    Author     : hazel
--%>

<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/style.css"/>
        <title>Edit Page</title>
    </head>
    <body>
        <%
            User user = (User)session.getAttribute("user");
            String updated = (String)session.getAttribute("updated");
        %>
       <center>     
          
          
        <h1 class="header" align="center">Edit User Account<span><%=(updated != null? updated : "")%></span></h1>
        
        <div class="regbox"><br>
        <form method="post" action="EditServlet">
            <table>
                <tr><td>Confirm Your Current User ID</td><td><input type="text"  name="userId" required="true" value="${user.userId}"></td></tr><tr><td></td></tr><tr></tr>
                <tr><td>First Name:</td><td><input type="text"  name="name" required="true" value="${user.firstname}"></td></tr>
                <tr><td>Last Name:</td><td><input type="text"  name="name" required="true" value="${user.lastname}"></td></tr>
                <tr><td>Email:</td><td><input type="text"  name="email" required="true" value="${user.email}"></td></tr>
                <tr><td>Password:</td><td><input type="password"  name="password" required="true" value="${user.password}"></td></tr>
                <tr><td>Location:</td><td><input type="text"  name="address" required="true" value="${user.location}"></td></tr>
                
                
                    </td></tr>
        <tr><td></td><td><input class="in_btn" type="submit" value="Update"></td></tr>
            </table>
        </form><br>
        </div>
                    <a href="index.html" >Main page</a>  
    </body>
</html>
