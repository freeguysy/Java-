<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加购物车</title>
</head>
<body>
<%
String name = request.getParameter("name");
String prices = request.getParameter("prices");
String type = request.getParameter("type");
if(name != null && prices != null){
	//获取cart属性并类型转换
	Map<String,Integer> cart = (Map<String,Integer>)session.getAttribute("cart");
	if(cart == null){
		//第一次添加购物车初始化
		cart = new HashMap<>();
		session.setAttribute("cart", cart);
	}else{
		cart.put(name, Integer.parseInt(prices));
	}
}
if("history".equals(type)){
	//重定向到目标页面
	response.sendRedirect("history_book.jsp");
}else{
	response.sendRedirect("computer_book.jsp");
}
%>
</body>
</html>