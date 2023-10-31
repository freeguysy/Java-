<%@ page contentType="text/html; charset=gb2312"%>
<%
request.setCharacterEncoding("gb2312");
%>
<!DOCTYPE html>
<html>
<head>
<title>注册页面</title>
<script type="text/javascript">
function check() {
	if(registerform.username.value == ""){
		alert("用户名不能为空");
		return false;
	}
	else if(registerform.password.value == ""){
		alert("密码不能为空");
		return false;
	}
	return true;
}
</script>
</head>
<body>
	<h2>注册表单</h2>
	<form action="register_result.jsp" method="post" name="registerform"  onsubmit="return check()">
		<input type="text" name="username" placeholder="请输入用户名"><br>
		<br> <input type="password" name="password" placeholder="请输入密码"><br>
		<br> <input type="submit" value="注册">
	</form>
</body>
</html>