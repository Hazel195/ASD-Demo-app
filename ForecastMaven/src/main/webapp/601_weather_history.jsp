<%-- 
    Document   : 601_weather_history
    Created on : 2020. 8. 25, 오전 11:18:31
    Author     : soyoung
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="DAO.DBManager"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/style.css"/>
        <title class="title">Weather History</title>
    </head>
    <Body>
    <table style="width: 70%" class="fl-table">
            

<%-- 
Search Servlet
--%>
<%       
        String Region = (String) session.getAttribute("Region");
%>
    <form method="POST" >    
    <p class="subtitle">Region</p>
    <p hidden><input type="text" name="Redirect" value="601_weather_history.jsp"></p>
    <p><input type="text" id="Region" name="Region" Required ="True" readonly="True" value=<%=(Region != null ? Region : "Select")%>>
    <button type="submit" formaction="ListLocation_Servlet"> Select  </button>
    <p hidden><input type="text" name="Redirect" value="601_weather_history.jsp"></p>
    <p>&nbsp;</p>
    <button onclick="clear()">Clear Text</button></form>

    <form id="SubmitFormAll" method ="POST" action="FirstWeatherHistory_Servlet"></form>
    <form id="SubmitForm" method ="POST" action="WeatherHistory_Servlet">
    <p hidden><input type="text" id="Region" name="Region" value=<%=(Region != null ? Region : "Select Your Location")%>><P>
    </form>
    <input type="button" onclick="SubmitSearch()" value="Search">

        <tr>
            <th class="subtitle">Region</th>
            <th class="subtitle">Date</th>
            <th class="subtitle">Time</th>
            <th class="subtitle">Temperature</th>
            <th class="subtitle">Humidity</th>
            <th class="subtitle">Wind Speed</th>
            <th class="subtitle">Wind Direction</th>
            <th class="subtitle">Cloudiness</th>
            <th class="subtitle">Description</th>
        </tr> 
        
        <%       
        User user = (User)session.getAttribute("user");
        LinkedList List  = (LinkedList) session.getAttribute("ListHistory");
        for(int i =0; i < List.size(); i = i + 9)
        {
        %> 
          <tr>
<%-- 
List Servlet
--%>
              <td>
                  <input class="subtitle" readonly="True" type="text" name="Region" value ="<%= List.get(i).toString().trim()  %>">
              </td>
              <td>
                  <input class="subtitle" readonly="True" type="text" name="Date" value ="<%= List.get(i+1).toString().trim()  %>">
              </td>
              <td>
                  <input class="subtitle" readonly="True" type="text" name="Time" value ="<%= List.get(i+2).toString().trim()  %>">
              </td>
              <td>
                  <input class="subtitle" readonly="True" type="text" name="Temperature" value ="<%= List.get(i+3).toString().trim()  %>">
              </td>
              <td>
                  <input class="subtitle" readonly="True" type="text" name="Humidity" value ="<%= List.get(i+4).toString().trim()  %>">
              </td>  
              <td>
                  <input class="subtitle" readonly="True" type="text" name="Wind speed" value ="<%= List.get(i+5).toString().trim()  %>">
              </td>
              <td>
                  <input class="subtitle" readonly="True" type="text" name="Wind direction" value ="<%= List.get(i+6).toString().trim()  %>">
              </td>
              <td>
                  <input class="subtitle" readonly="True" type="text" name="Cloudy" value ="<%= List.get(i+7).toString().trim()  %> %">
              </td>
              <td>
                  <input class="subtitle" readonly="True" type="text" name="danger level" value ="<%= List.get(i+8).toString().trim()  %>">
              </td>  
             
        <%         
           }
        %> 
          </tr>
      </table>
          
<% if(user == null)
{%>
<form action="index.jsp" method="POST">
<%}
else{%>
<form action="main.jsp" method="POST">
<%}
%>
<p><button type="submit" class ="btn"> Back </button><p>
</form>
   
    
    </body>
<script>
function clear() {
  <%       
        session.setAttribute("Region", "ALL");
  %>
}
function SubmitSearch() {
      if (document.getElementById("Region").value === "Select") 
      {
           alert("Select a location please");
      }
      else if (document.getElementById("Region").value === "ALL") 
      {
          document.getElementById("SubmitFormAll").submit();
      }
      else
      {
          document.getElementById("SubmitForm").submit();
      }
          
}
</script>    
</html>
