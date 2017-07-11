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
</style>
<body class="bg">
<form action="${pageContext.request.contextPath }/FileServlet" method="post" enctype="multipart/form-data">
	请选择入库单的文件:<input type="file" name="images"><br>
	<input type="submit" value="上传">
</form>
</body>
</html>