<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="static/js/jquery-3.1.1.min.js"></script>
<title>注册界面</title>
</head>
<body style="background: url(images/background.jpg)">
<form id="form2" method="post" action="">
	<h1 align="center">用户注册</h1>
	编号：<input type="text" id="add_userId" name="userId" value="" style="width:100%;height:20px;" placeholder="userId"><br/>
        账号：<input type="text" id="add_userName" name="userName" value="" style="width:100%;height:20px;" placeholder="username"><br/>
	密码: <input type="password" id="add_password" name="password" value="" style="width:100%;height:20px;" placeholder="password"><br/>
	邮箱：<input type="text" id="add_email" name="email" value="" style="width:100%;height:20px;" placeholder="email"><br/>
	登记时间：<input type="text" id="add_registerTime" name="registerTime" value="" style="width:100%;height:20px;" placeholder="registerTime"><br/>
	<div style="text-align: center">
			<input type="submit" id="submitBtn" style="float: left;font-size:20px" value="注册">
			<input type="reset" style="float: right;font-size:20px" value="重置">
			<input type="button" value="登录" style="float: right;font-size:20px" onclick="window.location.href='login.jsp'">
	</div>
</form>

  <script type="text/javascript">
		$(function(){
			$("#submitBtn").click(function(){
				$.ajax({
				   type: "POST",
				   url: "<%=request.getContextPath() %>/RegisterServlet?oprateType=register",
				   data: {	  
					   "userId":$("#add_userId").val(),
					   "userName":$("#add_userName").val(),
					   "password":$("#add_password").val(),
					   "email":$("#add_email").val(),
				       "registerTime":$("#add_registerTime").val(),
				   },
				   dataType: "json",
				   success: function(data){
				     if(data.code==1){
				    	 $.messager.alert('提示信息','添加用户失败!','info');
				     }else{
				    	 $.messager.alert('提示信息','添加用户成功!','info');
				    	 $('#win').window("close");
				    	 $("#searchBtn").click();
				     }
				   }
				});
			});
		});
	</script>
</body>
</html>
