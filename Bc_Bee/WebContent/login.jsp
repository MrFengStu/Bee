<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script id="allmobilize" charset="utf-8" src="${ctx }/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<<<<<<< HEAD
<title>登录-蜜蜂网-最专业的大学生家教招聘平台</title>
=======
<title>登录-蜜蜂网-最专业的家教招聘平台</title>
>>>>>>> 7314ee1be915242474e8771eb8ff06c434fc7bfe
<meta property="qc:admins" content="23635710066417756375" />


<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />
	
<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/style-jsy.css"/>

<script src="${ctx }/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="${ctx }/style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="${ctx }/style/js/core.min.js"></script>


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="${ctx }/style/js/conv.js"></script>
<script type="text/javascript">
	function login() {
		document.loginForm.submit();
	}
	function checkExist() {
		$.get("${ctx }/login/checkname", {
			'email' : $('#email').val()
		}, function(data, status) {
			console.log(eval(data)[0].email);
		});
	}
</script>
</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
        	<a href="h/"><img src="${ctx }/style/images/logo_white.png" width="285" height="62" alt="Bee" /></a>
            <div id="cloud_s"><img src="${ctx }/style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="${ctx }/style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>
        
    	<input type="hidden" id="resubmitToken" value="" />		
		 <div class="login_box">
        	<form name="loginForm" id="loginForm" action="${ctx }/login/user" method="post">
<<<<<<< HEAD
    	
=======
    	<!--	<input type="text" id="email" name="email" value="" tabindex="1" placeholder="请输入登录邮箱地址" />
			  	<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
				<span class="error" style="display:none;" id="beError"></span>
			    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
			    <a href="reset.html" class="fr" target="_blank">忘记密码？</a>
			    
				
				<a style="color:#fff;" href="index.html" class="submitLogin" title="登 &nbsp; &nbsp; 录"/>登 &nbsp; &nbsp; 录</a>
		--><!--上部分为原内容，以下为修改内容 -->
>>>>>>> 7314ee1be915242474e8771eb8ff06c434fc7bfe
				<table>
					<tr>
						<td width="80">用户名：</td>
						<td><input type="text" id="email" name="name" onblur="checkExist()" value="" tabindex="1" placeholder="请输入邮箱" /></td>
					</tr>
					<tr>
						<td width="80">密码：</td>
						<td><input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" /></td>
						<td><span class="error" style="display:none;" id="beError"></span></td>
					</tr>
					<tr>
						<td width="80">验证码：</td>
						<td><input type="text" id="auth" name="auth" value="" tabindex="3" placeholder="请输入验证码(区分大小写)">&nbsp;&nbsp;<img src="${ctx }/CheckCodeServlet" width="100" height="40"></td>
					</tr>
					<tr>
						<td><label class="fl" for="remember"><input type="checkbox" id="remember" value="on" checked="checked" name="autoLogin" /> 记住我</label></td>
						<td><a href="reset.html" class="fr" target="_blank">忘记密码？</a></td>
					</tr>
					<tr><td colspan="2"><a style="color:#fff;" onclick="login()" class="submitLogin" title="登 &nbsp; &nbsp; 录"/>登 &nbsp; &nbsp; 录</a></td></tr>
				</table>

			    
			    <input type="hidden" id="callback" name="callback" value=""/>
                <input type="hidden" id="authType" name="authType" value=""/>
                <input type="hidden" id="signature" name="signature" value=""/>
                <input type="hidden" id="timestamp" name="timestamp" value=""/>
			</form>
			<div class="login_right">
				<div>还没有小蜜蜂帐号？</div>
				<a  href="${ctx }/register.jsp"  class="registor_now">立即注册</a>
			    <div class="login_others">使用以下帐号直接登录:</div>
<<<<<<< HEAD
			    <a  href="#"  target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
			    <a  href="#"  class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
=======
			    <a  href=""  target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
			    <a  href=""  class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
>>>>>>> 7314ee1be915242474e8771eb8ff06c434fc7bfe
			</div>
        </div>
        <div class="login_box_btm"></div>
    </div>
<<<<<<< HEAD
=======
<!--  
<script type="text/javascript">
$(function(){
	//验证表单
	 	$("#loginForm").validate({
	 		/* onkeyup: false,
	    	focusCleanup:true, */
	        rules: {
	    	   	email: {
	    	    	required: true
	    	    
	    	   	},
	    	   	password: {
	    	    	required: true
	    	   	}
	    	},
	    	messages: {
	    	   	email: {
	    	    	required: "请输入登录邮箱地址"
	    	   	},
	    	   	password: {
	    	    	required: "请输入密码"
	    	   	}
	    	},
	    	submitHandler:function(form){
	    		if($('#remember').prop("checked")){
	      			$('#remember').val(1);
	      		}else{
	      			$('#remember').val(null);
	      		}
	    		var email = $('#email').val();
	    		var password = $('#password').val();
	    		var remember = $('#remember').val();
	    		
	    		var callback = $('#callback').val();
	    		var authType = $('#authType').val();
	    		var signature = $('#signature').val();
	    		var timestamp = $('#timestamp').val();
	    		
	    		$(form).find(":submit").attr("disabled", true);
	            $.ajax({
	            	type:'POST',
	            	data:{email:email,password:password,autoLogin:remember, callback:callback, authType:authType, signature:signature, timestamp:timestamp},
	            	url:ctx+'/user/login.json'
	            }).done(function(result) {
					if(result.success){
					 	if(result.content.loginToUrl){
							window.location.href=result.content.loginToUrl;
	            		}else{
	            			window.location.href=ctx+'/';
	            		} 
					}else{
						$('#beError').text(result.msg).show();
					}
					$(form).find(":submit").attr("disabled", false);
	            }); 
	        }  
		});
})
</script>-->
>>>>>>> 7314ee1be915242474e8771eb8ff06c434fc7bfe

</body>
</html>