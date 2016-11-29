<<<<<<< HEAD
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
	
	<title>学生认证</title>

	<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
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
    			<img src="${ctx }/style/images/logo.png" width="229" height="43" alt="蜜蜂招聘-专注家教招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx }/index1.jsp">首页</a></li>
    			<li ><a href="${ctx }/joblist" >职位列表</a></li>
	    		<li ><a href="${ctx }/jiaoyuan" rel="nofollow">教员列表</a></li>
	    		<li ><a href="" rel="nofollow">发布职位</a></li>
	    	</ul>
        	
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
                	
	                <form class="corp_form" id="bindForm" name="bindForm" action="${ctx }/certification/tuser" method="post">
	                 	<h3><em class="redstar">*</em>真实姓名 <span>（请填写真实姓名，方便系统校验使用）</span></h3>
	                    <input type="text" value="" placeholder="请输入你的真实姓名" maxlength="49" name="name" id="name">	
	                    <h3><em class="redstar">*</em>学生证号 </h3>
	                    <input type="text" value="" placeholder="请输入你的学生证号" name="ID_stu" id="ID_stu">	
	                 	<h3><em class="redstar">*</em>身份证号 </h3>
	                    <input type="text" value="" placeholder="请输入你的身份证号" name="ID_num" id="ID_num">	
	                    
	                    <input type="submit" value="完成" id="bindSubmit">
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
	                    </tbody></table>
                    </div>
                </dd>
            </dl>
       	</div>
       	<div id="footer">
		<div class="wrapper">
			<a href="#" target="_blank" rel="nofollow">联系我们</a>
		    <a href="#" target="_blank">互联网公司导航</a>
		    <a href="#" target="_blank" rel="nofollow">蜜蜂微博</a>
		    <a class="footer_qr" href="#" rel="nofollow">蜜蜂微信<i></i></a>
			<div class="copyright">&copy;2016-2017 Bee <a target="_blank" href="#">京ICP备14023790号-2</a></div>
		</div>
	</div>
<script type="text/javascript">
    $(document).ready(function(e) {
    	
    	//验证表单
    	$("#bindForm").validate({
    		 rules: {
 	        	ID_num:{
 	        		required:true,
 	        		rangelength:[18,18]
 	        	},
 	        	ID_stu:{
 	        		required:true
 	        	}
    		 },
    		messages:{
    			ID_num:{
    				required:"请输入您的身份证号",
    				rangelength:"请输入有效的证件号码"
    			},
    			ID_stu:{
    				required:"请输入您的学生证号"
    			}
    		}
    	})
    });
    </script>
</body>
=======
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
	
	<title>学生认证</title>

	<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
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
    			<img src="${ctx }/style/images/logo.png" width="229" height="43" alt="蜜蜂招聘-专注家教招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx }/index1.jsp">首页</a></li>
    			<li ><a href="${ctx }/joblist" >职位列表</a></li>
	    		<li ><a href="${ctx }/jiaoyuan" rel="nofollow">教员列表</a></li>
	    		<li ><a href="" rel="nofollow">发布职位</a></li>
	    	</ul>
        	
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
                	
	                <form class="corp_form" id="bindForm" name="bindForm" action="${ctx }/certification/tuser" method="post">
	                 	<h3><em class="redstar">*</em>真实姓名 <span>（请填写真实姓名，方便系统校验使用）</span></h3>
	                    <input type="text" value="" placeholder="请输入你的真实姓名" maxlength="49" name="name" id="name">	
	                    <h3><em class="redstar">*</em>学生证号 </h3>
	                    <input type="text" value="" placeholder="请输入你的学生证号" name="ID_stu" id="ID_stu">	
	                 	<h3><em class="redstar">*</em>身份证号 </h3>
	                    <input type="text" value="" placeholder="请输入你的身份证号" name="ID_num" id="ID_num">	
	                    
	                    <input type="submit" value="完成" id="bindSubmit">
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
	                    </tbody></table>
                    </div>
                </dd>
            </dl>
       	</div>
       	<div id="footer">
		<div class="wrapper">
			<a href="#" target="_blank" rel="nofollow">联系我们</a>
		    <a href="#" target="_blank">互联网公司导航</a>
		    <a href="#" target="_blank" rel="nofollow">蜜蜂微博</a>
		    <a class="footer_qr" href="#" rel="nofollow">蜜蜂微信<i></i></a>
			<div class="copyright">&copy;2016-2017 Bee <a target="_blank" href="#">京ICP备14023790号-2</a></div>
		</div>
	</div>
<script type="text/javascript">
    $(document).ready(function(e) {
    	
    	//验证表单
    	$("#bindForm").validate({
    		 rules: {
 	        	ID_num:{
 	        		required:true,
 	        		rangelength:[18,18]
 	        	},
 	        	ID_stu:{
 	        		required:true
 	        	}
    		 },
    		messages:{
    			ID_num:{
    				required:"请输入您的身份证号",
    				rangelength:"请输入有效的证件号码"
    			},
    			ID_stu:{
    				required:"请输入您的学生证号"
    			}
    		}
    	})
    });
    </script>
</body>
>>>>>>> 7314ee1be915242474e8771eb8ff06c434fc7bfe
</html>