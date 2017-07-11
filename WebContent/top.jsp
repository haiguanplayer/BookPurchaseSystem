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
		color: black;
		font-weight: bold;
		font-size: 18px;
	}
	#top{
		width: 100%;
		height: 120px;
		background-image: url("tupian/top.jpg");
		background-repeat: repeat-y;
	}
	table{
		width: 100%;
		height: 100%;
	}
	.font{
		text-align: center;
		font-size: 45px;
		letter-spacing: 2px;
		font-style: italic;
	}
	.right{
		text-align: right;
	}
	.right a{
		margin-right: 20px;
		margin-left: 20px;
		margin-bottom:60px;
		text-decoration: none;
	}
	.right a:hover{
		color:red;
	}
</style>
</head>
<body>
<div id="top">
	<table>
		<tr>
		</tr>
		<tr>
			<td style="position:absolute;right:10px;top:80px;">
					<span style="white-space:pre"></span>
        				<font color="black">  
          				  <div id="time1"></div>                        
       					</font>  
  				</td>
			<td style="position:absolute;right:10px;top:10px;">
				欢迎管理员 ${sessionScope.usersmap.u_name}
				<a href="denglu.jsp" target="_top">注销</a>
			</td>
		</tr>
	</table>
	<div><table><tr style="position:absolute;right:10px;top:95px;">
		<td>_____________________________________
			_____________________________________
			_____________________________________
			_____________________________________
			_____________________________________
			____________________________</td>
		</tr></table></div>
</div>
</body>
<script type="text/javascript">
setInterval("document.getElementById('time1').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);  		
</script>
</html>