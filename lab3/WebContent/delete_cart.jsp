<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
		String name = request.getParameter("name");
		if (name != null) {
			cart.remove(name);
		}
		response.sendRedirect("show_cart.jsp");
	%>
</body>
</html>