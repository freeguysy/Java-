<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=gb2312"%>
<%
request.setCharacterEncoding("gb2312");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, "root", "123456");
		String sql = "select * from user where username = ? AND password = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, username);
		psmt.setString(2, password);
		ResultSet res = psmt.executeQuery();
		if(res.next()){
			out.print("µÇÂ¼³É¹¦");
		}else{
			out.print("µÇÂ¼Ê§°Ü");
		}
		psmt.close();
		conn.close();
%>
</body>
</html>