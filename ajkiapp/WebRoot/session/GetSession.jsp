<%@page import="java.util.Enumeration"%>
<HTML>
	<BODY>
	
<!-- 

A program to get all session attributes. Use URL 
http://localhost:8080/ajkiapp/session/GetSession.jsp 
to test it 

copyright (c) sunRays Technologies Indore
@author: Sunil Sahu
@url : www.sunrays.co.in

 -->	
		<H1>
			Get Session
		</H1>

		<%
			Enumeration e = session.getAttributeNames();
			while (e.hasMoreElements()) {
				String name = (String) e.nextElement();
				String value = (String) session.getAttribute(name);
		%>
		<%=name%> : <%=value%> 	<BR>

		<%
			}
		%>
	</BODY>
</HTML>
