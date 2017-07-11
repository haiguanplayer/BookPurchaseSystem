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
</style>
<body class="bg">
	<table>
		<tr>
			<td>书号</td>
			<td>类别</td>
			<td>书名</td>
			<td>作者</td>
			<td>最大存量</td>
			<td>当前库存量</td>
			<td>价格</td>
			<td>出版社</td>
		</tr>
	<c:forEach var="m" items="${sessionScope.admins }">
		<tr>
			<td>${m.bid}</td>
			<td>${m.btype}</td>
			<td>${m.bname}</td>
			<td>${m.bwriter}</td>
			<td>${m.bstorline}</td>
			<td>${m.bstornow}</td>
			<td>${m.bprice}</td>
			<td>${m.bpublisher}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>