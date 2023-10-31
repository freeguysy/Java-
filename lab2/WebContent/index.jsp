<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>查询数据</title>
</head>
<body>
	<h2>显示所有用户信息</h2>
	<table border="1">
		<tr>
			<td>用户名:</td>
			<td>密 码:</td>
		</tr>

		<%
			String driver = "com.mysql.cj.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "root", "123456");
			Statement stmt = conn.createStatement();
			String sql = "select * from user";
			ResultSet res = stmt.executeQuery(sql);
			while (res.next()) {
		%>
		<tr>
			<td><%=res.getString("username")%></td>
			<td><%=res.getString("password")%></td>
		</tr>
		<%
			}
			res.close();
			stmt.close();
			conn.close();
		%>

	</table>
</body>
</html>