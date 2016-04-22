<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>火车票网上订票系统</title>
<style type="text/css">
html{overflow-y:scroll;vertical-align:baseline;}
body{font-family:Microsoft YaHei,Segoe UI,Tahoma,Arial,Verdana,sans-serif;font-size:12px;color:#fff;height:100%;line-height:1;background:#999}
*{margin:0;padding:0}
ul,li{list-style:none}
h1{font-size:30px;font-weight:700;text-shadow:0 1px 4px rgba(0,0,0,.2)}
.login-box{width:410px;margin:120px auto 0 auto;text-align:center;padding:30px;background:url(images/mask.png);border-radius:10px;}
.login-box .info,.login-box .name,.login-box .password,.login-box .code,.login-box .remember{font-size:16px;text-shadow:0 1px 2px rgba(0,0,0,.1)}
.login-box .info{color:red;font-size:200%}
.login-box .remember input{box-shadow:none;width:15px;height:15px;margin-top:25px}
.login-box .remember{padding-left:40px}
.login-box .remember label{display:inline-block;height:42px;width:70px;line-height:34px;text-align:left}
.login-box label{display:inline-block;width:100px;text-align:right;vertical-align:middle}
.login-box #code{width:120px}
.login-box .codeImg{float:right;margin-top:26px;cursor:pointer;}
.login-box img{width:148px;height:42px;border:none}
input[type=text],input[type=password]{width:270px;height:42px;margin-top:25px;padding:0px 15px;border:1px solid rgba(255,255,255,.15);border-radius:6px;color:#fff;letter-spacing:2px;font-size:16px;background:transparent;}
button{cursor:pointer;width:100%;height:44px;padding:0;background:#ef4300;border:1px solid #ff730e;border-radius:6px;font-weight:700;color:#fff;font-size:24px;letter-spacing:15px;text-shadow:0 1px 2px rgba(0,0,0,.1)}
input:focus{outline:none;box-shadow:0 2px 3px 0 rgba(0,0,0,.1) inset,0 2px 7px 0 rgba(0,0,0,.2)}
button:hover{box-shadow:0 15px 30px 0 rgba(255,255,255,.15) inset,0 2px 7px 0 rgba(0,0,0,.2)}
.screenbg{position:fixed;bottom:0;left:0;z-index:-999;overflow:hidden;width:100%;height:100%;min-height:100%;}
.screenbg ul li{display:block;list-style:none;position:fixed;overflow:hidden;top:0;left:0;width:100%;height:100%;z-index:-1000;float:right;}
.screenbg ul a{left:0;top:0;width:100%;height:100%;display:inline-block;margin:0;padding:0;cursor:default;}
.screenbg a img{vertical-align:middle;display:inline;border:none;display:block;list-style:none;position:fixed;overflow:hidden;top:0;left:0;width:100%;height:100%;z-index:-1000;float:right;}
.bottom{margin:8px auto 0 auto;width:100%;position:fixed;text-align:center;bottom:0;left:0;overflow:hidden;padding-bottom:8px;color:#ccc;word-spacing:3px;zoom:1;}
.bottom a{color:#FFF;text-decoration:none;}
.bottom a:hover{text-decoration:underline;}
.register{height:42px;margin-top:25px;align="center";padding:20px;}
u{color:yellow;font-size:200%;}
u:hover{ color:#00F;font-size:250%;}
</style>

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".screenbg ul li").each(function(){
		$(this).css("opacity","0");
	});
	$(".screenbg ul li:first").css("opacity","1");
	var index = 0;
	var t;
	var li = $(".screenbg ul li");	
	var number = li.size();
	function change(index){
		li.css("visibility","visible");
		li.eq(index).siblings().animate({opacity:0},3000);
		li.eq(index).animate({opacity:1},3000);
	}
	function show(){
		index = index + 1;
		if(index<=number-1){
			change(index);
		}else{
			index = 0;
			change(index);
		}
	}
	t = setInterval(show,8000);
	//根据窗口宽度生成图片宽度
	var width = $(window).width();
	$(".screenbg ul img").css("width",width+"px");
});
//点击换一张验证码
function changeImg() {
	var imgSrc = $("#code");   
    var src = imgSrc.attr("src");   
    imgSrc.attr("src",chgUrl(src));  
    $("#info").html("");
}
//时间戳   
//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳   
function chgUrl(url) {
	var timestamp = (new Date()).valueOf();
	url = url.substring(0, 17);
	if ((url.indexOf("&") >= 0)) {
		url = url + "×tamp=" + timestamp;   
	} else {
		url = url + "?timestamp=" + timestamp;   
	}
	return url;
}
</script>
  </head>
  
 <body>
<div class="login-box">
	<h1>火车票网上订票系统登陆</h1>
	<form method="post" action="loginServlet">
		<div class="info" style="padding-top:20px"><%=request.getAttribute("info")%></div>
		<div class="name">
			<label>账  号：</label>
			<input type="text" name="username" tabindex="1"value="姓名/手机号/邮箱" onfocus="this.value='';" onblur="if(this.value==''){this.value='姓名/手机号/邮箱';}"/>
		</div>
		<div class="password">
			<label>密  码：</label>
			<input type="password" name="password" maxlength="16" tabindex="2"/>
		</div>
		<div class="code">
			<label>验证码：</label>
			<input style="width:130px" type="text" name="valcode" maxlength="4"  tabindex="3"/>
			<div class="codeImg"><img src="valCode" id="code" onclick="changeImg()" title="点击更换"/>
			</div>
		</div>
		<div class="remember">
			<input type="checkbox" id="remember" tabindex="4">
			<label>记住密码</label>
		</div>
		<div class="login">
			<button type="submit"  tabindex="5">登录</button> <!-- onclick="document.form[0].submit();" -->
		</div>
	</form>
</div>

<div class="bottom">©计算机与电子信息学院    2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="images/copy_rignt_24.png" /></div>

<div class="screenbg">
	<ul>
		<li><a href="javascript:;"><img src="images/0.jpg"></a></li>
		<li><a href="javascript:;"><img src="images/1.jpg"></a></li>
		<li><a href="javascript:;"><img src="images/2.jpg"></a></li>
	</ul>
</div>
</body>
</html>
