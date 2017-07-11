<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
		font-size: 20px;
		font-weight: bold;
		color:black;
	}
	#left{
		width: 200px;
		height: 1000px;
		background-image: url("tupian/left.jpg");
	}
	.menu{
		height: 30px;
		line-height: 30px;
		font-weight: bold;
		padding-left: 5px;
		letter-spacing: 2px;
		cursor: pointer;
		font-size: 25px;
		background-color: "white";

	}
	div a{
		text-decoration: none;
		display: block;
		height: 20px;
		line-height: 20px;
		padding-left: 10px;
		letter-spacing: 1px;
		font-size: 18px;
		border-bottom: 1px dashed white;
	}
	div a:hover{
		background-color: white;
		font-size: 25px;
	}
	.select{
		background-color: white;
		font-size: 25px;
		font-weight:bold;
	}
</style>
</head>
<body>
	<div id="left">
		<div id="item_0" style="position: relative;top:75px;left:45px;">
			<a href="showzhuye.jsp" target="main" onclick="setClass(this)">主页</a>
		</div>
		<div id="menu1" class="menu" onclick="show('item_1')" style="position: relative;top:80px;left:30px;">个人信息</div>
		<div id="item_1"  style="position: relative;top:90px;left:45px;">
			<a href="showmessage.jsp" target="main" onclick="setClass(this)">查看</a>
			<a href="changeusersmeSverlet?u_id=${sessionScope.usersmap.u_id}" target="main" onclick="setClass(this)">修改</a>
		</div>
		<div id="menu2"  class="menu" onclick="show('item_2')" style="position: relative;top:120px;left:30px;">图书目录</div>
		<div id="item_2"  style="position: relative;top:130px;left:45px;">
			<a href="bookcataServlet" target="main" onclick="setClass(this)">查询</a>
			<a href="updatebook.jsp" target="main" onclick="setClass(this)">更新</a>
		</div>
		<div id="menu3"  class="menu" onclick="show('item_3')" style="position: relative;top:160px;left:30px;">账户信息</div>
		<div id="item_3"  style="position: relative;top:170px;left:45px;">
			<a href="changewopassswordServlet?u_id=${sessionScope.usersmap.u_id}" target="main" onclick="setClass(this)">修改密码</a>
		</div>
	</div>
</body>
<script type="text/javascript">
	function show(id)
	{
		var obj=document.getElementById(id);
		var n=obj.style.display;
		if(n=="" || n=="block")
		{
			obj.style.display="none";
		}else{
			obj.style.display="block";			
		}
	}
	function setClass(obj)
	{
		var as=document.getElementsByTagName("a");
		for(var i=0;i<as.length;i++)
		{
			as[i].className="";
		}
		obj.className="select";
	}
</script>
</html>