<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>计算机图书</title>
</head>
<body>
	<%
		Map<String, Integer> computerBooks = new HashMap<>();
		computerBooks.put("数据结构", 110);
		computerBooks.put("操作系统", 130);
		computerBooks.put("计算机网络", 99);
		computerBooks.put("计算机组成原理", 199);
		computerBooks.put("数据库概论", 120);
	%>
	<h2>计算机图书列表</h2>
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
				Set<String> keySet = computerBooks.keySet();
				Iterator<String> it = keySet.iterator();
				String key;
				Integer value;
				while (it.hasNext()) {
					key = it.next();
					value = computerBooks.get(key);
			%>
			<tr>
				<td><%=key%></td>
				<td><%=value%></td>
				<td><a href="add_cart.jsp?name=<%=key%>&prices=<%=value%>&type=computer">购买</a></td>
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
	<div><a href="show_cart.jsp">查看购物车</a></div>
	<div><a href="history_book.jsp">查看历史图书</a></div>
</body>
</html>