<%@ page isErrorPage="true"%>
<html>
<!-- 

A program to check the error in JSP.

copyright (c) sunRays Technologies Indore
@author: Sunil Sahu
@url : www.sunrays.co.in

 -->
 
  <body>
     <h1>Error on your JSP Page!!! <%=exception.getMessage() %></h1><br>
     
     <% exception.printStackTrace();%>
  </body>
</html>
