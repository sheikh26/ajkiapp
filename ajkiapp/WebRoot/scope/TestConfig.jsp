<HTML>
<!-- 

A program to Test Conifg  of a jsp. Use URL 
http://localhost:8080/ajkiapp/scope/TestConfig.jsp
to test it 

copyright (c) sunRays Technologies Indore
@author: Sunil Sahu
@url : www.sunrays.co.in

 -->
	<body>
		<H1>
			Init Paramaters from config(ServletConfig) are
		</H1>
		<BR>
		Org :
		<%=config.getInitParameter("org")%>

	</body>
</html>
