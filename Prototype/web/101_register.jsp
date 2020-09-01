<%-- 
    Document   : 201_add_product
    Created on : Jul 2, 2020, 2:27:41 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/style.css"/>
        <title>Register New Customer</title>
    </head>
    <body>
<%
        String Email = (String) session.getAttribute("Email");
        String Password = (String) session.getAttribute("Password");
        String Firstname = (String) session.getAttribute("Firstname");
        String Lastname = (String) session.getAttribute("Lastname");
        String State = (String) session.getAttribute("State");
        int LocationID = (Integer) session.getAttribute("LocationID");
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
          <h1 class="header">Register</h1><br><br>
          <div class="regbox"><br>
        <form method="POST">
<table>
<tr>
<td><p class="subtitle"><label for="Email">Email </label></p></td>
    <td><p>&nbsp;</p></td>
    <td><p><input type="Email" name="Email"required="True" value=<%= Email%>></p></td>
</tr>
<tr>
<tr>
<td><p class="subtitle"><label for="Password">Password </label></p></td>
    <td><p>&nbsp;</p></td>
    <td><p><input type="Password" name="Password"required="True" value=<%= Password%>></p></td>
</tr>
<tr>
<tr>
<td><p class="subtitle"><label for="Firstname">First Name </label></p></td>
    <td><p>&nbsp;</p></td>
    <td><p><input type="Firstname" name="Firstname"required="True" value=<%= Firstname%>></p></td>
</tr>
<tr>
	<td><p class="subtitle"><label for="Lastname">Last Name </label></p></td>
    <td>&nbsp;</td>
    <td><p><input type="Lastname" name="Lastname"required="True" value=<%= Lastname%>></p></td>
</tr>
<tr>
<td><p hidden><input type="LocationID" name="LocationID" Required ="True" value=<%= LocationID%>></p></td>
</tr>
<tr>
    <td><p class="subtitle"><label for="State">State </label></p></td>
    <td>&nbsp;</td> 
    <td><p><input type="State" name="State" ReadOnly ="True" value=<%= State.trim()%>></p></td>
    <td>&nbsp;</td> 
    <td><button class="button" type="submit" formaction="ListLocation_Servlet"> Select </td>             
</tr>
</table><br>
<p><button class="button" type="submit" formaction="Registration_Servlet" ><h2> Register <h2></button><p> </form><br>
</div>
   
                    
    <br><a>Go back to main menu </a>
<a href="index.html"> click here!</a> 
    </center>
    
    </body>
</html>