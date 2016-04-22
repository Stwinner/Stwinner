<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>火车票网上购票系统</title>
        <link rel="shortcut icon" type="image/x-icon" href="../images/tubiao.ico" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" />
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
                <li><a href="../ticket/toIndex.do" class="index_off"></a></li>
                <li><a href="../ticket/findTicket.do?currentPage=1" class="account_off"></a></li> 
                <li><a href="../ticket/create_user.do" class="admin_off"></a></li>
                <li><a href="../ticket/findAdmin.do" class="information_on"></a></li>
                <li><a href="../ticket/toUser.do" class="password_off"></a></li>
            </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
         <div id="main">
            <form action="addAdmin.do" method="post" class="main_form">
               <div class="text_info clearfix"><span>姓名：</span></div>
                    <div class="input_info">
                        <input type="text" value="${user_info.name }"/>
                    </div>
                    <div class="text_info clearfix"><span>电话：</span></div>
                    <div class="input_info">
                        <input type="text" value="${user_info.phone }"/>
                    </div>
                    <div class="text_info clearfix"><span>Email：</span></div>
                    <div class="input_info">
                        <input type="text" value="${user_info.email }"/>
                    </div>
                    <div class="text_info clearfix"><span>生日：</span></div>
                    <div class="input_info">
                        <input type="text" value="${user_info.brith }"/>
                    </div>      
                    <div class="text_info clearfix"><span>身份证号码：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" value="${user_info.idcard }"/>
                    </div>
                    <div class="text_info clearfix"><span>家庭住址：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" value="${user_info.address }"/>
                    </div>
                    <div class="button_info clearfix">
                        <input type="submit" value="修改" class="btn_save" />
                        <input type="button" value="取消" class="btn_save" onclick="history.back();"/>
                    </div>
                </form>  
        </div>
        <!-- 主要区域结束 -->
       <div id="footer">
         ©计算机与电子信息学院 2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="../images/copy_rignt_24.png" />
		</div>
    </body>
</html>
