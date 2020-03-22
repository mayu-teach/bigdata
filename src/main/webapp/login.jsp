<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆界面</title>
</head>
<body style="background: url(images/background.jpg)">
<!-- 当前的数据通过POST方法传递！ 在服务器端可以用response.post来获取数据 -->
<!-- 提交表单后，会跳转到LoginServlet类 -->
<form id="form1" name="form1" method="post" action="LoginServlet">
	<h1 align="center">用户登录</h1>
	用户名：<input id="userName" name="userName" type="text" style="width:100%;height:20px;" placeholder="username"><br/>
	密码：<input id="password" type="password" name="password" style="width:100%;height:20px" placeholder="password"><br/>
    <div style="text-align: center">
	   <input type="submit" value="登录" style="float: left;font-size:20px">
	   <input type="reset" value="重置" style="float: right;font-size:20px">
	   <input type="button" value="注册" style="float: right;font-size:20px" onclick="window.location.href='register.jsp'">
	</div>
	${error}
</form>
</body>
</html>