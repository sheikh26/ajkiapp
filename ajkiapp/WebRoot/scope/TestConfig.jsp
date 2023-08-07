<HTML>
<!-- 

A program to Test Conifg  of a jsp. Use URL 
http://localhost:8080/ajkiapp/scope/TestConfig.jsp
to test it 

copyright (c) WebDev Technologies Indore
@author: Arif Sheikh
@url : www.WebDev.co.in

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
