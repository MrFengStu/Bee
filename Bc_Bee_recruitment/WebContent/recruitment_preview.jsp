<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
	</script><script type="text/javascript" async="" src="${ctx}/style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
	<meta content="no-siteapp" http-equiv="Cache-Control">
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>招聘信息预览</title>

	<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="${ctx}/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/style-djw.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/dd.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/style/css/popup.css"/>
<script src="${ctx}/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/jquery.lib.min.js"></script>
<script src="${ctx}/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="${ctx}/style/js/conv.js"></script>
</head>

<body>

	<div id="header">
    	<div class="wrapper">
    		<a href="${ctx}/index.html" class="logo">
    			<img src="${ctx}/style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx}/index.html">首页</a></li>
    			<li ><a href="${ctx}/jianli.html" >教员列表</a></li>
	    		<li class="current"><a href="发布招聘信息_01.html" rel="nofollow">职位列表</a></li>
	    		<li ><a href="${ctx}/发布求职信息_01.html" rel="nofollow">发布职位</a></li>
	    	</ul>
        	<ul class="loginTop">
            	<li><a href="${ctx}/login.html" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="${ctx}/register.html" rel="nofollow">注册</a></li>
            </ul>
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
	                 			<li style="list-style-type:none;height: 20px;font-size: 15px;">${stuInfo}</li><br/>
	                 		</ul>
	                 	</div>
	               
	                 	
	                <form action="${ctx}/publish/add" class="corp_form" id="bindForm" >
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
			<a href="${ctx}/h/about.html" target="_blank" rel="nofollow">联系我们</a>
		    <a href="${ctx}/h/af/zhaopin.html" target="_blank">互联网公司导航</a>
		    <a href="${ctx}/http://e.weibo.com/lagou720" target="_blank" rel="nofollow">拉勾微博</a>
		    <a class="footer_qr" href="javascript:void(0)" rel="nofollow">拉勾微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
		</div>
	</div>

</body>
</html>