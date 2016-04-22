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
			    <li><a href="${pageContext.request.contextPath }/ticket/toNews.do" class="hover">动态新闻 <span class="en">Active News</span></a></li>
			    <li><a href="${pageContext.request.contextPath }/ticket/toIndex.do">车站风采 <span class="en">Demeanour</span></a></li>
				<li><a href="../ticket/toPicture.do">在线创意 <span class="en">Online Show</span></a></li>
			    <li><a href="${pageContext.request.contextPath }/ticket/toStations.do">联系我们 <span class="en">Contact us</span></a></li>
			   </ul>
			  </div>
			  <div class="mainright">
			    <div class="content">
				    <h3>动态新闻<sub>COMPANY NEWS</sub></h3>
				    <ul>
				    <li><a href="#">火车票网上购票系统于2015年5月8日上午8时8分上线试运营</a><span> 2015年5月5日</span></li>
					<li><a href="#">网络，让生活变得更便捷！</a><span> 2015年5月5日  </span></li>
					<li><a href="#">党中央就加快网络系统化发展的重要指示</a><span> 2015年5月5日  </span></li>
					<li><a href="#">历时上的火车</a><span>2015年5月5日  </span></li>
					<li><a href="#">少女为自拍爬上火车顶 误触电线爆炸致重伤身亡</a><span> 2015年5月5日  </span></li>
					<li><a href="#">西平铁路首次开行旅客列车 西安至彬县结束</a><span> 2015年5月5日  </span></li>
					<li><a href="#">步行街、世纪广场、火车站等地 年底可免费Wi-Fi覆盖 </a><span> 2015年5月5日  </span></li>
					<li><a href="#">出租车扎堆火车站抢生意 一的哥命丧同行车轮</a><span> 2015年5月5日  </span></li>
					<li><a href="#">火车东站出租车接客通道 一的哥躺在另一的哥车轮下 </a><span> 2015年5月5日  </span></li>
					</ul>
				</div>
 			</div>
        </div> 
        <!--主要区域结束-->
        <div id="footer">
         ©计算机与电子信息学院 2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="../images/copy_rignt_24.png" />
		</div>
    </body>
</html>
