<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	html{    
    width: 100%;    
    height: 100%;    
    overflow: hidden;    
    font-style: sans-serif;    
	}    
	body{    
	    width: 100%;    
	    height: 100%;    
	    font-family: 'Open Sans',sans-serif;    
	    margin: 0;    
	    background-image: url("tupian/biaoti.jpg");
	    
	}    
	#login{    
	    position: absolute;    
	    top: 50%;    
	    left:50%;    
	    margin: -150px 0 0 -150px;    
	    width: 300px;    
	    height: 300px;    
	}
	#login h1{    
	    color: #fff;    
	    text-shadow:0 0 10px;    
	    letter-spacing: 1px;    
	    text-align: center;    
	}    
	h1{    
	    font-size: 2em;    
	    margin: 0.67em 0;    
	}    
	input{    
	    width: 278px;    
	    height: 18px;    
	    margin-bottom: 10px;    
	    outline: none;    
	    padding: 10px;    
	    font-size: 13px;    
	    color: #fff;    
	    text-shadow:1px 1px 1px;    
	    border-top: 1px solid #312E3D;    
	    border-left: 1px solid #312E3D;    
	    border-right: 1px solid #312E3D;    
	    border-bottom: 1px solid #56536A;    
	    border-radius: 4px;    
	    background-color: #2D2D3F;    
	}    
	.but{    
	    width: 100px;    
	    min-height: 20px;    
	    display: block;    
	    background-color: #4a77d4;    
	    border: 1px solid #3762bc;    
	    color: #fff;    
	    padding: 9px 14px;    
	    font-size: 15px;    
	    line-height: normal;    
	    border-radius: 5px;    
	    margin: 0;
	}
	.res{
		width: 100px;    
	    min-height: 20px;    
	    display: block;    
	    background-color: #4a77d4;    
	    border: 1px solid #3762bc;    
	    color: #fff;    
	    padding: 9px 14px;    
	    font-size: 15px;    
	    line-height: normal;    
	    border-radius: 5px;    
	    margin: -2.6em 13em ; 
	}
</style>
</head>
<body>
<div id="login">
<h1>Login</h1>
	<form action="main.jsp" method="post">
			<input type="text" required="required" name="u_name" id="u_name" onblur="checkName()" onfocus="focusName(this)"></input>
			<td><div id="name_msg">用户名必须为9位</div></td>   
            <input type="password" required="required"name="pwd" id="pwd" onfocus="focusPwd(this)" onblur="checkPwd()"></input>
            <td><div id="pwd_msg">密码可以包含数字字母6-12位之间</div></td>
            <button class="but" type="submit">登录<tton>
            <button class="res" type="reset">重置<tton>
	</form>
</div>
</body>
<script type="text/javascript">
	function checkName()
	{
		//获取id 为 tea_name的控件
		var name=document.getElementById("u_name");
		//获取表单控件中value属性的值
		var n=name.value;
		//获取显示信息的div控件
		var msg=document.getElementById("name_msg");
		if(n.length == 9)
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
		var msg=document.getElementById("pwd_msg");
		msg.innerHTML="密码可以包含数字字母6-12位之间";
		msg.className="";
	}
	function checkPwd()
	{
		var pwd=document.getElementById("pwd").value;
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
</script>
</html>