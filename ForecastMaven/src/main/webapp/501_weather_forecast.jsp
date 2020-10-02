<%-- 
    Document   : 501_weather_forecast
    Created on : 2020. 8. 25, 오전 11:18:18
    Author     : soyoung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/style.css"/>
        <title>Weather Forecast Page</title>
    </head>
    <body>
        <%       
        String Location = (String) session.getAttribute("Location");
        String CurrentTempt = (String) session.getAttribute("CurrentTempt");
        String City = (String) session.getAttribute("City");
        String Country = (String) session.getAttribute("Country");
        String WindSpeed = (String) session.getAttribute("WindSpeed");
        String Description = (String) session.getAttribute("Description");
        %>
        <div class="content">
            <br><br>
            <div class="header">
                <h1>Weather Forecast</h1>
            </div>
            
            <h2> Currently in <%=City %>, <%=Country%> </h2>
            <h2> <%=Description %> </h2>
            <h2> Temperature <%=CurrentTempt %> </h2>
            <h2> Wind Speed <%=WindSpeed %> </h2>
          
            <div class="sidenav">
                <br><br>
                <a href="index.html">HOME</a>
                <form name="submitForm" method="POST" action="FirstCurrentWeather_Servlet">
                <a HREF="javascript:document.submitForm.submit()">CURRENT WEATHER</a></form>
                <a href="501_weather_forecast.jsp">WEATHER FORECAST</a>
                <a href="601_weather_history.jsp">WEATHER HISTORY</a>
                <a href="901_weather_analysis.jsp">WEATHER ANALYSIS</a>
            </div> 
            
        </div>
    </body>
</html>
