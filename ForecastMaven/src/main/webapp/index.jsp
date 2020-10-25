<%@page import="DAO.DBManager"%>
<%@page import="Model.User"%>
<!DOCTYPE html>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/newcss.css"/>
<style>
        body {
            background-size: 100%;
            background-image: url("img/main_bg.png");
            
            background-repeat: no-repeat;
        }
    </style>
<title>Index</title>
</head>
<body>
    <%
            User user = (User)session.getAttribute("customer");
            DBManager manager = (DBManager)session.getAttribute("manager"); 
            String email = request.getParameter("Email");
            String password = request.getParameter("Password");
    %>
        <form action="IndexLoginServlet" method="POST">
            <button type="submit" class="login"><img src="img/login.png" width="110"></button>
        </form>   
       
    
        <form action="IndexRegister_Servlet" method="POST">
            <button type="submit" class="register"><img src="img/register.png" width="120"></button>
        </form>
        
        
         <form name="CurrentWeather" method="POST" action="FirstCurrentWeather_Servlet">
    <a class="current_weather" HREF="javascript:document.CurrentWeather.submit()"><img src="img/current_weather.png" width="180"></a></form>
    
    <form name="WeatherForecast" method="POST" action="FirstWeatherForecast_Servlet">
    <a class="weather_forecast" HREF="javascript:document.WeatherForecast.submit()"><img src="img/weather_forecast.png" width="180"></a></form>
    
    
    
    <form name="WeatherHistory" method="POST" action="FirstWeatherHistory_Servlet">
    <a class="weather_history" HREF="javascript:document.WeatherHistory.submit()"><img src="img/weather_history.png" width="180"></a></form>
    
    
    <form name="WeatherAnalysis" method="POST" action="WeatherAnalysis_Servlet">
    <a class="weather_analysis" HREF="javascript:document.WeatherAnalysis.submit()"><img src="img/weather_analysis.png" width="180"></a></form>
    
    
    <a class="wind_speed_map" href="1111_WindSpeedMap.jsp"><img src="img/wind_speed_map.png" width="185"></a>    
    </body>
</html>
