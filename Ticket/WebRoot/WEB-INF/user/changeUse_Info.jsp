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
		<link href="css/normalize.css" rel="stylesheet"/>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
/* body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;
	overflow-y:scroll;padding:60px 0 0 0;} */
#my-form{margin:0 auto;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
#comments{width:350px;height:100px;}
</style>
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
                        <input type="text" name="name"/>
                        <span class="required">*</span>
                        <div class="validate_msg_long">20长度以内的汉字、字母、数字的组合</div>
                    </div>
                    <div class="text_info clearfix"><span>管理员账号：</span></div>
                    <div class="input_info">
                        <input type="text" name="admin_code"/>
                        <span class="required">*</span>
                        <div class="validate_msg_long">30长度以内的字母、数字和下划线的组合</div>
                    </div>
                    <div class="text_info clearfix"><span>密码：</span></div>
                    <div class="input_info">
                        <input type="password" name="password"/>
                        <span class="required">*</span>
                        <div class="validate_msg_long error_msg">30长度以内的字母、数字和下划线的组合</div>
                    </div>
                    <div class="text_info clearfix"><span>重复密码：</span></div>
                    <div class="input_info">
                        <input type="password"  />
                        <span class="required">*</span>
                        <div class="validate_msg_long error_msg">两次密码必须相同</div>
                    </div>      
                    <div class="text_info clearfix"><span>电话：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" name="telephone"/>
                        <span class="required">*</span>
                        <div class="validate_msg_medium error_msg">正确的电话号码格式：手机或固话</div>
                    </div>
                    <div class="text_info clearfix"><span>Email：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" name="email"/>
                        <span class="required">*</span>
                        <div class="validate_msg_medium error_msg">50长度以内，正确的 email 格式</div>
                    </div>
                    <div class="text_info clearfix"><span>角色：</span></div>
                    <div class="input_info_high">
                        <div class="input_info_scroll">
                            <ul>
                                <c:forEach items="${roles }" var="r">
                            		<li><input type="checkbox" value="${r.role_id }" name="roleIds"/>${r.name }</li>
                            	</c:forEach>
                            </ul>
                        </div>
                        <span class="required">*</span>
                        <div class="validate_msg_tiny error_msg">至少选择一个</div>
                    </div>
                    <div class="button_info clearfix">
                        <input type="submit" value="保存" class="btn_save" />
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
