<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Jsp实验2</title>

</head>
<body>

	<form onsubmit="return check()" action="loginCL.jsp" method="POST" name=form>
	<h2>登录界面</h2>
    用户名：<input type="text" name="username" required><br />
    密码：<input type="password" name="password" required><br />

    <input type="submit" value="登录">
    <input type="reset" value="重置">
	</form>
	<%=(String)request.getAttribute("usertxt") %>
</body>
	
</html>