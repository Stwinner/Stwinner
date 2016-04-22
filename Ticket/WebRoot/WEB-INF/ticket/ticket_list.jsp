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
		<script type="text/javascript" src="../js/jquery-1.5.1.js"></script><!--日期控件，JS库版本不能过高否则tab会失效-->
		<script type="text/javascript" src="../js/datejs.js"></script>
		<script type="text/javascript" src="../js/ui.tab.js"></script>
		<script type="text/javascript" src="../js/ads.js"></script>
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
                <li><a href="../ticket/toIndex.do" class="index_off"></a></li>
                <li><a href="${pageContext.request.contextPath }/ticket/findTicket.do?currentPage=1" class="account_on"></a></li> 
                <li><a href="../ticket/create_user.do" class="admin_off"></a></li>
                <li><a href="../ticket/findAdmin.do" class="information_off"></a></li>
                <li><a href="../ticket/toUser.do" class="password_off"></a></li>
            </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">
            <form action="findTicket.do" method="post">
                <!--查询-->
                <!-- 搜索时去第一页 -->
                <input type="hidden" name="currentPage" value="1" />
                <div class="search_add">                        
                    <div>出发站：<input type="text" value="${TicketPage.startpoint }" class="text_search" name="startpoint"/></div>                            
                    <div>到达站：<input type="text" class="text_search" value="${TicketPage.endpoint }" name="endpoint" /></div>
                    <div>出发时间：<input type="text" value="${TicketPage.startdate }" class="mh_date" name="startdate"/></div>
                    <div>车次：<input type="text"  value="${TicketPage.jounery }" class="text_search" name="jounery" /></div>
                    <div><input type="submit" value="查询" class="btn_search"/></div>
                </div>  
                <!--数据区域：用表格展示数据-->     
                <div id="data">            
                    <table id="datalist">
                    <tr>
                        <th>车次</th>
                        <th>出发站</th>
                        <th>到达站</th>
                        <th>运行时间</th>
                        <th>发车时间</th>
                        <th>参考票价</th>
                        <th>硬座余票</th>                                                        
                        <th>站票余票</th>
                        <th class="width200"></th>
                    </tr>
                    <c:forEach items="${tickets }" var="tic">
	                    <tr>
	                        <td><a href="../ticket/ticket_info.do">${tic.jounery }</a></td>
	                        <td>${tic.startpoint }</td>
	                        <td>${tic.endpoint }</td>
	                        <td>${tic.runtimes }</td>
	                        <td><fmt:formatDate value="${tic.startdate }" pattern="yyyy-MM-dd"/></td>
	                        <td>${tic.price }</td>
	                        <td>${tic.yz_num }</td>
	                        <td>${tic.wz_num }</td>
	                        <td>订购</td>
	                    </tr>
                    </c:forEach>                   
                </table>
                                <p>业务说明：<br />
                1、请在登陆之后订购车票，没有注册用户，请先注册；<br />   
                2、查询时请输入出发站或到达站或发车时间或车次； <br />
                3、车票订购仅限有余票车次；<br />
                4、订购后的车票仅支持一次退订；<br />
                5、请使用实名制身份证绑定账号，游客只支持查询，不支持订购；<br /> </p>        
                </div> 
                 <!--分页-->
                <div id="pages">
                    <a href="findTicket.do?currentPage=1">首页</a>
                	<c:choose>
                		<c:when test="${ticketPage.currentPage==1 }">
                			<a href="#">上一页</a>
                		</c:when>
                		<c:otherwise>
                			<a href="findTicket.do?currentPage=${ticketPage.currentPage-1 }">上一页</a>
                		</c:otherwise>
                	</c:choose>
        	        
        	        <c:forEach begin="1" end="${ticketPage.totalPage }" var="p">
        	        	<c:choose>
        	        		<c:when test="${p==ticketPage.currentPage }">
        	        			<a href="findTicket.do?currentPage=${p }" class="current_page">${p }</a>
        	        		</c:when>
        	        		<c:otherwise>
        	        			<a href="findTicket.do?currentPage=${p }">${p }</a>
        	        		</c:otherwise>
        	        	</c:choose>
                    </c:forEach>
                    
                    <c:choose>
                		<c:when test="${ticketPage.currentPage==ticketPage.totalPage }">
                			<a href="#">下一页</a>
                		</c:when>
                		<c:otherwise>
                			<a href="findTicket.do?currentPage=${ticketPage.currentPage+1 }">下一页</a>
                		</c:otherwise>
                	</c:choose>
                    <a href="findTicket.do?currentPage=${ticketPage.totalPage }">末页</a>
                </div>                    
            </form>
        </div>    
        <!--主要区域结束-->
		<div id="pop" style="display:none;">
			<div id="popHead">
					<a id="popClose" title="关闭">关闭</a>
					<h2>关于本网站</h2>
				</div>
				<div id="popContent">
				<a href="http://www.gxu.edu.cn" target="_blank"><img src="../images/qr.jpg"/></a>
				</div>
			<script>
			var popad=new Pop();
			</script>
	</div>
        
        <div id="footer">
         ©计算机与电子信息学院 2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="../images/copy_rignt_24.png" />
		</div>
    </body>
</html>
