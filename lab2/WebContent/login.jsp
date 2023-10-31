<%@ page contentType="text/html; charset=gb2312"%>
<%
request.setCharacterEncoding("gb2312");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>µÇÂ¼Ò³Ãæ</title>
</head>
<body>
	<h2>µÇÂ¼±íµ¥</h2>
	<form action="login_result.jsp" method="post">
		<input type="text" name="username" placeholder="ÇëÊäÈëÓÃ»§Ãû"><br>
		<br> <input type="password" name="password" placeholder="ÇëÊäÈëÃÜÂë"><br>
		<br> <input type="submit" value="µÇÂ¼">
	</form>
</body>
</html>