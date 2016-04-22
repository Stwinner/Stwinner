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
		<link href="../css/normalize.css" rel="stylesheet"/>
		<link href="../css/jquery-ui.css" rel="stylesheet"/>
		<link href="../css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;
	overflow-y:scroll;padding:0 0 0 0;}
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
                <li><a href="../ticket/create_user.do" class="admin_on"></a></li>
                <li><a href="../ticket/findAdmin.do" class="information_off"></a></li>
                <li><a href="../ticket/toUser.do" class="password_off"></a></li>
          	  </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
<div id="main">            
     
<div class="row">
	<div class="eightcol last">     
    <form id="my-form" action="addAdmin.do" method="post" >
    
        <section name="第一步">
          <div><label>姓名:</label><input id="userName" name="userName" type="text"/><a></a><%=request.getAttribute("info")%></a></a></div>
          <div><label>密码:</label><input id="pass" name="password" type="password"/></div>
          <div><label>邮箱:</label><input id="email" name="email" data-ideal="required email" type="email"/></div>
          <div><label>出生日期:</label><input name="Date" class="Datepicker" type="text" placeholder="年-月-日"/></div>
        </section>
        
        <section name="第二步">
		<div><label>身份证号码:</label><input id="idCard" name="idCard" type="text"/></div>
        <div><label>其他证件:</label>
          <select id="" name="">
            <option value="default">&ndash; 证件类型 &ndash;</option>
	            <option value="学生证">学生证</option>
				<option value="军人证">军人证</option>
				<option value="老年证">老年证</option>
				<option value="残疾证">残疾证</option>
		</select>
		 </div>
		<div><label>证件号码:</label><input id="cardId" name="cardId" type="text"/></div>
		</section>

        <section name="第三步">
          <div><label>电话:</label><input type="text" name="Phone" data-ideal="Phone"/></div>
          <div><label>省份:</label>
          <select id="states" name="states">
            <option value="default">&ndash; 选择省份 &ndash;</option>
	            <option value="北京">北京市</option>
				<option value="浙江省">浙江省</option>
				<option value="天津市">天津市</option>
				<option value="安徽省">安徽省</option>
				<option value="上海市">上海市</option>
				<option value="福建省">福建省</option> 
				<option value="重庆市">重庆市</option>
				<option value="江西省">江西省</option>
				<option value="山东省">山东省</option>
				<option value="河南省">河南省</option>
				<option value="湖北省">湖北省</option>
				<option value="湖南省">湖南省</option>
				<option value="广东省">广东省</option>
				<option value="海南省">海南省</option>
				<option value="山西省">山西省</option>
				<option value="青海省">青海省</option>
				<option value="江苏省">江苏省</option>
				<option value="辽宁省">辽宁省</option>
				<option value="吉林省">吉林省</option>
				<option value="台湾省">台湾省</option>
				<option value="河北省">河北省</option>
				<option value="贵州省">贵州省</option>
				<option value="四川省">四川省</option>
				<option value="云南省">云南省</option>
				<option value="陕西省">陕西省</option>
				<option value="甘肃省">甘肃省</option>
				<option value="黑龙江省">黑龙江省</option>
				<option value="香港特别行政区">香港特别行政区</option>
				<option value="澳门特别行政区">澳门特别行政区</option>
				<option value="广西壮族自治区">广西壮族自治区</option>
				<option value="宁夏回族自治区">宁夏回族自治区</option>
				<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
				<option value="内蒙古自治区">内蒙古自治区</option>
				<option value="西藏自治区">西藏自治区</option>
          </select>
        </div>
		<div><label>详细住址:</label><textarea id="Comments" name="Comments"></textarea></div>
        <div><label>邮编:</label><input type="text" name="zip" data-ideal="zip"/></div>
      </section>

      <div><hr/></div>

      <div>
        <button type="submit" class="btn_save">提交</button>
        <button id="reset" type="button" class="btn_save">重置</button>
      </div>

    </form>
</div>
</div>
        </div>
        <!--主要区域结束-->
		
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../js/jquery.idealforms.js"></script>
<script type="text/javascript">
var options = {

	onFail: function(){
		alert( $myform.getInvalid().length +' invalid fields.' );
	},

	inputs: {
		'password': {
			filters: 'required pass',
		},
		'username': {
			filters: 'required username',
			data: {
			//ajax: { url:'validate.php' }
			}
		},
		'file': {
			filters: 'extension',
			data: { extension: ['jpg'] }
		},
		'comments': {
			filters: 'min max',
			data: { min: 50, max: 200 }
		},
		'states': {
			filters: 'exclude',
			data: { exclude: ['default'] },
			errors : {
				exclude: '选择国籍.'
			}
		},
		'langs[]': {
			filters: 'min max',
			data: { min: 2, max: 3 },
			errors: {
				min: 'Check at least <strong>2</strong> options.',
				max: 'No more than <strong>3</strong> options allowed.'
			}
		}
	}
	
};

var $myform = $('#my-form').idealforms(options).data('idealforms');

$('#reset').click(function(){
	$myform.reset().fresh().focusFirst();
});

$myform.focusFirst();
</script>
       <div id="footer">
         ©计算机与电子信息学院 2011级<a href="http://www.gxu.edu.cn"  target="_blank">广西大学</a> <span>桂ICP证030173号</span><img width="13" height="16" src="../images/copy_rignt_24.png" />
		</div>
    </body>
</html>
