<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>id</td>
			<td>书名</td>
			<td>作者</td>
			<td>最大存量</td>
			<td>库存量</td>
		</tr>
	<c:forEach var="m" items="${sessionScope.admins }">
		<c:if test="${m.bstorline+0 > m.bstornow}">
			<tr>
				<td>${m.bid }</td>
				<td>${m.bname}</td>
				<td>${m.bwriter}</td>
				<td>${m.bstorline}</td>
				<td>${m.bstornow}</td>
			</tr>
		</c:if>
	</c:forEach>
		<tr>
			<td>
				打印时间:<div id="date">2017-07-07 09:05:15	星期五</div>
			</td>
		</tr>
	</table>	
</body>
<script type="text/javascript">
function show()
{
	//获取系统时间
	var time=new Date();
	var y=time.getFullYear();
	var m=time.getMonth()+1;
	if(m<10)
	{
		m="0"+m;
	}
	var d=time.getDate();
	if(d<10)
	{
		d="0"+d;
	}
	var weeks=["日","一","二","三","四","五","六"];
	//第几天 
	var w=time.getDay();
	var h=time.getHours();
	if(h<10)
	{
		h="0"+h;
	}
	var mi=time.getMinutes();
	if(mi<10)
	{
		mi="0"+mi;
	}
	var s=time.getSeconds();
	if(s<10)
	{
		s="0"+s;
	}
	var date=document.getElementById("date");
	date.innerHTML=y+"年"+m+"月"+d+"日 "+h+":"+mi+":"+s
		+" 星期"+weeks[w];
}
show();
setInterval("show()", 1000);
</script>
</html>