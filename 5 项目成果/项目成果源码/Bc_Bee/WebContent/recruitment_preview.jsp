<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
	</script><script type="text/javascript" async="" src="${ctx}/style/js/conversion.js"></script><script src="${ctx}/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
	<meta content="no-siteapp" http-equiv="Cache-Control">
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>招聘信息预览</title>

	<script type="text/javascript">

console.log(1);
</script>
<link rel="Shortcut Icon" href="${ctx}/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/style-djw.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/dd.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/popup.css"/>
<script src="${ctx}/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/jquery.lib.min.js"></script>
<script src="${ctx}/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="${ctx}/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="${ctx}/style/js/conv.js"></script>
<script src="${ctx }/style/js/core.min.js" type="text/javascript"></script>
		<script src="${ctx }/style/js/profile.min.js" type="text/javascript"></script>
</head>

<body>

	<div id="header">
    	<div class="wrapper">
    		<a href="${ctx}/index.jsp" class="logo">
    			<img src="${ctx}/style/images/logo.png" width="229" height="43" alt="蜜蜂招聘-专注大学生家教招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx }/index.jsp">首页</a></li>
    			<li ><a href="${ctx }/joblist" >职位列表</a></li>
    			<li ><a href="${ctx }/jiaoyuan" >教员列表</a></li>
	    		<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
	    		<li class="current" style="display: none;"><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%}else if(session.getAttribute("student") == null && session.getAttribute("parent") != null){ %>
	    		<li class="current"><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
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
                <dd class="btm" style="display: none;"><a href="${ctx }/Invitation/send">我发出的邀请</a></dd>
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
                    <h2><em></em>发布招聘信息</h2>
                </dt>
                <dd>
                	
	                
	                	<div style="width: 400px;padding-top:70px; ">
	                 		<ul>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${jobTitle}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${contacts}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${contactInfo}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${shi}市${qu}${address}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${subject}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${salary}</li><br/>
	                 	        <li style="list-style-type:none;height: 20px;font-size: 15px;">${settle}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${school}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${WTime}</li><br/>
	                 	        <li style="list-style-type:none;height: 20px;font-size: 15px;">${attract}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${jobDemand}</li><br/>
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${stuInfo}</li><br/>
	                 		</ul>
	                 	</div>
	                 	<form action="${ctx}/publish/add" class="corp_form" id="bindForm" >
	                 			<input type="hidden"  name="jobTitle" value="${jobTitle}">
	                 			<input type="hidden"  name="contacts" value="${contacts}">
	                 			<input type="hidden"  name="contactInfo" value="${contactInfo}">
	                 			<input type="hidden"  name="shi" value="${shi}">
	                 			<input type="hidden"  name="qu" value="${qu}">
	                 			<input type="hidden"  name="address" value="${address}">
	                 			<input type="hidden"  name="subject" value="${subject}">
	                 			<input type="hidden"  name="salary" value="${salary}">
	                 			<input type="hidden"  name="settle" value="${settle}">
	                 			<input type="hidden"  name="stuInfo" value="${stuInfo}">
	                 			
	                 			<input type="hidden"  name="school" value="${school}">
	                 			<input type="hidden"  name="WTime" value="${WTime}">
	                 			<input type="hidden"  name="attract" value="${attract}">
	                 			<input type="hidden"  name="jobdemand" value="${jobDemand}">
	                 			 
	                 
	               
	                 	
	                
	                    <input type="submit" value="发布" id="bindSubmit">
                    	</form>
                    <div class="contactus">
	                    <table>
	                    	<tbody><tr>
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
	                    		<td colspan="2"><br>如有其它问题，请发送问题到<a href="mailto:vivi@Bee.com">vivi@Bee.com</a>，我们会尽快为你解决。</td>
	                    	</tr>
	                    </tbody></table>
                    </div>
                </dd>
            </dl>
       	</div>
       	<div id="footer">
		<div class="wrapper">
			<a href="#" target="_blank" rel="nofollow">联系我们</a>
		    <a href="${ctx}/af/zhaopin.html" target="_blank">工作地址导航</a>
		    <a href="#" target="_blank" rel="nofollow">蜜蜂微博</a>
		    <a class="footer_qr" href="#" rel="nofollow">蜜蜂微信<i></i></a>
			<div class="copyright">&copy;2016-2017 Bee <a target="_blank" href="#">京ICP备14023790号-2</a></div>
		</div>
	</div>

</body>
</html>