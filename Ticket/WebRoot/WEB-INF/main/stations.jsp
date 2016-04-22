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
			    <li><a href="${pageContext.request.contextPath }/ticket/toNews.do">动态新闻 <span class="en">Active News</span></a></li>
			    <li><a href="${pageContext.request.contextPath }/ticket/toIndex.do">车站风采 <span class="en">Demeanour</span></a></li>
				<li><a href="../ticket/toPicture.do">在线创意 <span class="en">Online Show</span></a></li>
			    <li><a href="${pageContext.request.contextPath }/ticket/toStations.do" class="hover">联系我们 <span class="en">Contact us</span></a></li>
			   </ul>
			  </div>
			  <div class="mainright">
			    <div class="content">
				    <h3>联系我们<sub>Contact us</sub></h3>
				    <dl>
				    <p>&nbsp;</p>
				    <dt>火车票网上售票系统</dt>	
				    <p>&nbsp;</p>
					<dt>系：广西大学  计算机与电子信息学院 </dt>
				 	<p>&nbsp;</p>
				 	<dt>信息安全   2011级 1班</dt>
				 	<p> &nbsp;</p>
					<a href="http://wpa.qq.com/msgrd?v=3&uin=372807087&site=qq&menu=yes"><img border="0px,solid,#fff"  src="../images/button_11.gif" alt="点击这里给我发消息" title="点击这里给我发消息" /></a>
    				</dl>
				</div>
 			</div>
        </div> 
        <!--主要区域结束-->
        <div id="footer">
         ©计算机与电子信息学院 2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="../images/copy_rignt_24.png" />
		</div>
    </body>
</html>
