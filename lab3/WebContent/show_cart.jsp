<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查看购物车</title>
</head>
<body>
	<%
		Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
		if (cart != null && cart.size() > 0) {
	%>
	<h2>查看购物车</h2>
	<table border="1">
		<thead>
			<tr>
				<td>名称</td>
				<td>价格</td>
				<td>功能</td>
			</tr>
		</thead>
		<tbody>
			<%
				Set<String> keySet = cart.keySet();
					Iterator<String> it = keySet.iterator();
					String key;
					Integer value;
					while (it.hasNext()) {
						key = it.next();
						value = cart.get(key);
			%>
			<tr>
				<td><%=key%></td>
				<td><%=value%></td>
				<td><a href="delete_cart.jsp?name=<%=key%>">删除</a></td>
			</tr>
			<%
				}
			%>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
	<%
		}else{
			out.print("购物车为空");
		}
	%>
	<div><a href="history_book.jsp">返回历史图书</a></div>
	<div><a href="computer_book.jsp">返回计算机图书</a></div>
</body>
</html>