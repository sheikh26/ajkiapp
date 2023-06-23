<html>
<!-- 

A program uses Forward Tag. 

copyright (c) sunRays Technologies Indore
@author: Sunil Sahu
@url : www.sunrays.co.in

 -->
 	<body>
		This is Page C
		<br>
		<h2>
			Parameter Values
		</h2>
		param :
		<%=request.getParameter("param")%>
		<h2>
			Attribute Values
		</h2>
		Set By A:
		<%=request.getAttribute("A")%>
		<br>
		Set By B:
		<%=request.getAttribute("B")%>

	</body>
</html>
