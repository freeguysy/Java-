<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=gb2312"%>
<%
request.setCharacterEncoding("gb2312");
%>
<!DOCTYPE html>
<html>
<head>
<title>插入处理</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=utf-8&serverTimezone=Asia/Shanghai";
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, "root", "123456");
		String sql = "insert into user values(?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, username);
		psmt.setString(2, password);
		int n = psmt.executeUpdate();
		out.print("已经影响的行数:" + n);
		psmt.close();
		conn.close();
	%>
</body>
</html>