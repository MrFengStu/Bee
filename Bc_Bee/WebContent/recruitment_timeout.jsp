<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
	</script><script type="text/javascript" async="" src="${ctx}/style/js/conversion.js"></script><script src="${ctx}/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
	<meta content="no-siteapp" http-equiv="Cache-Control">
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>发布招聘信息成功</title>

	<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
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
    		<a href="index.html" class="logo">
    			<img src="${ctx}/style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx }/index.jsp">首页</a></li>
    			<li ><a href="${ctx }/joblist" >职位列表</a></li>
    			<li ><a href="${ctx }/jiaoyuan" >教员列表</a></li>
	    		<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
	    		<li style="display: none;"><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%}else{ %>
	    		<li><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%} %>
	    	</ul>
        	<dl class="collapsible_menu">
            	<dt>
           			<span>${name }&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                <dd style="display: none;"><a rel="nofollow" href="${ctx }/jianli.jsp">我的简历</a></dd>
                <dd style="display: none;"><a href="${ctx }/collections.jsp">我收藏的职位</a></dd>
                <dd style="display: none;"><a href="${ctx }/Delivery/Init">我投递的职位 <span id="noticeNo" class="red dn">(0)</span></a></dd>
                <dd class="btm" style="display: none;"><a href="${ctx }/subscribe.jsp">我的订阅</a></dd>
                <dd style="display: none;"><a href="${ctx }/create.jsp">我要招人</a></dd>
                <dd style="display: none;"><a href="${ctx }/accountBind.jsp">帐号设置</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx }/login.jsp">退出</a></dd>
            </dl>
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
                	
	                <form style="height: 200px;">
	                <div style="margin-top: 120px;margin-left: 100px; color: #ed0324;">
	                	<h1>您今天已经发了5条招聘信息，明天在来吧~</h1>
	                </div>
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
		    <a href="h/af/zhaopin.html" target="_blank">工作地址导航</a>
		    <a href="#" target="_blank" rel="nofollow">蜜蜂微博</a>
		    <a class="footer_qr" href="#" rel="nofollow">蜜蜂微信<i></i></a>
			<div class="copyright">&copy;2016-2017 Bee <a target="_blank" href="#">京ICP备14023790号-2</a></div>
		</div>
	</div>

</body>
</html>