﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8" src="${ctx }/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册-蜜蜂-最专业的大学生家教平台</title>

<link rel="stylesheet" type="text/css" href="${ctx }/style/css/style-jsy.css"/>

<script src="${ctx }/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="${ctx }/style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="${ctx }/style/js/core.min.js"></script>


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="${ctx }/style/js/conv.js"></script>
</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
        	<a href="${ctx }/register.jsp"><img src="${ctx }/style/images/logo_white.png" width="285" height="62" alt="蜜蜂招聘" /></a>
            <div id="cloud_s"><img src="${ctx }/style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="${ctx }/style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>
        
    	<input type="hidden" id="resubmitToken" value="9b207beb1e014a93bc852b7ba450db27" />		
		<div class="login_box">
        	<form id="loginForm" action="${ctx }/register/user">
        		<ul class="register_radio clearfix">
		            <li>
		            	教员
		              	<input type="radio" value="0" name="type" /> 
		            </li>
		            <li>
		           	           家长
		              	<input type="radio" value="1" name="type" /> 
		            </li>
		        </ul>
  
				<table>
					<tr>
						<td width="80">用户名：</td>
						<td><input type="text" id="user" name="user" value="" tabindex="1" placeholder="请输入用户名" /></td>
					</tr>
					<tr>
						<td width="80">密码：</td>
						<td><input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" /></td>
					</tr>
					<tr>
						<td width="80">确认密码：</td>
						<td><input type="password" id="passwordaffirm" name="passwordaffirm" tabindex="3" placeholder="确认密码" /></td>
					</tr>
					<tr>
						<td width="80">邮箱验证：</td>
						<td><input type="text" id="email" name="email" tabindex="4" placeholder="请输入邮箱地址" /></td>
					</tr>
					<tr>
						<td width="80">验证码：</td>
						<td><input type="text" id="auth" name="auth" tabindex="5" placeholder="邮箱验证码" />&nbsp; &nbsp;</td>
					</tr>
					<tr>
						<td colspan="2"><input type="checkbox" id="checkbox" name="checkbox" checked  class="checkbox valid" />我已阅读并同意<a href="register.jsp" target="_blank">《Bee用户协议》</a></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" id="submitLogin" value="注 &nbsp; &nbsp; 册" /></td>
					</tr>
				</table>

                <input type="hidden" id="callback" name="callback" value=""/>
                <input type="hidden" id="authType" name="authType" value=""/>
                <input type="hidden" id="signature" name="signature" value=""/>
                <input type="hidden" id="timestamp" name="timestamp" value=""/>
            </form>
            <div class="login_right">
            	<div>已有Bee帐号</div>
            	<a  href="${ctx }/login.jsp"  class="registor_now">直接登录</a>
                <div class="login_others">使用以下帐号直接登录:</div>
                <a  href="${ctx }/register.jsp"  target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
               	<a  href="${ctx }/register.jsp"  class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
            </div>
        </div>
        <div class="login_box_btm"></div>
    </div>
    <script type="text/javascript">
    $(document).ready(function(e) {
    	$('.register_radio li input').click(function(e){
    		$(this).parent('li').addClass('current').append('<em></em>').siblings().removeClass('current').find('em').remove();
    	});
    	
    	$('#email').focus(function(){
    		$('#beError').hide();
    	});
    	//验证表单
	    	 $("#loginForm").validate({
	    	        rules: {
	    	        	auth:{
	    	        		required:true
	    	        	},
	    	        	user:{
	    	        		required:true,
	    	        		rangelength:[4,8],
	    	        		remote:{
	    	        			type:"GET",
	    	        			url:"${ctx }/register/checkname",
	    	        			data:{
	    	        				user: function() {
	    	        		            return $("#user").val();
	    	        		        }
	    	        			}
	    	        		}
	    	        	},
	    	        	type:{
	    	        		required: true
	    	        	},
			    	   	email: {
			    	    	required: true,
			    	    	email: true,
			    	    	remote:{
			    	    		type:"GET",
			    	    		url:"${ctx }/register/checkemail",
			    	    		data:{
			    	    			email:function() {
			    	    				return $("#email").val();
			    	    			}
			    	    		}
			    	    	}
		
			    	   	},
			    	   	password: {
			    	    	required: true,
			    	    	rangelength: [6,16]
			    	   	},
			    	   	passwordaffirm:{
			    	   		required: true,
			    	    	rangelength: [6,16],
			    	    	equalTo: "#password"
			    	   	},
			    	   	checkbox:{required:true}
			    	},
			    	messages: {
			    		auth:{
			    			required:"请输入验证码"
			    		},
			    		user:{
			    			required:"请输入用户名",
			    			rangelength:"请输入4位以上用户名，允许数字字母结合",
			    			remote:"用户名已存在"
			    		},
			    		type:{
	    	        		required:"请选择使用拉勾的目的"
	    	        	},
			    	 	email: {
			    	    	required: "请输入常用邮箱地址",
			    	    	email: "请输入有效的邮箱地址，如：vivi@lagou.com",
			    	    	remote:"邮箱已被注册"
			    	   	},
			    	   	password: {
			    	    	required: "请输入密码",
			    	    	rangelength: "请输入6-16位密码，字母区分大小写"
			    	   	},
			    	   	passwordaffirm:{
			    	   		required: "请再次输入密码",
			    	    	rangelength: "请输入6-16位密码，字母区分大小写",
			    	    	equalTo: "两次输入的密码不一致"
			    	   	},
			    	   	checkbox: {
			    	    	required: "请接受拉勾用户协议"
			    	   	}
			    	},
			    	errorPlacement:function(label, element){/* 
			    		if(element.attr("type") == "radio"){
			    			label.insertAfter($(element).parents('ul')).css('marginTop','-20px');
			    		}else if(element.attr("type") == "checkbox"){
			    			label.inserresult.contenttAfter($(element).parent()).css('clear','left');
			    		}else{
			    			label.insertAfter(element);
			    		} */			    		
			    		/*modify nancy*/
			    		if(element.attr("type") == "radio"){
			    			label.insertAfter($(element).parents('ul')).css('marginTop','-20px');
			    		}else if(element.attr("type") == "checkbox"){
			    			label.insertAfter($(element).parent()).css('clear','left');
			    		}else{
			    			label.insertAfter(element);
			    		};	
			    	},
			    	submitHandler:function(form){
			    		var type =$('input[type="radio"]:checked',form).val();
			    		var email =$('#email').val();
			    		var password =$('#password').val();
			    		var resubmitToken = $('#resubmitToken').val();
			    		
			    		var callback = $('#callback').val();
			    		var authType = $('#authType').val();
			    		var signature = $('#signature').val();
			    		var timestamp = $('#timestamp').val();
			    		
			    		$(form).find(":submit").attr("disabled", true);

			            $.ajax({
			            	type:'POST',
			            	data: {email:email,password:password,type:type,resubmitToken:resubmitToken, callback:callback, authType:authType, signature:signature, timestamp:timestamp},
			            	url:ctx+'/user/register.json',
			            	dataType:'json'
			            }).done(function(result) {
		            		$('#resubmitToken').val(result.resubmitToken);
			            	if(result.success){
			            		window.location.href=result.content;			            		
			            	}else{
								$('#beError').text(result.msg).show();
			            	}
			            	$(form).find(":submit").attr("disabled", false);			           		
			            });
			        }  
	    	});
    });
    </script>
</body>
</html>
