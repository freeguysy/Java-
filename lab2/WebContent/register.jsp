<%@ page contentType="text/html; charset=gb2312"%>
<%
request.setCharacterEncoding("gb2312");
%>
<!DOCTYPE html>
<html>
<head>
<title>ע��ҳ��</title>
<script type="text/javascript">
function check() {
	if(registerform.username.value == ""){
		alert("�û�������Ϊ��");
		return false;
	}
	else if(registerform.password.value == ""){
		alert("���벻��Ϊ��");
		return false;
	}
	return true;
}
</script>
</head>
<body>
	<h2>ע���</h2>
	<form action="register_result.jsp" method="post" name="registerform"  onsubmit="return check()">
		<input type="text" name="username" placeholder="�������û���"><br>
		<br> <input type="password" name="password" placeholder="����������"><br>
		<br> <input type="submit" value="ע��">
	</form>
</body>
</html>