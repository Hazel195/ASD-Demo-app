<%-- 
    Document   : 101_register_admin
    Created on : 2020. 9. 7, 오전 7:38:24
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/style.css"/>
        <title>Register New Customer</title>
        <%
        String Email = (String) session.getAttribute("Email");
        String Password = (String) session.getAttribute("Password");
        String Firstname = (String) session.getAttribute("Firstname");
        String Lastname = (String) session.getAttribute("Lastname");
        %>
    </head>
    <body>
        <center>     
          <h1 class="header">Administrator Register</h1><br>
<div class="regbox">
        <form method="POST">
<table>
<tr>
<td><p class="subtitle"><label for="Email">Email </label></p></td>
    <td><p>&nbsp;</p></td>
    <td><p><input type="Email" name="Email" required="True" value=<%= Email%>></p></td>
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
        <td><p><input type="Lastname" name="Lastname" required="True" value=<%= Lastname%>></p></td>
    </tr>
</table>
<p><button type="submit" formaction="Registration_Admin_Servlet" ><h2> Add <h2></button><p> </form>
</div>

    <br><a>Go back to main menu </a>
<a href="index.html"> click here!</a> 
    </center>
    </body>
</html>