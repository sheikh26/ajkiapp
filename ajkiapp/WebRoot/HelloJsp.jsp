<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<!-- 
A program to print Hello 5 times.
copyright (c) sunRays Technologies Indore
@author: Sunil Sahu
@url : www.sunrays.co.in

 -->
<BODY>

<%

String strName = request.getParameter("name");

for(int i=0; i<5 ;i++) {
%>

<H1> <%= i %>  Hello JSP - <%= strName %>  <%=request.getParameter("surname")%></H1> 

<%
}
%>

</BODY>
</HTML>
