<%@ page contentType="text/html; charset=gb2312"%>
<%
request.setCharacterEncoding("gb2312");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>��¼ҳ��</title>
</head>
<body>
	<h2>��¼��</h2>
	<form action="login_result.jsp" method="post">
		<input type="text" name="username" placeholder="�������û���"><br>
		<br> <input type="password" name="password" placeholder="����������"><br>
		<br> <input type="submit" value="��¼">
	</form>
</body>
</html>