/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import API.dailyWeatherAPI;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DAO.*;
import Model.WeatherForecast;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedList;


/**
 *
 * @author yses9
 */

@WebServlet(name = "WeatherForecast_Servlet", urlPatterns = {"/WeatherForecast_Servlet"})
public class WeatherForecast_Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        dailyWeatherAPI forecastAPI = new dailyWeatherAPI();
        HttpSession session = request.getSession();
        
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy/MM/dd");   
        LocalDate localDate = LocalDate.now();
        LocalDate localDate1 = localDate.plusDays(1);
        LocalDate localDate2 = localDate.plusDays(2);
        LocalDate localDate3 = localDate.plusDays(3);
        LocalDate localDate4 = localDate.plusDays(4);
        LocalDate localDate5 = localDate.plusDays(5);
        LocalDate localDate6 = localDate.plusDays(6);
        
        
        LinkedList<LocalDate> localDatelist = new LinkedList<LocalDate>();
            localDatelist.add(localDate);
            localDatelist.add(localDate1);
            localDatelist.add(localDate2);
            localDatelist.add(localDate3);
            localDatelist.add(localDate4);
            localDatelist.add(localDate5);
            localDatelist.add(localDate6);
        
        response.setContentType("text/html;charset=UTF-8");
        String Location;
        
        Location = (String) session.getAttribute("Location");
        int LocationId = (int) session.getAttribute("LocationID");
        
        LinkedList<WeatherForecast> forecast = new LinkedList<WeatherForecast>();
        
        String Response= forecastAPI.request(Location);
        String[] Result = forecastAPI.Split(Response);

        String City = "" + forecastAPI.getCity(Response);
        String Country = "" + forecastAPI.getCountry(Response);
        
        for (int i = 1; i< Result.length; i++)
        {
            WeatherForecast current = new WeatherForecast
            (forecastAPI.getDate(Result[i]),
            forecastAPI.getTemp(Result[i]),
            forecastAPI.getCloudy(Result[i]),
            forecastAPI.getHumidity(Result[i]),
            forecastAPI.getWindSpeed(Result[i]),
            forecastAPI.getWindDeg(Result[i]),        
            forecastAPI.getDescription(Result[i]));
            forecast.add(current);
        }
        session.setAttribute("forecast", forecast);
        session.setAttribute("City", City);
        session.setAttribute("Country", Country);

        response.sendRedirect("501_weather_forecast.jsp");
    }
}
