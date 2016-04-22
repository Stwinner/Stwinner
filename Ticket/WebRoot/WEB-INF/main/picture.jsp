<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>火车票网上购票系统</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/tubiao.ico" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" /> 
         <link type="text/css" rel="stylesheet" media="all" href="../styles/index.css" /> 
				<script language="javascript" type="text/javascript">
				function password() {
				var testV = 1;
				var pass1 = prompt('请输入密码:','');
				while (testV < 3) {
				if (!pass1) 
				history.go(-1);
				if (pass1 == "123") {
				// alert('密码正确,欢迎使用'); 
				break;
				} 
				testV+=1;
				var pass1 = 
				prompt('密码输入有误，请重新输入');
				}
				if (pass1!="password" & testV ==3)               
				history.go(-1);
				return " ";
				}						
				document.write(password());
				</script>
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo.png" alt="logo" class="left"/>
			<a><%=session.getAttribute("userName")%></a>
            <a href="../login.jsp">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
       <div id="navi">                        
            <ul id="menu">
                <li><a href="../ticket/toIndex.do" class="index_on"></a></li>
                <li><a href="../ticket/findTicket.do?currentPage=1" class="account_off"></a></li> 
                <li><a href="../ticket/create_user.do" class="admin_off"></a></li>
                <li><a href="../ticket/findAdmin.do" class="information_off"></a></li>
                <li><a href="../ticket/toUser.do" class="password_off"></a></li>
            </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">
     	  <div class="mainleft">
			   <ul>
			    <li><a href="../ticket/toNews.do">动态新闻 <span class="en">Active News</span></a></li>
			    <li><a href="../ticket/toIndex.do">车站风采 <span class="en">Demeanour</span></a></li>
				<li><a href="../ticket/toPicture.do"  class="hover">在线创意 <span class="en">Online Show</span></a></li>
			    <li><a href="../ticket/toStations.do">联系我们 <span class="en">Contact us</span></a></li>
			   </ul>
			  </div>
			  <div class="mainright">
			    <h1><div style="shuli">
					<font color="#001dff" size="120%">顺利毕业！&nbsp;&nbsp;</font><font color="#F00000" size="150%"> I&nbsp; Love &nbsp;You</div></h1></font>
					<canvas id="c" height="600" width="600"></canvas>  
					<script>  
					var b = document.body;  
					var c = document.getElementsByTagName('canvas')[0];  
					var a = c.getContext('2d');  
					document.body.clientWidth;  
					</script>  
					<script>  
					with(m=Math)C=cos,S=sin,P=pow,R=random;c.width=c.height=f=600;h=-250;function p(a,b,c){if(c>60)return[S(a*7)*(13+5/(.2+P(b*4,4)))-S(b)*50,b*f+50,625+C(a*7)*(13+5/(.2+P(b*4,4)))+b*400,a*1-b/2,a];A=a*2-1;B=b*2-1;if(A*A+B*B<1){if(c>37){n=(j=c&1)?6:4;o=.5/(a+.01)+C(b*125)*3-a*300;w=b*h;return[o*C(n)+w*S(n)+j*610-390,o*S(n)-w*C(n)+550-j*350,1180+C(B+A)*99-j*300,.4-a*.1+P(1-B*B,-h*6)*.15-a*b*.4+C(a+b)/5+P(C((o*(a+1)+(B>0?w:-w))/25),30)*.1*(1-B*B),o/1e3+.7-o*w*3e-6]}if(c>32){c=c*1.16-.15;o=a*45-20;w=b*b*h;z=o*S(c)+w*C(c)+620;return[o*C(c)-w*S(c),28+C(B*.5)*99-b*b*b*60-z/2-h,z,(b*b*.3+P((1-(A*A)),7)*.15+.3)*b,b*.7]}o=A*(2-b)*(80-c*2);w=99-C(A)*120-C(b)*(-h-c*4.9)+C(P(1-b,7))*50+c*2;z=o*S(c)+w*C(c)+700;return[o*C(c)-w*S(c),B*99-C(P(b, 7))*50-c/3-z/1.35+450,z,(1-b/1.2)*.9+a*.1, P((1-b),20)/4+.05]}}setInterval('for(i=0;i<1e4;i++)if(s=p(R(),R(),i%46/.74)){z=s[2];x=~~(s[0]*f/z-h);y=~~(s[1]*f/z-h);if(!m[q=y*f+x]|m[q]>z)m[q]=z,a.fillStyle="rgb("+~(s[3]*h)+","+~(s[4]*h)+","+~(s[3]*s[3]*-80)+")",a.fillRect(x,y,1,1)}',0)</script>  
 			</div>
        </div> 
        <!--主要区域结束-->
        <div id="footer">
         ©计算机与电子信息学院 2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="../images/copy_rignt_24.png" />
		</div>
    </body>
</html>
