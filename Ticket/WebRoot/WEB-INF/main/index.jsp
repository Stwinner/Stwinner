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
			    <li><a href="${pageContext.request.contextPath }/ticket/toIndex.do" class="hover">车站风采 <span class="en">Demeanour</span></a></li>
			    <li><a href="../ticket/toPicture.do">在线创意 <span class="en">Online Show</span></a></li>
			    <li><a href="${pageContext.request.contextPath }/ticket/toStations.do">联系我们 <span class="en">Contact us</span></a></li>
			   </ul>
			  </div>
  <div class="mainright">
		 <div class="content">
			<h3>照片墙<sub>COMPANY NEWS</sub></h3>
            <img  class="pic pic1" src="../img/1.jpg"/>
            <img class="pic pic2" src="../img/2.jpg" width="250" height="376"/>
            <img class="pic pic3" src="../img/3.jpg"  width="250" height="365"/>
            <img class="pic pic4" src="../img/4.jpg" width="250" height="329"/>
            <img class="pic pic6" src="../img/6.jpg"  width="250" height="316"/>
            <img class="pic pic7" src="../img/7.jpg"  width="250" height="373"/>
            <img class="pic pic8" src="../img/8.jpg"  width="250" height="365"/>
            <img class="pic pic9" src="../img/9.jpg"  width="250" height="365"/>
            <img class="pic pic11" src="../img/11.jpg"  width="250" height="304"/>
            <img class="pic pic12" src="../img/12.jpg"  width="250" height="388"/>
            <img class="pic pic13" src="../img/13.jpg"  width="250" height="400"/>
            <img class="pic pic14" src="../img/14.jpg" width="250" height="345"/>
        </div>
 </div>
        </div> 
        <!--主要区域结束-->
        <div id="footer">
         ©计算机与电子信息学院 2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="../images/copy_rignt_24.png" />
		</div>
    </body>
</html>
