<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
	</script><script type="text/javascript" async="" src="${ctx }/style/js/conversion.js"></script>
	<script src="${ctx }/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
	<style type="text/css"></style>
	<meta content="no-siteapp" http-equiv="Cache-Control">
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>认证成功</title>

<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/style-djw.css"/>
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/dd.css"/>
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/popup.css"/>
<script src="${ctx }/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/jquery.lib.min.js"></script>
<script src="${ctx }/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="${ctx }/style/js/conv.js"></script>
</head>

<body>

	<div id="header">
    	<div class="wrapper">
    		<a href="" class="logo">
    			<img src="${ctx }/style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx }/index.jsp">首页</a></li>
    			<li ><a href="${ctx }/joblist" >职位列表</a></li>
	    		<li ><a href="${ctx }/jiaoyuan" rel="nofollow">教员列表</a></li>
	    		<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
	    		<li style="display: none;"><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%}else if(session.getAttribute("student") == null && session.getAttribute("parent") != null){ %>
	    		<li><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%}else if(session.getAttribute("parent") == null && session.getAttribute("student") != null){ %>
	    		<li><a href="${ctx}/jianli.jsp" rel="nofollow">我的简历</a></li>
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
                <dd style="display: none;"><a rel="nofollow" href="${ctx }/jiazhanginfo.jsp">我的信息</a></dd>
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
                    <h2><em></em>用户认证</h2>
                </dt>
                <dd>
                	
	                <form style="height: 200px;">
	                <div style="margin-top: 120px;margin-left: 100px; color: #ed0324;">
	                	<h1>恭喜您，认证成功！</h1>
	                </div>
	                	
                    </form>
                    <div class="contactus">
	                    <table>
	                    	<tbody>
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
			<a href="" target="_blank" rel="nofollow">联系我们</a>
		    <a href="" target="_blank">互联网公司导航</a>
		    <a href="" target="_blank" rel="nofollow">拉勾微博</a>
		    <a class="footer_qr" href="javascript:void(0)" rel="nofollow">拉勾微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a target="_blank" href="">京ICP备14023790号-2</a></div>
		</div>
	</div>

</body>
</html>