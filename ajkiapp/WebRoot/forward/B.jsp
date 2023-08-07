<!-- 
A program uses Forward Tag.

copyright (c) WebDev Technologies Indore
@author: Arif Sheikh
@url : www.WebDev.co.in

 -->
 <%
System.out.println("This is B JSP " + request.getParameter("param"));
request.setAttribute("B","Value Set By B");
%>
<jsp:forward page="C.jsp"></jsp:forward>