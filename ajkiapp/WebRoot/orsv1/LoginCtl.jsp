<%@page import="com.WebDev.dto.MarksheetDTO,java.util.Vector"%>


<%
	String id = request.getParameter("userId");
	String pwd = request.getParameter("password");

	//Make jdbc collection

	if (!id.equals("WebDev")) {
		request.setAttribute("error", "Login avedh he");
%>

<jsp:forward page="Login.jsp"></jsp:forward>
<%
	}
	session.setAttribute("loginId", id);
%>

<jsp:forward page="RollNO.jsp"></jsp:forward>

