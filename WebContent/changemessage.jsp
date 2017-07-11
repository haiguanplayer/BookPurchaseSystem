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
<form action="changeusersme1Sverlet" method="post">
	<input type="hidden" name="u_id"value="${sessionScope.usersmap.u_id}">
	<div style="position: relative;left:500px;"><td><img src="tupian/booksbuyer.jpg"></td></div>
	<table style="position: relative;left:580px;">
	<tr class="ziti">
		<td>ID：</td>
		<td>${sessionScope.usersmap.u_id}</td>
	</tr>	
	<tr class="ziti">
		<td>姓名：</td>
		<td><input type="text" name="u_name" value="${editinfo.u_name}"></td>
	</tr>	
	<tr class="ziti">
		<td>性别:</td>
			<td>
				<input type="radio" name="u_sex" value="男" 
				${sessionScope.editinfo.u_sex=='男'?'checked="checked"':''} id="boy">
						<label for="boy">男</label>
				<input type="radio" name="u_sex"value="女" 
				${sessionScope.editinfo.u_sex=='女'?'checked="checked"':''}id="girl">
						<label for="girl">女</label>
				</td>
	</tr>
	<tr class="ziti">
		<td>年龄：</td>
		<td><input type="text" name="u_age" value="${editinfo.u_age}"></td>
	</tr>
	<tr class="ziti">
		<td>入职时间：</td>
		<td><input type="text" name="u_begtime"value="${editinfo.u_begtime}"onclick="WdatePicker()"></td>
	</tr>
	<tr class="ziti">
		<td>电话：</td>
		<td><input type="text" name="u_tel"value="${editinfo.u_tel}"></td>
	</tr>
	<tr class="ziti">
		<td>职业：</td>
		<td>图书采购</td>
	</tr>
	<table style="position:relative;left:700px;top:30px;">
	<tr><td ><input class="btn" type="submit"value="确认"></td></tr>
	</table>
	</table>	
</div>
</form>
</body>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</html>