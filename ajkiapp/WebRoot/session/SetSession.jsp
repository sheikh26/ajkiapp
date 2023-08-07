<HTML>
	<BODY>
	
	<!-- 

A program to set a session attributes. Use URL http://localhost:8080/ajkiapp/session/SetSession.jsp?key=id&value=Red 
to call this page and set a session attribute

copyright (c) WebDev Technologies Indore
@author: Arif Sheikh
@url : www.WebDev.co.in

 -->
 	
		<H1>Set Session</H1>

		<%
			String k = request.getParameter("key");
			String v = request.getParameter("value");

			session.setAttribute(k, v);
		%>

		Congartulation !! Session Attribute is set sucessfully!! 
		
	</BODY>
</HTML>
