<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	.bg{
		background-image: url("tupian/zhubeijing.jpg");
	}
	.ziti{
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
<body class="bg">
<div style="position: relative;left:580px;top:200px;">
<form action="changepasswordServlet" onsubmit="return validate_form(this)" method="post">
<input type="hidden" name="u_id"value="${sessionScope.usersmap.u_id}">
<table>
		<tr class="ziti">
			<td>ID：</td>
			<td>${sessionScope.usersmap.u_id}</td>
			<input type="hidden"id="yuanmima1"value="${sessionScope.usersmap.u_password}">
		</tr>	
		<tr>
			<td class="ziti">原密码:</td>
				<td>
					<input class="input"  
					type="password"  id="mima"
					 onblur="checkyuanPwd(this)">
				</td>
		</tr>
		
				<td class="ziti">新密码:</td>
				<td>
					<input  class="input" type="password" name="u_password"
					 id="xinmima" onblur="checkPwd()">*密码可以包含数字字母6-12位之间
				</td>
				<td>
				</td>
				<tr>
				<td td class="ziti">确认密码:</td>
				<td>
				<input type="password" id="querenxinmima"
					onblur="checkRePwd()">*必须与新密码一致<br>
				</td>
				</tr>
			
	<table style="position:relative;left:120px;top:30px;">
		<input type="submit" value="确认" class="btn"> 
	</table>
	</table>
</form>
</div>
</body>
<script type="text/javascript">
	function checkyuanPwd()
		{
			var pwd=document.getElementById("mima").value;
			var pwd1=document.getElementById("yuanmima1").value;
			if(pwd==pwd1)
				{return true;}
			alert("原密码错误");
			return false;
		}
	function checkPwd()
	{
		var pwd=document.getElementById("xinmima").value;
		var reg=/^[a-zA-Z0-9]{6,12}$/;
		var msg=document.getElementById("querenxinmima");
	if(reg.test(pwd))
		{
			msg.innerHTML="√";
			return true;
		}
	msg.innerHTML="×";
	return false;
}

function checkRePwd()
{
	var pwd=document.getElementById("xinmima").value;
	var rePwd=document.getElementById("querenxinmima").value;
	if(pwd==rePwd)
	{
		alert("密码正确");
		return true;
	}
	alert("密码错误");
	return false;
}


	function validate_form(thisform)
	{
		with(thisform)
		{
			var pwd=document.getElementById("xinmima").value;
			var rePwd=document.getElementById("querenxinmima").value;
			if(pwd!=rePwd)
				{
					alert("新密码不一致");
					return false;
				}
			return true;
		}
	}
</script>
</html>