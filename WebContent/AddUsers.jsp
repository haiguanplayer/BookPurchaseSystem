<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.bg{
		background-image: url("tupian/biaoti.jpg");
	}
	#ziti{
		font-size:25px;
		height:45px;
		font-weight:bold;
	}
	.btn{	
		width:90px;
		height:30px;
		font-size:20px;	
	}
</style>
</head>
<body class="bg" id="ziti">
<form action="AddUsersServlet" method="post">
<div style="position:absolute;top:10%;left:45%;">采购员账户注册</div>
<div style="position:absolute;top:30%;left:40%;">
	用户名:<input type="text" name="U_ID" id="U_ID"
	onblur="checkName()" onfocus="focusName(this)">*<br>
	<td>
		<div id="name_msg">用户名必须为9位</div>
	</td>
	密码 :<input type="password" name="U_password" id="U_password"
	onfocus="focusPwd(this)" onblur="checkPwd()">*<br>
	<td>
		<div id="pwd_msg">密码可以包含数字字母6-12位之间</div>
	</td>
	确认密码:<input type="password" id="re_pwd"
	onblur="checkRePwd()"><br>
	<td>
		<div id="re_pwd_msg">*必须与密码一致</div>
	</td>
	性别:<input type="radio" name=U_sex value="男" checked="checked">男
		<input type="radio" name="U_sex" value="女">女<br>
	<input type="submit" value="保存" class="btn"style="position:absolute;left:35%;">
</div>
</form>
</body>
<script type="text/javascript">
	function checkName()
	{
		//获取id 为 tea_name的控件
		var name=document.getElementById("U_ID");
		//获取表单控件中value属性的值
		var n=name.value;
		//获取显示信息的div控件
		var msg=document.getElementById("name_msg");
		if(n.length==9)
		{
			msg.innerHTML="用户名可以使用";
			msg.className="success";
			return true;
		}
		msg.innerHTML="用户名输入有误！";
		msg.className="error";
		return false;
	}
	
	function focusName(obj)
	{
		obj.select();
		var msg=document.getElementById("name_msg");
		msg.innerHTML="用户名必须为9位";
		msg.className="";
		//让控件中的内容高亮显示，全选
	}
	function focusPwd(obj)
	{
		obj.select();
		//仔细看清楚 id 的内容
		var msg=document.getElementById("");
		msg.innerHTML="密码可以包含数字字母6-12位之间";
		msg.className="";
	}
	function checkPwd()
	{
		var pwd=document.getElementById("U_password").value;
		var reg=/^[a-zA-Z0-9]{6,12}$/;
		var msg=document.getElementById("pwd_msg");
		if(reg.test(pwd))
		{
			msg.innerHTML="√";
			msg.className="success";
			return true;
		}
		msg.innerHTML="×";
		msg.className="error";
		return false;
	}
	
	function checkRePwd()
	{
		var pwd=document.getElementById("U_password").value;
		var rePwd=document.getElementById("re_pwd").value;
		if(pwd==rePwd)
		{
			alert("密码正确");
			return true;
		}
		alert("密码错误");
		return false;
	}
</script>
</html>