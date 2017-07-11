<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<div>
	<div style="position: relative;left:500px;"><td><img src="tupian/booksbuyer.jpg"></td></div>
	<table style="position: relative;left:580px;">
		<tr class="ziti">
			<td>ID：</td>
			<td>${sessionScope.usersmap.u_id}</td>
		</tr>	
		<tr class="ziti">
			<td>姓名：</td>
			<td>${sessionScope.usersmap.u_name}</td>
		</tr>	
		<tr class="ziti">
			<td>性别：</td>
			<td>${sessionScope.usersmap.u_sex}</td>
		</tr>
		<tr class="ziti">
			<td>年龄：</td>
			<td>${sessionScope.usersmap.u_age}</td>
		</tr>
		<tr class="ziti">
			<td>入职时间：</td>
			<td>${sessionScope.usersmap.u_begtime}</td>
		</tr>
		<tr class="ziti">
			<td>电话：</td>
			<td>${sessionScope.usersmap.u_tel}</td>
		</tr>
		<tr class="ziti">
			<td>职业：</td>
			<td>图书采购</td>
		</tr>
	</table>
	<table style="position: relative;left:575px;top:50px;">
	<tr>
	<td>
	<form action="showzhuye.jsp" method="post">
		<input class="btn" type="submit" value="确认">
	</form>	
	</td>
	<td style="position: relative;left:80px;">
	<form action="changeusersmeSverlet" method="post">
		<input type="submit" class="btn" value="修改">
	</form>
	</td>
	</tr>
	</table>


</div>
</body>
</html>