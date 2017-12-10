<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
    <title>学生管理系统登录</title>
	<link rel="stylesheet" href="assets/css/amazeui.css" />
	<link href="assets/css/dlstyle.css" rel="stylesheet" type="text/css">
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>


<STYLE type=text/css>
TD {
	FONT-SIZE: 9pt; FONT-family: 宋体
}
A:link {
	CURSOR: hand; COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none
}
A:visited {
	COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none
}
A:active {
	COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none
}
A:hover {
	COLOR: #3399ff
}
.style1 {	font-size: 14px;
	font-weight: bold;
}
#Layer1 {
	position:absolute;
	left:133px;
	top:155px;
	width:389px;
	height:336px;
	z-index:1;
}
</STYLE>
<script language="javascript">
	    function login()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 if(document.ThisForm.userType.value=="-1")
			 {
			 	alert("请选择登陆身份");
				document.ThisForm.userType.focus();
				return false;
			 }
			 
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
</script>
</HEAD>
<BODY style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-BOTTOM-STYLE: none" bgColor=#366ab5 style="overflow:hidden">
		<div class="login-boxtitle">
			<a href="home.html"><img alt="logo" src="images/toubulogo.gif" /></a>
		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img src="images/toububig.jpg" /></div>
				<div class="login-box">
					<!--登录框开始-->
							<h3 class="title">欢迎登录</h3>
							<div class="clear"></div>
						<div class="login-form">
						  <FORM name="ThisForm" action="<%=path %>/login.action" method="POST">
							   <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <input name="userName" type="text" id="userName" size="15" placeholder="请输入用户名">

                 </div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input name="userPw" type="password" id="userPw" size="17"placeholder="请输入密码">

                 </div>
                 <TABLE>                                           
					<TR>
				            <TD height=30>
				            <select name="userType" id="userType" style='width:300PX;height:36px'> 
				             <option value="-1" selected="selected">---请选择登陆身份---</option>
				             <option value="0">管理员</option>
				             <option value="1">老师</option>
				              <option value="2">学生</option>
				            </select>
				           </TD>                                       
					</TR>
					<TR>
							<TD>&nbsp;</TD>
					</TR>
					<TR>
							<TD>&nbsp;</TD>
					</TR>
					<TR>
							<TD>&nbsp;</TD>
					</TR>
				    <TR valign="bottom">
					 		<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 		<img onClick="login()" src="<%=path %>/images/login_19.gif"></TD>
						 	<TD> <img id="indicator" src="<%=path %>/images/loading.gif" style="display:none"/></TD>
					 </TR>
          </TABLE>
              </FORM>
           </div>
		</div>
	</div>
</div>
	<div class="footer ">
	<div class="footer-bd ">
	<p>
	<a href="lianxi.html">联系我们</a>
	<em> 云南民族大学-和丽-毕业设计</em>
		</p>
	</div>
	</div>
</body>
