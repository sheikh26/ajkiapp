<!-- 
A program uses Forward Tag.

copyright (c) sunRays Technologies Indore
@author: Sunil Sahu
@url : www.sunrays.co.in

 -->
 <%
System.out.println("This is B JSP " + request.getParameter("param"));
request.setAttribute("B","Value Set By B");
%>
<jsp:forward page="C.jsp"></jsp:forward>