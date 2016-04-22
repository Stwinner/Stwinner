<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>火车票网上购票系统</title>
        <link rel="shortcut icon" type="image/x-icon" href="../images/tubiao.ico" />
        <link rel="stylesheet" type="text/css" href="../styles/list.css"/>
		<link rel="stylesheet" type="text/css" href="../styles/manhuaDate.1.0.css"/>
		<script type="text/javascript" src="../JS/jquery-1.5.1.js"></script><!--日期控件，JS库版本不能过高否则tab会失效-->
		<script type="text/javascript" src="../JS/datejs.js"></script>
		<script type="text/javascript" src="../JS/ui.tab.js"></script>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" /> 
<script language="javascript" type="text/javascript">
        $(document).ready(function(){
	var tab = new $.fn.tab({
		tabList:"#demo1 .ui-tab-container .ui-tab-list li",
		contentList:"#demo1 .ui-tab-container .ui-tab-content"
	});
	var tab = new $.fn.tab({
		tabList:"#demo1 .ui-tab-container .ui-tab-list2 li",
		contentList:"#demo1 .ui-tab-container .ui-tab-content2"
	});		
});	
</script>
<script type="text/javascript">
$(function (){
	$("input.mh_date").datejs({					       
		Event : "click",//可选				       
		Left : 0,//弹出时间停靠的左边位置
		Top : -16,//弹出时间停靠的顶部边位置
		fuhao : "-",//日期连接符默认为-
		isTime : false,//是否开启时间值默认为false
		beginY : 2010,//年份的开始默认为1949
		endY :2015//年份的结束默认为2049
	});
	
});
</script>
<script type="text/javascript">
               		$(document).ready(function(e) {
                        $("#selectList").find(".more").toggle(function(){
							$(this).addClass("more_bg");
							$(".more-none").show();
                    },function(){
						$(this).removeClass("more_bg");
						$(".more-none").hide();
						});
					});
               </script>
<script type="text/javascript">
    	$(document).ready(function(){
			var taboy_box=$(".lefttable-list");
			taboy_box.children("tbody").find("tr:gt(2)").hide(); 
			$(".leftbox-morea").toggle(function(){
				$(this).parent().prev().find("tr").show();
				$(this).addClass("more-i");
			},function(){
				$(this).removeClass("more-i");
				$(this).parent().prev().children("tbody").find("tr:gt(2)").hide(); 
			}
			);
		});
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
                <li><a href="../ticket/login/toIndex.do" class="index_off"></a></li>
                <li><a href="${pageContext.request.contextPath }/ticket/findTicket.do?currentPage=1"class="account_on"></a></li> 
                <li><a href="../ticket/create_user.do" class="admin_off"></a></li>
                <li><a href="../user/user_info.html" class="information_off"></a></li>
                <li><a href="../user/user_modi_pwd.html" class="password_off"></a></li>
            </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
       <div id="main">            
                   <table id="datalist">
				   <tr>
						<td>站次</td>
						<td>站名</td>
						<td>到达时间</td>
						<td>开车时间</td>
						<td>停留时间</td>
						<td>里程</td>
				   </tr>
				    <c:forEach items="${trains }" var="tra">
	                    <tr>
	                        <td>${tra.T_id }</td>
	                        <td>${tra.T_name }</td>
	                        <td>${tra.T_btime }</td>
	                        <td>${tra.T_atime }</td>
	                        <td>${tra.T_stime }</td>
	                        <td>${tra.T_run }</td>
	                    </tr>
                    </c:forEach>   
				   </table>        
                <!--操作按钮-->
                <div class="button_info clearfix">
                    <a class="btn_save" href="../ticket/findTicket.do?currentPage=1" />返回</a>
                </div>
        </div>
        <!--主要区域结束-->
        <div id="footer">
         ©计算机与电子信息学院 2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="../images/copy_rignt_24.png" />
		</div>
    </body>
</html>
