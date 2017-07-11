<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书采购系统</title>
<style type="text/css">
   	*{
		font-weight: bold;
	}
    .backg{
    background-image: url("tupian/ren.jpg");
    }
	.length1{
		font-size: 40px;
		width: 550px;
	}
    .cent{
    	text-align: center;
    	font-size: 30px;	
    }
	.btn{	
		width:190px;
		height:30px;
		font-size:20px;	
	}
	.btn1{	
		width:90px;
		height:30px;
		font-size:20px;	
	}
	.right{
		width: 400px;
		text-align: right;
	}
	 .kuang{
		width: 200px;
		height:800px;
		border: 1px solid black;
		border-collapse: collapse;
	}
	.bt1{
		height:100px;
	}
	.ziti{
		font-size:25px;
		height:45px;
	}
</style>
</head>
<body>
	<form action="gerenxinxixiugai" method="post" enctype="multipart/form-data">
	最简单的文件上传：<input type="file" name="fileupload"/>
	描述：<input type="text" name="desc"/>
	<input type="submit" value="submit"/>
	</form>
</body>
<body class="backg">
<div id="uname">
		<table>
			<tr>
				<td><img src="tupian/biaoti2.jpg"></td>
				<td style="position:absolute;right:10px;">当前用户<input type="submit" value="注销"></td>
			</tr>
			<tr>	
				<td style="position:absolute;right:10px;">
					<span style="white-space:pre"></span>
        				<font color="black">  
          				  <div id="time1"></div>                          
       					</font>  
  				</td>
			</tr>
			<tr>
			<div><table><tr>
			<td>_____________________________________
				_____________________________________
				_____________________________________
				_____________________________________
				_____________________________________
				____________________________</td>
			</tr></table></div>
			</tr>
		</table>		
</div>
<div style="position:relative;top:50px;left:42px;">
	<table style="position:relative;top:20px;left:42px;">
		<tr >
			<td><img src="tupian/books.jpg"></td>
		</tr>
	</table>
	<table style="position:relative;top:40px;left:20px;">
	<tr>
		<td><input class="btn"type="button" name="btn1"value="主页" onclick="displayzy_block() "></td>
	</tr>
	<tr><td class="cent">个人信息</td></tr>
	<tr>
		<td><input class="btn"type="button" name="btn1"value="查看" onclick="displayck_block() "></td>
	</tr>
	<tr>
		<td><input class="btn"type="button" name="btn1"value="修改" onclick="displayxg_block() "></td>
	</tr>
	<table  style="position:relative;top:70px;left:20px;">
		<tr>
			<td class="cent">帐号信息</td>
		</tr>
		<tr>
			<td><input class="btn"type="button" name="btn1"value="修改密码" onclick="displayxgmm_block() "></td>
		</tr>
	</table>
	</table>
	<table  style="position:relative;top:110px;left:20px;">
	<tr><td class="cent">图书目录</td></tr>
	<tr>
		<td><input class="btn"type="button" name="btn1"value="查询" onclick="displaycx_block() "></td>
	</tr>
	<tr>
		<td><input class="btn"type="button" name="btn1"value="更新" onclick="displaygx_block() "></td>	
	</tr>
	</table>
</div>
<!--主页-->
<div style="position:absolute;top:100px;left:420px;" id="zhuye">
	<table>
		<tr>
			<td><img src="tupian/huanying2.jpg"></td>
		</tr>
	</table>
</div>	
<!--查看个人信息界面-->
<div style="position:absolute;top:200px;left:620px;display:none;" id="chakan">
	<div>
		<table>
			<tr>
				<td><img src="tupian/booksbuyer.jpg"></td>
			</tr>
		</table>
	</div>
	
	<table>
		<tr class="ziti">
			<td>ID：</td>
			<td>66666666</td>
		</tr>	
		<tr class="ziti">
			<td>姓名：</td>
			<td>黄宗良</td>
		</tr>	
		<tr class="ziti">
			<td>性别：</td>
			<td>男</td>
		</tr>
		<tr class="ziti">
			<td>年龄：</td>
			<td>22</td>
		</tr>
		<tr class="ziti">
			<td>入职时间：</td>
			<td>2015-09-04</td>
		</tr>
		<tr class="ziti">
			<td>电话：</td>
			<td>17864281588</td>
		</tr>
		<tr class="ziti">
			<td>职业：</td>
			<td>图书采购</td>
		</tr>
	</table>
	<table>
			<tr style="position:absolute;top:550px;">
				<td style="position:relative;left:20px;">
					<input class="btn1" type="button" value="确认" onclick="displayzy_block() ">
				</td>
				<td style="position:relative;left:80px;">
					<input class="btn1" type="button" value="修改" onclick="displayxg_block() ">
				</td>
			</tr>
		</table>
</div>
<!--修改个人信息界面-->
<div style="position:absolute;top:200px;left:620px;display:none;"id="xiugai">
	<div>
		<table>
			<tr>
				<td><img src="tupian/booksbuyer.jpg"></td>
			</tr>
		</table>
	</div>
	<table>
	<tr class="ziti">
		<td>ID：</td>
		<td>66666666</td>
	</tr>	
	<tr class="ziti">
		<td>姓名：</td>
		<td><input type="text" name="name" ></td>
	</tr>	
	<tr class="ziti">
		<td>性别:</td>
			<td>
				<input type="radio" name="sex" 
					value="男" checked="checked" id="boy">
						<label for="boy">男</label>
					<input type="radio" name="sex" 
						value="女" id="girl">
						<label for="girl">女</label>
				</td>
	</tr>
	<tr class="ziti">
		<td>年龄：</td>
		<td><input type="text" name="age" ></td>
	</tr>
	
	<tr class="ziti">
		<td>入职时间：</td>
		<td><input type="text" name="time" onclick="WdatePicker()"></td>
	</tr>
	<tr class="ziti">
		<td>电话：</td>
		<td><input type="text" name="age" ></td>
	</tr>
	<tr class="ziti">
		<td>职业：</td>
		<td>图书采购</td>
	</tr>
	</table>	
	<table>
			<tr style="position:absolute;top:550px;">
				<td style="position:relative;left:150px;">
					<input class="btn1" type="button" value="确认" onclick="displayck1_block() ">
				</td>
				
			</tr>
	</table>	
</div>
<!--修改密码界面-->
<div style="position:absolute;top:200px;left:620px;display:none;"id="xiugaimima">
	<table>
		<tr class="ziti">
			<td>ID：</td>
			<td>66666666</td>
		</tr>	
		<tr>
			<td class="ziti">密码:</td>
				<td>
					<input class="input"  
					type="password" name="tea_pwd" id="mima"
					 onfocus="focusPwd(this)"
					 onblur="checkPwd()">*
				</td>
				<td>
					<div id="mimageshi">密码可以包含数字字母6-12位之间</div>
			</td>
		</tr>
		<tr>
				<td class="ziti">确认密码:</td>
				<td>
					<input  class="input" type="password"
					 id="xinmima">
				</td>
				<td>
					<div>*必须与密码一致</div>
				</td>
		</tr>
	</table>
	<table>
			<tr style="position:absolute;top:350px;">
				<td style="position:relative;left:150px;">
					<input class="btn1" type="button" value="确认" onclick="checkRePwd()">
				</td>
			</tr>
	</table>			
</div>
<!--查询图书目录界面-->
<div style="position:absolute;top:100px;left:410px;display:none;"id="chaxun">
	<div style="position:relative;top:10px;left:310px;">
		<table>
			<tr>
				<td><img src="tupian/tushumulu.jpg"></td>
			</tr>
		</table>
	</div>
	<table>
		<tr>
			<td>668</td>
		</tr>
	</table>
</div>
<!--更新图书目录界面-->
<div style="position:absolute;top:200px;left:620px;display:none;"id="gengxin">
	<table>
		<tr>
			<td>669</td>

		</tr>
	</table>
</div>
<!--图片插入-->
<div style="position:absolute;top:400px;left:1420px;">
	<table>
		<tr>
			<td><img src="tupian/tushu.jpg"></td>
		</tr>
	</table>
</div>
</body>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
<!--块的操作-->
	function displayck_block() {
		document.getElementById("zhuye").style.display="none";
		document.getElementById("chakan").style.display="block";
		document.getElementById("xiugai").style.display="none";
		document.getElementById("xiugaimima").style.display="none";
		document.getElementById("chaxun").style.display="none";
		document.getElementById("gengxin").style.display="none";

	}
	function displayxg_block() {
		document.getElementById("zhuye").style.display="none";
		document.getElementById("chakan").style.display="none";
		document.getElementById("xiugai").style.display="block";
		document.getElementById("xiugaimima").style.display="none";
		document.getElementById("chaxun").style.display="none";
		document.getElementById("gengxin").style.display="none";
	}
	function displayxgmm_block() {
		document.getElementById("zhuye").style.display="none";
		document.getElementById("chakan").style.display="none";
		document.getElementById("xiugaimima").style.display="block";
		document.getElementById("xiugai").style.display="none";
		document.getElementById("chaxun").style.display="none";
		document.getElementById("gengxin").style.display="none";
	}
	function displaycx_block() {
		document.getElementById("zhuye").style.display="none";
		document.getElementById("chakan").style.display="none";
		document.getElementById("xiugai").style.display="none";
		document.getElementById("xiugaimima").style.display="none";
		document.getElementById("chaxun").style.display="block";
		document.getElementById("gengxin").style.display="none";
	}
	function displaygx_block() {
		document.getElementById("zhuye").style.display="none";
		document.getElementById("chakan").style.display="none";
		document.getElementById("xiugai").style.display="none";
		document.getElementById("xiugaimima").style.display="none";
		document.getElementById("chaxun").style.display="none";
		document.getElementById("gengxin").style.display="block";
	}
	function displayzy_block() {
		document.getElementById("zhuye").style.display="block";
		document.getElementById("chakan").style.display="none";
		document.getElementById("xiugai").style.display="none";
		document.getElementById("xiugaimima").style.display="none";
		document.getElementById("chaxun").style.display="none";
		document.getElementById("gengxin").style.display="none";
	}
<!--时间的动态显示-->
	 setInterval("document.getElementById('time1').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);  	
<!--密码修改-->
	function focusPwd(obj)
		{
			obj.select();
			var msg=document.getElementById("mima");
			msg.innerHTML="密码可以包含数字字母6-12位之间";
			msg.className="";
		}
	function checkPwd()
		{
			var pwd=document.getElementById("mima").value;
			var reg=/^[a-zA-Z0-9]{6,12}$/;
			var msg=document.getElementById("mimageshi");
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
	function checkRePwd()
		{
			var pwd=document.getElementById("mima").value;
			var rePwd=document.getElementById("xinmima").value;
			if(pwd=='')
			{
				alert("密码不能为空");
				return false;
			}
			if(pwd==rePwd)
			{
				alert("修改成功");
				tiaozhuan1();
				return true;
			}
			alert("密码不一致");
			return false;
		}
	function displayck1_block() 
		{
			alert("修改成功");
			tiaozhuan();
			return true;
		}	
	function tiaozhuan()
		{
			displayck_block();
		}
	function tiaozhuan1()
		{
			displayzy_block();
		}
</script>
</html>