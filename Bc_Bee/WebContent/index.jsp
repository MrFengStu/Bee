<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="${ctx }/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>蜜蜂网-最专业的家教平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
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
    <script type="text/javascript" src="${ctx }/style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="${ctx }/style/js/conv.js"></script>
<script type="text/javascript">
	function login() {
		document.loginForm.submit();
	}
</script>
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="" class="logo">
    			<img src="${ctx }/style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current"><a href="${ctx }/index.jsp">首页</a></li>
    			<li ><a href="${ctx }/joblist" >职位列表</a></li>
    			<li ><a href="${ctx }/jiaoyuan" >教员列表</a></li>
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
    </div><!-- end #header -->
    <div id="container">
        <div class="contentleft">	
		<div id="sidebar">
			<div class="mainNavs">
						
									<div class="menu_box">
						<div class="menu_main">
							<h2>小学家教<span></span></h2>
				 
			</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="h"${ctx }/search1?&kd=小学书法 ">书法</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=小学硬笔书法 "
										   		
										   		 									            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>硬笔书法</a>
							            										   	<a href="${ctx }/search1?&kd=小学软笔书法 "
										   		
										   		 									            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>软笔书法</a>
							            										   	<a href="${ctx }/search1?&kd=小学行书 "
										   		
										   		 									            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>行书</a>
							            										   	<a href="${ctx }/search1?&kd=小学楷书 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>楷书</a>
							            										   	<a href="${ctx }/search1?&kd=小学草书 "
										   		
										   		 									            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>草书</a>
							            										   	<a href="${ctx }/search1?&kd=小学硬笔书法 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>隶书</a>
							            										   	 
							            										   	
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=小学舞蹈 ">       								            						        				舞蹈
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=小学爵士舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>爵士舞</a>
							            										   	<a href="${ctx }/search1?&kd=小学街舞 "						            											            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>街舞</a>
							            										   	<a href="${ctx }/search1?&kd=小学民族舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>民族舞</a>
							            										   	<a href="${ctx }/search1?&kd=小学芭蕾舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>芭蕾舞</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=小学音乐 ">		        									            								            							            								            							            								            							            								            							            								            							            								            						        				音乐
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=小学小提琴 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>小提琴</a>
							            										   	<a href="${ctx }/search1?&kd=小学钢琴 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>钢琴</a>
							            										   	<a href="${ctx }/search1?&kd=小学古筝 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>古筝</a>
							            										   	<a href="${ctx }/search1?&kd=小学吉他 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>吉他</a>
							            										   	<a href="${ctx }/search1?&kd=小学长笛 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>长笛</a>
							            										   	<a href="${ctx }/search1?&kd=小学架子鼓 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>架子鼓</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=小学学科 ">			        									            								            							            								            							            								            							            								            							            								            							            								            						        			学科
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=小学数学 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>数学</a>
							            										   	<a href="${ctx }/search1?&kd=小学语文 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>语文</a>
							            										   	<a href="${ctx }/search1?&kd=小学英语 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>英语</a>
							            										   	<a href="${ctx }/search1?&kd=小学写作 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>写作</a>
							            										   	 
							            							        </dd>
					        	</dl>
													    	
													</div>
					</div>
					<div class="menu_box">
						<div class="menu_main">
							<h2>初中家教 <span></span></h2>
				        </div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=初中书法 ">				        									            								            							            								            							            								            							            								            							            								            							            								            						        				书法
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=初中硬笔书法 "
										   		 									            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            										   		
										   	>硬笔书法</a>
							            										   	<a href="${ctx }/search1?&kd=初中软笔书法 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>软笔书法</a>
							            										   	<a href="${ctx }/search1?&kd=初中楷书 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>楷书</a>
							            										   	<a href="${ctx }/search1?&kd=初中行书 "
										   		
										   		 									            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            										   		
										   	>行书</a>
							            										   	<a href="${ctx }/search1?&kd=初中草书 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>草书</a>
							            										   	<a href="${ctx }/search1?&kd=初中隶书 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>隶书</a>
							            										   	 
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=初中舞蹈 ">				        									            								            							            								            							            								            							            								            							            								            							            								            						        				舞蹈
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=初中爵士舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>爵士舞</a>
							            										   	<a href="${ctx }/search1?&kd=初中芭蕾舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>芭蕾舞</a>
										   	<a href="${ctx }/search1?&kd=初中街舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>街舞</a>
										   	<a href="${ctx }/search1?&kd=初中民族舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>民族舞</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=初中学科 ">					        									            								            							            								            								            							            								            							            								            							            								            							            								            						        			学科
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=初中数学 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>数学</a>
							            										   	<a href="${ctx }/search1?&kd=初中语文 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>语文</a>
										   	<a href="${ctx }/search1?&kd=初中英语 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>英语</a>
										   	<a href="${ctx }/search1?&kd=初中物理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>物理</a>
										   	<a href="${ctx }/search1?&kd=初中化学 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>化学</a>
										   	<a href="${ctx }/search1?&kd=初中生物 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>生物</a>
										   	<a href="${ctx }/search1?&kd=初中历史 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>历史</a>
										   	<a href="${ctx }/search1?&kd=初中政治 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>政治</a>
										   	<a href="${ctx }/search1?&kd=初中地理 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>地理</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>高中家教 <span></span></h2>
				        </div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=高中书法 ">					        									            								            							            								            							            								            							            								            							            								            							            								            						        				书法
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=高中硬笔书法 "
										   		
										   		 									            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            										   		
										   	>硬笔书法</a>
							            										   	<a href="${ctx }/search1?&kd=高中软笔书法 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>软笔书法</a>
							            										   	<a href="${ctx }/search1?&kd=高中楷书 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>楷书</a>
							            										   	<a href="${ctx }/search1?&kd=高中行书 "
										   		
										   		 									            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            										   		
										   	>行书</a>
							            										   	<a href="${ctx }/search1?&kd=高中草书"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>草书</a>
							            										   	<a href="${ctx }/search1?&kd=高中隶书 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>隶书</a>
							            										   	 
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=高中舞蹈 ">					        									            								            							            								            							            								            							            								            							            								            							            								            						        				舞蹈
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=高中爵士舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>爵士舞</a>
							            										   	<a href="${ctx }/search1?&kd=高中芭蕾舞"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>芭蕾舞</a>
										   	<a href="${ctx }/search1?&kd=高中街舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>街舞</a>
										   	<a href="${ctx }/search1?&kd=高中民族舞 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>民族舞</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="${ctx }/search1?&kd=高中学科 ">					        									            								            							            								            								            							            								            							            								            							            								            							            								            						        学科
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="${ctx }/search1?&kd=高中数学 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>数学</a>
							            										   	<a href="${ctx }/search1?&kd=高中语文 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>语文</a>
										   	<a href="${ctx }/search1?&kd=高中英语 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>英语</a>
										   	<a href="${ctx }/search1?&kd=高中物理 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>物理</a>
										   	<a href="${ctx }/search1?&kd=高中化学 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>化学</a>
										   	<a href="${ctx }/search1?&kd=高中生物"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>生物</a>
										   	<a href="${ctx }/search1?&kd=高中历史 "
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>历史</a>
										   	<a href="${ctx }/search1?&kd=高中政治"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>政治</a>
										   	<a href="${ctx }/search1?&kd=高中地理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>地理</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									
									
									
							</div>
			<a class="subscribe" href="" target="_blank">订阅职位</a>
		</div>
		<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
		    <div class="load">
		<div class="login_box">
        	<form name="loginForm" id="loginForm" action="${ctx }/login/indexuser" method="post">
				<input type="text" id="email" name="email" value="" tabindex="1" placeholder="请输入登录邮箱地址" />
			  	<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
				<span class="error" style="display:none;" id="beError"></span>
			    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
			    <a href="" class="fr" target="_blank">忘记密码？</a>
				<a style="color:#fff;" onclick="login()" class="submitLogin" title="登 &nbsp; &nbsp; 录">登 &nbsp; &nbsp; 录</a>

			    
			    <input type="hidden" id="callback" name="callback" value=""/>
                <input type="hidden" id="authType" name="authType" value=""/>
                <input type="hidden" id="signature" name="signature" value=""/>
                <input type="hidden" id="timestamp" name="timestamp" value=""/>
			</form>
			<div class="login_right">
				 
				<a  href="${ctx}/register.jsp"  class="registor_now">立即注册</a>
			    <div class="login_others">使用以下帐号直接登录:</div>
			    <a  href=""  target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
			    <a  href=""  class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
			</div>
        </div>
		</div><%} %>
		<table height="200px">
		<td></td>
		</table>
		<div class="star">
		<h1>明星家教</h1>
		<div class="starlist">
			<img src="${ctx }/style/images/figure.gif" alt="#">
			<a href="#">李教员[女]</a>
				<img src="${ctx }/style/images/lstar.gif" alt="#" id="lstar">			
			<p>初中理综</p>
		</div>
		<div class="starlist">
			<img src="${ctx }/style/images/figure.gif" alt="#">
			<a href="#">李教员[女]</a>
				<img src="${ctx }/style/images/lstar.gif" alt="#" id="lstar">			
			<p>初中理综</p>
		</div>
		<div class="starlist">
			<img src="${ctx }/style/images/figure.gif" alt="#">
			<a href="#">李教员[女]</a>
				<img src="${ctx }/style/images/lstar.gif" alt="#" id="lstar">			
			<p>初中理综</p>
		</div>
		<div class="starlist">
			<img src="${ctx }/style/images/figure.gif" alt="#">
			<a href="#">李教员[女]</a>
				<img src="${ctx }/style/images/lstar.gif" alt="#" id="lstar">			
			<p>初中理综</p>
		</div>
		<div class="starlist">
			<img src="${ctx }/style/images/figure.gif" alt="#">
			<a href="#">李教员[女]</a>
				<img src="${ctx }/style/images/lstar.gif" alt="#" id="lstar">			
			<p>初中理综</p>
		</div>
		<div class="starlist">
			<img src="${ctx }/style/images/figure.gif" alt="#">
			<a href="#">李教员[女]</a>
				<img src="${ctx }/style/images/lstar.gif" alt="#" id="lstar">			
			<p>初中理综</p>
		</div>


	</div>
		</div>
        <div class="content">	
	        			<div id="search_box">
		<form id="searchForm" name="searchForm" action="${ctx }/search1" method="post">
        <ul id="searchType">
        	        	<li data-searchtype="1" class="type_selected">职位</li>
        	<!--  <li data-searchtype="4">公司</li>-->
        	        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" name = "kd"  tabindex="1" value=""  placeholder="请输入职位名称，如：小学家教"  />
        <input type="hidden" name="spc" id="spcInput" value=""/>
        <input type="hidden" name="pl" id="plInput" value=""/>
        <input type="hidden" name="gj" id="gjInput" value=""/>
        <input type="hidden" name="xl" id="xlInput" value=""/>
        <input type="hidden" name="yx" id="yxInput" value=""/>
        <input type="hidden" name="gx" id="gxInput" value="" />
        <input type="hidden" name="st" id="stInput" value="" />
        <input type="hidden" name="labelWords" id="labelWords" value="" />
        <input type="hidden" name="lc" id="lc" value="" />
        <input type="hidden" name="workAddress" id="workAddress" value=""/>
                <input type="hidden" name="city" id="cityInput" value=""/>
                <input type="submit" id="search_button" value="搜索" />
				
    </form>
</div>
<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<script type="text/javascript" src="${ctx }/style/js/search.min.js"></script>
<dl class="hotSearch">
	<dt>热门搜索：</dt>
	<dd><a href="">理综</a></dd>
	<dd><a href="">文综</a></dd>
	<dd><a href="">高三英语</a></dd>
	<dd><a href="">作业辅导</a></dd>
	<dd><a href="">小学全科</a></dd>
	<dd><a href="">历史</a></dd>
</dl>			
			<div id="home_banner">
	            <ul class="banner_bg">
	            		                <li  class="banner_bg_1 current" >
	                    <a href="" target="_blank"><img src="${ctx }/style/images/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg" width="612" height="160" alt="好买基金——来了就给100万" /></a>
	                </li>
	                	                <li  class="banner_bg_2" >
	                    <a href="" target="_blank"><img src="${ctx }/style/images/c9d8a0756d1442caa328adcf28a38857.jpg" width="612" height="160" alt="世界杯放假看球，老板我也要！" /></a>
	                </li>
	                	                <li  class="banner_bg_3" >
	                    <a href="" target="_blank"><img src="${ctx }/style/images/d03110162390422bb97cebc7fd2ab586.jpg" width="612" height="160" alt="出北京记——第一站厦门" /></a>
	                </li>
	                	            </ul>
	            <div class="banner_control">
	                <em></em> 
	                <ul class="thumbs">
	                		                    <li  class="thumbs_1 current" >
	                        <i></i>
	                        <img src="${ctx }/style/images/4469b1b83b1f46c7adec255c4b1e4802.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_2" >
	                        <i></i>
	                        <img src="${ctx }/style/images/381b343557774270a508206b3a725f39.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_3" >
	                        <i></i>
	                        <img src="${ctx }/style/images/354d445c5fd84f1990b91eb559677eb5.jpg" width="113" height="42" />
	                    </li>
	                    	                </ul>
	            </div>
	        </div><!--/#main_banner-->
			
        	<ul id="da-thumbs" class="da-thumbs">
	        		        		<li >
	                    <a href="" target="_blank">
	                        <img src="${ctx }/style/images/a254b11ecead45bda166afa8aaa9c8bc.jpg" width="113" height="113" alt="联想" />
	                        <div class="hot_info">
	                        	<h2 title="联想">联想</h2>
	                            <em></em>
	                            <p title="世界因联想更美好">
	                            	世界因联想更美好
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="" target="_blank">
	                        <img src="${ctx }/style/images/c75654bc2ab141df8218983cfe5c89f9.jpg" width="113" height="113" alt="淘米" />
	                        <div class="hot_info">
	                        	<h2 title="淘米">淘米</h2>
	                            <em></em>
	                            <p title="将心注入 追求极致">
	                            	将心注入 追求极致
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="" target="_blank">
	                        <img src="${ctx }/style/images/2bba2b71d0b0443eaea1774f7ee17c9f.png" width="113" height="113" alt="优酷土豆" />
	                        <div class="hot_info">
	                        	<h2 title="优酷土豆">优酷土豆</h2>
	                            <em></em>
	                            <p title="专注于视频领域，是中国网络视频行业领军企业">
	                            	专注于视频领域，是中国网络视频行业领军企业
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="" target="_blank">
	                        <img src="${ctx }/style/images/f4822a445a8b495ebad81fcfad3e40e2.jpg" width="113" height="113" alt="思特沃克" />
	                        <div class="hot_info">
	                        	<h2 title="思特沃克">思特沃克</h2>
	                            <em></em>
	                            <p title="一家全球信息技术服务公司">
	                            	一家全球信息技术服务公司
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="" target="_blank">
	                        <img src="${ctx }/style/images/5caf8f9631114bf990f87bb11360653e.png" width="113" height="113" alt="奇猫" />
	                        <div class="hot_info">
	                        	<h2 title="奇猫">奇猫</h2>
	                            <em></em>
	                            <p title="专注于移动互联网、互联网产品研发">
	                            	专注于移动互联网、互联网产品研发
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li  class="last" >
	                    <a href="" target="_blank">
	                        <img src="${ctx }/style/images/c0052c69ef4546c3b7d08366d0744974.jpg" width="113" height="113" alt="堆糖网" />
	                        <div class="hot_info">
	                        	<h2 title="堆糖网">堆糖网</h2>
	                            <em></em>
	                            <p title="分享收集生活中的美好，遇见世界上的另外一个你">
	                            	分享收集生活中的美好，遇见世界上的另外一个你
	                            </p>
	                        </div>
	                    </a>
	                </li>
                            </ul>
            
            <ul class="reset hotabbing">
            	            		<li class="current">热门职位</li>
            	            	<li>最新职位</li>
            </ul>
            <div id="hotList">
	            <ul class="hot_pos reset">
	            <c:forEach items="${recinfo }" var="rf">
	            		            		            				            		<li class="clearfix">
		            																		            					                	<div class="hot_pos_l">
			                    <div class="mb10">
			                        	<a href="${ctx }/job1?&id=${rf.rlId }"target="_blank">${rf.jobTitle }</a> 
			                            &nbsp;
			                            <span class="c9">${rf.workArea }</span>
			                    </div>
			                        <span><em class="c7">结算方式： </em>${rf.salary}</span>
			                        <span><em class="c7">学历：</em> 大学本科</span> <br />
			                        <span><em class="c7">专业： </em>软件专业</span>
			                        <br />
			                
			                     
				                    <span>1天前发布</span>
			                        <!-- <a  class="wb">分享到微博</a> -->
			                    </div>
			                	<div class="hot_pos_r">
			                    	<div class="mb10 recompany"><a href="${ctx }/job1?&id=${rf.rlId }" target="_blank">${rf.contacts}</a></div>
			                        <span><em class="c7">地址：</em>裕华区中山路256号</span>
			                         <br />
			                        <span><em class="c7">工作时间：</em>周六下午</span><br/>
			                       	<div class="apply"><a href="${ctx }/mail/indexadd?RlId=${rf.rlId}" target="_blank">投个简历</a>
			                        				                        </div>		                    
			                       	</div>
			                 </li>
			                 </c:forEach>	                		                	           	            	            	                         	                		                	           	            	            	           	           	        	                	            				            		
	                		                	                
	             <a href="${ctx }/joblist" class="btn fr" target="_blank">查看更多</a>
	        </ul>
	            <ul class="hot_pos hot_posHotPosition reset" style="display:none;">
	            <c:forEach items="${recinfo1 }" var="rf1">
	            		            		            				            		<li class="clearfix">
		            																		            					                	<div class="hot_pos_l">
			                    <div class="mb10">
			                        	<a href="${ctx }/job1?&id=${rf.rlId }" target="_blank">${rf1.jobTitle }</a> 
			                            &nbsp;
			                            <span class="c9">${rf1.workArea }</span>
			                    </div>
			                        <span><em class="c7">结算方式： </em>${rf1.salary}</span>
			                        <span><em class="c7">学历：</em> 大学本科</span> <br />
			                        <span><em class="c7">专业： </em>软件专业</span>
			                        <br />
			                
			                     
				                    <span>1天前发布</span>
			                        <!-- <a  class="wb">分享到微博</a> -->
			                    </div>
			                	<div class="hot_pos_r">
			                    	<div class="mb10 recompany"><a href="${ctx }/job1?&id=${rf.rlId }" target="_blank">${rf1.contacts}</a></div>
			                        <span><em class="c7">地址：</em>裕华区中山路256号</span>
			                         <br />
			                        <span><em class="c7">工作时间：</em>周六下午</span>
			                        			                        <br /><button style="width:90px;height:25px;background:orange;border-color:orange;">投个简历</button>	
			                    </div>
			                 </li>
			                 </c:forEach>
	   							 <a href="${ctx }/joblist" class="btn fr" target="_blank">查看更多</a>
	            </ul>
            </div>
            
            <div class="clear"></div>
			<div id="linkbox">
			    <dl>
			        <dt>友情链接</dt>
			        <dd>
			        		<a href="" target="_blank">住趣家居网</a> <span>|</span>
			        		<a href="" target="_blank">人人都是产品经理</a> <span>|</span>
			        		<a href="" target="_blank">互联网er的早读课</a> <span>|</span>
			                <a href="" target="_blank">猎云网</a> <span>|</span>
			        		<a href="" target="_blank">UCloud</a> <span>|</span>
			          		<a href="" target="_blank">iconfans</a>  <span>|</span>
			          		<a href="" target="_blank">html5梦工厂</a>   <span>|</span>
			          		<a href="" target="_blank">手游那点事</a> 
			          		
			          		<a href="" target="_blank">源码之家</a> <span>|</span>
			          		<a href="" target="_blank">uehtml</a> <span>|</span>
			          		<a href="" target="_blank">W3CPlus</a> <span>|</span>
			          		<a href="" target="_blank">盒子UI</a> <span>|</span>
			          		<a href="" target="_blank">uimaker</a> <span>|</span>
			          		<a href="" target="_blank">互联网的一些事</a> <span>|</span>
			          		<a href="" target="_blank">传课网</a> <span>|</span>
			          		<a href="" target="_blank">安卓开发</a> <span>|</span>
			          		<a href="" target="_blank">安卓开发论坛</a> 
			          		<a href="" target="_blank" >360安全网址导航</a> <span>|</span>
			          		<a href="" target="_blank" >360安全浏览器</a> <span>|</span>
			          		<a href="" target="_blank" >hao123上网导航</a> <span>|</span>
			          		<a href="" target="_blank" >互联网创业</a><span>|</span>
			          		<a href="" target="_blank" >众筹网</a><span>|</span>
			          		<a href="" target="_blank" >马克互联网</a><span>|</span>
			          		<a href="" target="_blank" >巢湖英才网</a>
			          		
			          		<a href="" target="_blank" >创意服务外包</a><span>|</span>
			          		<a href="" target="_blank" >thinkphp</a><span>|</span>
			          		<a href="" target="_blank" >创新派</a><span>|</span>

			          		<a href="" target="_blank" >W3Cshare</a><span>|</span>
			          		<a href="" target="_blank" >论文发表网</a><span>|</span>
			          		<a href="" target="_blank" >199it</a><span>|</span>

			          		<a href="" target="_blank" >市场部网</a><span>|</span>
			          		<a href="" target="_blank" >美图公司</a><span>|</span>
			          		<a href="" target="_blank" >Teambition</a>
			          		<a href="" target="_blank" >欧朋浏览器</a><span>|</span>
			          		<a href="" target="_blank">网络广告人社区</a>
			          		<a href="" target="_blank" class="more">更多</a>
			        </dd>
			    </dl>
			</div>
        </div>	
 	    <input type="hidden" value="" name="userid" id="userid" />
 		<!-- <div id="qrSide"><a></a></div> -->
<!--  -->

<!-- <div id="loginToolBar">
	<div>
		<em></em>
		<img src="style/images/footbar_logo.png" width="138" height="45" />
		<span class="companycount"></span>
		<span class="positioncount"></span>
		<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
		<div class="right">
			<a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
		</div>
		<input type="hidden" id="cc" value="16002" />
		<input type="hidden" id="cp" value="96531" />
	</div>
</div>
 -->
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="h/reset.html" class="fr">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有拉勾帐号？</div>
			<a href="register.html" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
		</div>
    </div><!--/#loginPop-->
</div>
<!------------------------------------- end ----------------------------------------->
<script type="text/javascript" src="${ctx }/style/js/Chart.min.js"></script>
<script type="text/javascript" src="${ctx }/style/js/home.min.js"></script>
<script type="text/javascript" src="${ctx }/style/js/count.js"></script>
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="#" target="_blank" rel="nofollow">联系我们</a>
		    <a href="h/af/zhaopin.html" target="_blank">工作地址导航</a>
		    <a href="#" target="_blank" rel="nofollow">蜜蜂微博</a>
		    <a class="footer_qr" href="#" rel="nofollow">蜜蜂微信<i></i></a>
			<div class="copyright">&copy;2016-2017 Bee <a target="_blank" href="#">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script type="text/javascript" src="${ctx }/style/js/core.min.js"></script>
<script type="text/javascript" src="${ctx }/style/js/popup.min.js"></script>

<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>	