<%-- 
    Document   : 301_account_management
    Created on : 2020. 9. 13, 오후 6:23:32
    Author     : soyoung
--%>
<%@page import="DAO.DBManager"%>
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
            DBManager manager = (DBManager) session.getAttribute("manager");
        %>
       <div class="sidenav">
            <br><br>
            <a href="/Prototype">HOME</a>
            <form name="submitForm" method="POST" action="CurrentWeather_Servlet">
            <input type="hidden" name="param1" value="param1Value">
            <a HREF="javascript:document.submitForm.submit()">CURRENT WEATHER</a></form>
            <a href="501_weather_forecast.jsp">WEATHER FORECAST</a>
            <a href="601_weather_history.jsp">WEATHER HISTORY</a>
            <a href="901_weather_analysis.jsp">WEATHER ANALYSIS</a>
            <a href="301_account_management.jsp">ACCOUNT MANAGEMENT</a>
        </div>
                <center> 
                    <div class="content"><br><br>
           <div class="header"> <h1>Edit User Account<span><%=(updated != null? updated : "")%></span></h1></div><br>
           <div class="regbox"><br><br>
        <form method="post" action="EditAccount">
            <table>
                <tr><td>User ID</td><td><input type="text"  name="userId" required="true" value="${user.userId}"></td></tr><tr><td></td></tr><tr></tr>
                <tr><td>First Name:</td><td><input type="text"  name="firstname" required="true" value="${user.firstname}"></td></tr>
                <tr><td>Last Name:</td><td><input type="text"  name="lastname" required="true" value="${user.lastname}"></td></tr>
                <tr><td>Email:</td><td><input type="text"  name="email" required="true" value="${user.email}"></td></tr>
                <tr><td>Password:</td><td><input type="password"  name="password" required="true" value="${user.user_password}"></td></tr>
                <tr><td>Location:</td><td><input type="text"  name="location" required="true" value="${user.locationId}"></td></tr>
                </td></tr>
                <tr><td></td><td><input class="in_btn" type="submit" value="Update"></td></tr>
            </table>
        </form><br>
        </div><br>
                    <a href="main.jsp" >Main page</a> 
       </center> </div> 
        
    </body>
</html>