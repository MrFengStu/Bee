<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
</script>
<script type="text/javascript" async=""
	src="${ctx }/style/js/conversion.js"></script>
<script src="${ctx }/style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<title>家长认证</title>

<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${ctx }/style/css/style-djw.css" />
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/dd.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx }/style/css/external.min.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx }/style/css/popup.css" />
<script src="${ctx }/style/js/jquery.1.10.1.min.js"
	type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/jquery.lib.min.js"></script>
<script src="${ctx }/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript"
	src="${ctx }/style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script type="text/javascript" src="${ctx }/style/js/conv.js"></script>
<script type="text/javascript">
	
</script>

</head>

<body>

	<div id="header">
		<div class="wrapper">
			<a href="" class="logo"> <img
				src="${ctx }/style/images/logo.png" width="229" height="43"
				alt="蜜蜂招聘-专注家教招聘" />
			</a>
			<ul class="reset" id="navheader">
				<li><a href="${ctx }/index.jsp">首页</a></li>
				<li><a href="${ctx }/joblist">职位列表</a></li>
				<li><a href="${ctx }/jiaoyuan" rel="nofollow">教员列表</a></li>
				<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
	    		<li style="display: none;"><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%}else if(session.getAttribute("student") == null && session.getAttribute("parent") != null){ %>
	    		<li><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%}else if(session.getAttribute("parent") == null && session.getAttribute("student") != null){ %>
	    		<li><a href="${ctx}/jianli/Init" rel="nofollow">我的简历</a></li>
	    	<%} %>
	    	</ul>
	    	<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
	    	<ul class="loginTop">
            	<li><a href="${ctx}/login.jsp" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="${ctx}/register.jsp" rel="nofollow">注册</a></li>
            </ul><%}else if(session.getAttribute("student") != null && session.getAttribute("parent") == null){ %>
		        <dl class="collapsible_menu">
            	<dt>
           			<span>${name }&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                <dd style="display: none;"><a rel="nofollow" href="${ctx }/jianli.jsp">我的简历</a></dd>
                <dd style="display: none;"><a href="${ctx }/Delivery/Init">我投递的职位 <span id="noticeNo" class="red dn">(0)</span></a></dd>
                <dd style="display: none;"><a href="${ctx }/Invitation/Init">我收到的邀请</a></dd>
                <dd style="display: none;"><a href="${ctx }/certification_student.jsp">用户认证</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx }/login.jsp">退出</a></dd>
            </dl><%}else if(session.getAttribute("student") == null && session.getAttribute("parent") != null){ %>
            <dl class="collapsible_menu">
            	<dt>
           			<span>${name }&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                <dd style="display: none;"><a rel="nofollow" href="${ctx }/jiazhang/show">我的信息</a></dd>
                <dd style="display: none;"><a href="">我收到的简历 <span id="noticeNo" class="red dn">(0)</span></a></dd>
                <dd class="btm" style="display: none;"><a href="${ctx }/subscribe.jsp">我发出的邀请</a></dd>
                <dd style="display: none;"><a href="${ctx}/publish/jump">我要招人</a></dd>
                <dd style="display: none;"><a href="${ctx }/certification_parent.jsp">用户认证</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx }/login.jsp">退出</a></dd>
            </dl><%} %>
		</div>
	</div>
	<div id="container">
		<div class="content_mid">
			<!--form-->
			<dl class="c_section c_section_service">
				<dt>
					<h2>
						<em></em>用户认证
					</h2>
				</dt>
				<dd>

					<form class="corp_form" name="bindForm" id="bindForm"
						action="${ctx }/certification/puser" method="post">
						<h3>
							<em class="redstar">*</em>真实姓名 <span>（请填写真实姓名，方便系统校验使用）</span>
						</h3>
						<input type="text" value="" placeholder="请输入你的真实姓名" maxlength="49"
							name="name" id="name">
						<h3>
							<em class="redstar">*</em>身份证号
						</h3>
						<input type="text" value="" placeholder="请输入你的身份证号" name="ID_num"
							id="ID_num"> <input type="submit" value="完成"
							id="bindSubmit">
					</form>
					<div class="contactus">
						<table>
							<tbody>
								<tr>
									<td valign="top">注：</td>
									<td>以上均为必填项，请认真填写</td>
								</tr>
								<tr>
									<td colspan="2">常见问题：</td>
								</tr>
								<tr>
									<td valign="top">问：</td>
									<td>个人身份信息会泄漏吗？</td>
								</tr>
								<tr>
									<td valign="top">答：</td>
									<td>我们会绝对保护用户的个人身份信息</td>
								</tr>

								<tr>
									<td colspan="2"><br>如有其它问题，请发送问题到<a href="#">lala@Bee.com</a>，我们会尽快为你解决。</td>
								</tr>
							</tbody>
						</table>
					</div>
				</dd>
			</dl>
		</div>
		<div id="footer">
			<div class="wrapper">
				<a href="" target="_blank" rel="nofollow">联系我们</a> <a href="#"
					target="_blank">互联网公司导航</a> <a href="#" target="_blank"
					rel="nofollow">蜜蜂微博</a> <a class="footer_qr" href="#"
					rel="nofollow">蜜蜂微信<i></i></a>
				<div class="copyright">
					&copy;2016-2017 Lagou <a target="_blank" href="#">京ICP备14023790号-2</a>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function(e) {

				//验证表单
				$("#bindForm").validate({
					rules : {
						name : {
							required : true
						},
						ID_num : {
							required : true,
							rangelength : [ 18, 18 ]
						}
					},
					messages : {
						name : {
							required : "请输入您的真实姓名"

						},
						ID_num : {
							required : "请输入您的身份证号",
							rangelength : "请输入有效的证件号码"
						}
					}
				})
			});
		</script>
</body>
</html>