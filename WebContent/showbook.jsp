<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	.ziti1{
		font-size:18px;
		font-weight:bold;
	}
</style>
</head>
<body class="bg">
	<img src="tupian/tushumulu.jpg"style="position:absolute;left:40%;">
	<table style="position:absolute;left:30%;top:15%;">
		<tr class="ziti">
			<td>id</td>
			<td>书名</td>
			<td>作者</td>
			<td>最大存量</td>
			<td>库存量</td>
		</tr>
	<c:forEach var="m" items="${sessionScope.admins }">
		<c:if test="${m.bstorline+0 > m.bstornow}">
			<tr class="ziti1">
				<td>${m.bid }</td>
				<td>${m.bname}</td>
				<td>${m.bwriter}</td>
				<td>${m.bstorline}</td>
				<td>${m.bstornow}</td>
			</tr>
		</c:if>
	</c:forEach>

	<tr>
	<td><input type=button class="btn" style="position:relative;left:45%;top:35%"
	onclick="window.location.href('printexcel.jsp')" value = "打印" ></td> 
	</tr>
	</table>
</body>
</html>