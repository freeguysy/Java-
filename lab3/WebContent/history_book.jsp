<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>历史图书</title>
</head>
<body>
	<%
		Map<String, Integer> historyBooks = new HashMap<>();
		historyBooks.put("史记", 88);
		historyBooks.put("活着", 90);
		historyBooks.put("骆驼祥子", 66);
		historyBooks.put("阿凡达", 10);
		historyBooks.put("独立宣言", 1);
	%>
	<h2>历史图书列表</h2>
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
				Set<String> keySet = historyBooks.keySet();
				Iterator<String> it = keySet.iterator();
				String key;
				Integer value;
				while (it.hasNext()) {
					key = it.next();
					value = historyBooks.get(key);
			%>
			<tr>
				<td><%=key%></td>
				<td><%=value%></td>
				<td><a href="add_cart.jsp?name=<%=key%>&prices=<%=value%>&type=history">购买</a></td>
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
	<div><a href="computer_book.jsp">查看计算机图书</a></div>
</body>
</html>