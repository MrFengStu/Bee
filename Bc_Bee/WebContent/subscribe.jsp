<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script id="allmobilize" charset="utf-8" src="${ctx }/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>订阅-蜜蜂网-最专业的大学生家教招聘平台</title>

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
<!--var ctx = "h";-->
console.log(1);
</script>
<link rel="Shortcut Icon" href="${ctx }/images/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/style.css"/>
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
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="${ctx }/index.jsp" class="logo">
    			<img src="${ctx }/style/images/logo.png" width="229" height="43" alt="蜜蜂招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx }/index.jsp">首页</a></li>
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
        	  	
        <div class="clearfix">
            <div class="content_l">
            	<h1>我的职位订阅</h1>
            	            		            
	           <!--      -->
          		<input type="hidden" id="orderCount" value="0" />
          	
                <form id="subForm"  >
                	<input type="hidden" value="" name="id" id="orderId" />
	                <div class="s_form">
	                	<p>筛选下面的职位订阅条件，实现精准匹配的个性化职位定制，我们帮你挑工作！</p>
	                    <dl>
	                    	<dt>
	                        	<h3>接收邮箱  <i class="rss_circle"></i>&nbsp; 发送周期 <em></em><span>（必填）</span></h3>
	                        </dt>
	                        <dd>
	                        	<input type="text" id="subEmail" name="email" placeholder="请输入接收邮箱" value="" />	
	                        	<span id="emailError" class="error" style="display:none;">请输入接收邮箱</span>
	                        </dd>
	                        <dd>
	                        	<input type="hidden" id="select_day_hidden" name="sendMailPer" value="" />
	                       		<ul class="s_radio clearfix">
	                       				                            		<li title="3">3天</li>
	                            		                            		<li title="7">7天</li>
	                            		                            </ul> 	
	                            <span id="sendError" class="error" style="display:none;">请选择发送周期</span>
	                        </dd>
	                    </dl>
	                    <dl>
	                    	<dt>
	                        	<h3>职位名称 <em></em><span>（必填）</span></h3>	
	                        </dt>
	                        <dd>
	                        	<input type="hidden" id="select_job_hidden" name="positionName" value="" />
	                       		<input type="button" class="select" id="select_job" value="请选择职位名称" />
	                       		 <div id="sub_box_job" class="dn">
	                            	<dl>
		                                	<dt>家教</dt>
		                                    <dd>
		                                    	<ul class="reset job_main">
		                                            <li>
			                                            	小学
			                                            	<ul class="reset job_sub dn">
			                                            		<li>数学</li>
													        	<li>英语</li>
			                                            		<li>语文</li>
													        	<li>全科</li>
													        	<li>其他</li>
													        </ul>
			                                        </li>
		                                            <li>
			                                            	初中
			                                           		<ul class="reset job_sub dn">
			                                            		<li>数学</li>
													        	<li>英语</li>
			                                            		<li>语文</li>
													        	<li>物理</li>
													        	<li>化学</li>
													        	<li>地理</li>
													        	<li>生物</li>
													        	<li>历史</li>
													        	<li>政治</li>
													        	<li>舞蹈</li>
													        	<li>音乐</li>
													        	<li>计算机</li>
													        	<li>其他</li>
													       	</ul>
			                                       </li>
		                                           <li>
			                                            	高中
			                                            	<ul class="reset job_sub dn">
			                                            		<li>数学</li>
													        	<li>英语</li>
			                                            		<li>语文</li>
													            <li>物理</li>
													            <li>化学</li>
													            <li>地理</li>
													            <li>生物</li>
													            <li>历史</li>
													            <li>政治</li>
													            <li>舞蹈</li>
													            <li>音乐</li>
													            <li>计算机</li>
													            <li>其他</li>
													        </ul>
			                                      </li>
		                                          <li>
			                                            	其他
			                                            	<ul class="reset job_sub dn">
			                                            	<li></li>
			                                            	<li></li>
			                                            	<li></li>
													        </ul>
			                                      </li>
		                                     	</ul>
		                                    </dd>
		                                </dl>
		                            	<dl>
		                                	<dt>发单</dt>
		                                    <dd>
		                                    	<ul class="reset job_main">
		                                            <li>
			                                            	校区内
			                                            	<ul class="reset job_sub dn">
			                                            		<li>河北师范大学</li>
													        	<li>河北科技大学</li>
													        	<li>汇华学院</li>
													        </ul>
			                                        </li>
			                                        <li>
			                                            	校区外
			                                            	<ul class="reset job_sub dn">
			                                            		<li>南焦客运站</li>
													        	<li>火车站</li>
													        	<li></li>
													        </ul>
			                                        </li>
			                                    </ul>
		                                    </dd>
		                                </dl>
		                            	                            </div>
	                            <span id="positionError" class="error" style="display:none;">请选择职位名称 </span>		
	                        </dd>
	                    </dl>
	                    <dl>
	                    	<dt>
	                        	<h3>期望工作地点 <em></em><span>（必填）</span></h3>
	                        </dt>
	                        <dd>
	                        	<input type="hidden" id="select_city_hidden" name="city" value="" />
	                            <ul class="s_radio clearfix">
	                            	<li title="长安区">长安区</li>
	                            	<li title="桥西区">桥西区</li>
	                            	<li title="新华区">新华区</li>
	                            	<li title="裕华区">裕华区</li>
	                            	<li title="栾城区">栾城区</li>
	                            	<li title="藁城区">藁城区</li>
	                            	<li title="鹿泉区">鹿泉区</li>
	                            	
	                            </ul> 	
	                            <span id="cityError" class="error" style="display:none;">请选择工作地点 </span>	
	                        </dd>
	                    </dl>
	                    <dl>
	                    	<dt>
	                        	<h3>学生性别 <em></em></h3>
	                        </dt>
	                        <dd>
	                        	<input type="hidden" id="select_stage_hidden" name="financeStage" value="" />
	                        	<ul class="s_tips clearfix s_radio_sp">
	                    <!--        <li title="初创型">初创型<span class="dn">刚成立或已获得天使投资</span></li>
	                            	<li title="成长型">成长型<span class="dn">已获得A轮/B轮/C轮融资</span></li>
	                            	<li title="成熟型">成熟型<span class="dn">有D轮及以上的融资</span></li>
	                            	<li title="上市公司">上市公司<span class="dn">上市公司</span></li>
	                      -->
	                      			<li>男</li>
	                      			<li>女</li>
	                      			<li>不限</li>
	                           </ul> 
	                            <span id="stageError" class="error" style="display:none;">请选择学生性别 </span>		
	                        </dd>
	                    </dl>
	                    <dl>
	                    	<dt>
	          <!--         	<h3>行业领域 <em></em></h3>
	                        </dt>
	                        <dd>
	                        	<input type="hidden" id="select_industry_hidden" name="industryField" value="" />
	                            <input type="button" class="select" id="select_industry" value="请选择行业领域" />
	                            <div id="box_industry" class="dn">
	                            	<ul class="reset">
	                                		                                		<li>移动互联网</li>
	                                		                                		<li>电子商务</li>
	                                		                                		<li>社交</li>
	                                		                                		<li>企业服务</li>
	                                		                                		<li>O2O</li>
	                                		                                		<li>教育</li>
	                                		                                		<li>文化艺术</li>
	                                		                                		<li>游戏</li>
	                                		                                		<li>在线旅游</li>
	                                		                                		<li>金融互联网</li>
	                                		                                		<li>健康医疗</li>
	                                		                                		<li>生活服务</li>
	                                		                                		<li>硬件</li>
	                                		                                		<li>搜索</li>
	                                		                                		<li>安全</li>
	                                		                                		<li>运动体育</li>
	                                		                                		<li>云计算\大数据</li>
	                                		                                		<li>移动广告</li>
	                                		                                		<li>社会化营销</li>
	                                		                                		<li>视频多媒体</li>
	                                		                                		<li>媒体</li>
	                                		                                		<li>智能家居</li>
	                                		                                		<li>智能电视</li>
	                                		                                		<li>分类信息</li>
	                                		                                		<li>招聘</li>
	                                		                                </ul>
	                            </div>
	                            <span id="fieldError" class="error" style="display:none;">请选择行业领域 </span>	
	                        </dd>
	                    </dl>
	                     -->
	                    <dl>
	                    	<dt>
	                        	<h3>薪资范围（小时） <em></em></h3>
	                        </dt>
	                        <dd>
	                        	<input type="hidden" id="select_salary_hidden" name="salary" value="" />
	                            <input type="button" class="select" id="select_salary" value="请选择月薪范围" />
	                            <div id="box_salary" class="dn">
	                            	<ul class="reset">
	                                		                                		<li>30以下</li>
	                                		                                		<li>30-50</li>
	                                		                                		<li>5-100</li>
	                                		                                		<li>100以上</li>
	                                		                                		<li>15k-25k</li>
	                                		                                		<li>25k-50k</li>
	                                		                                		<li>50k以上</li>
	                                		                                </ul>
	                            </div>
	                       		<!-- <div>
	                                <input type="text" name="salaryMin" id="salary_low" placeholder="最低月薪" /> 
	                                <span>k</span>
	                            </div>
	                       		<div>
	                                <input type="text" name="salaryMax" id="salary_high" placeholder="最高月薪" /> 
	                                <span>k</span>
	                            </div>
	                            <span>请输入整数，如：4</span> -->
	                            <span id="salaryError" class="error" style="display:none;">请选择月薪范围 </span>	
	                        </dd>
	                    </dl>
	                    <span id="commonError" class="error" style="display:none;">系统异常</span>
	                    <input type="submit" class="btn_big" id="subSubmit" value="保 存" />
	                    <a href="javascript:void(0)" class="btn_cancel">取 消</a>
	                </div>
	        	</form>
            </div>	
            <div class="content_r">
            	<div class="subscribe_side mb20 c5">
                    <div class="why">我们为什么强烈推荐你</div>
                    <h2>订阅</h2>
                    <ul class="reset">
                    	<li class="sub1">帮助你节省浏览和筛选时间，快速找到适合的职位信息。</li>
                    	<li class="sub2">我们会严格按照你订阅的频次和条件给你发送邮件，并对你的个人信息绝对保密。</li>
                    </ul>
                </div>
            </div>
       	</div>
      <input type="hidden" value="" name="userid" id="userid" />

<!------------------------------------- 弹窗lightbox ----------------------------------------->
<div style="display:none;">	
	<!-- 
		登录帐号订阅成功
		1、已登录用户，且是自有用户，已验证，订阅职位<=1，提示订阅成功；接收邮箱默认为登录邮箱，可修改。
		2、已登录用户，但是第三方用户，订阅职位<=1，提示订阅成功；接收邮箱手动输入可修改。
		未登录帐号订阅成功 
		未登录用户，但填写的邮箱为已注册、已验证邮箱，且订阅职位<=1，订阅成功，点击确定显示登录框
	-->
		<div id="subscribeSuccessLogined" class="popup">
        	<h4>职位订阅成功！</h4>
        	<p>我们将定期发送订阅邮件至：<a></a>，请注意查收。</p>
            <table width="100%">
            	<tr>
                	<td align="center"><a href="subscribe.html" class="btn_s">确&nbsp;定</a></td>
                </tr>
            </table>
        </div><!--/#subscribeSuccessLogined-->
   	
   	<!-- 
		未登录未注册帐号订阅成功
		提示注册框
	-->
		<div id="subscribeSuccessRegister" class="popup" style="height:370px;">
        	<h4>职位订阅成功！</h4>
        	<p>我们将定期发送订阅邮件至：<a><em></em></a>，请注意查收。</p>
        	<hr>
        	<p>现在只需设置密码就可成功注册拉勾，并可长期保存及管理订阅信息。</p>
        	<form id="registerPopForm">
	            <table width="100%">
	            	<tr>
	                	<td>注册邮箱 :</td>
	                	<td><em></em></td>
	                </tr>
	                <tr>
	                	<td valign="top">注册密码 :</td>
	                	<td>
	                		<input type="password" name="password" id="psw"  placeholder="请输入注册密码" />
	                		<span class="error" style="display:none;" id="beError_register"></span>
	                	</td>
	                </tr>
	                <tr>
	                	<td></td>
	                	<td>
	                		<label class="fl" for="checkbox">
	                			<input type="checkbox" id="checkbox" name="checkbox" checked  class="checkbox valid" />
	                			我已阅读并同意<a href="h/privacy.html" target="_blank">《蜜蜂用户协议》</a>
	                		</label>
	                	</td>
	                </tr>
	            	<tr>
	            		<td></td>
	                	<td>
	                		<input type="submit" class="btn_s" value="注 册" />
	                	</td>
	                </tr>
	            </table>
	        </form>
        </div><!--/#subscribeSuccessRegister-->
        
     <!-- 
		未登录注册帐号订阅成功
		弹出框有登录按钮，提示登录
	-->
		<div id="subscribeSuccessLogin" class="popup">
        	<h4>职位订阅成功！</h4>
        	<p>我们将定期发送订阅邮件至：<a></a>，请注意查收。</p>
            <table width="100%">
            	<tr>
                	<td align="center"><a href="#loginPop" class="btn inline" title="登录">登 录</a></td>
                </tr>
            </table>
        </div><!--/#subscribeSuccessLogin-->
		
     <!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="h/reset.html" class="fr" target="_blank">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有蜜蜂帐号？</div>
			<a href="${ctx }/register.jsp" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="#" target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="#" class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
		</div>
    </div><!--/#loginPop-->
    
     <!--退订-->	
    <div id="cancelSub" class="popup">
       	<h4>确认要退订该订阅？</h4>
       	<table width="100%">
       		<tr>
       			<td align="center"><p>点击确认后你将不再收到蜜蜂为你提供的精准职位推送。</p></td>
       		</tr>
        	<tr>
            	<td align="center">
            		<input type="button" class="btn_s" id="confirmCancel" value="确认退订" />
            		<a href="javascript:void(0)" class="btn_s">取消</a>
            	</td>
            </tr>
        </table>
    </div><!--/#cancelSub-->
</div>
<!------------------------------------- end ----------------------------------------->

<script src="style/js/sub.min.js"></script>
<!-- 退订 | 从邮箱进来订阅页  -->

<!-- 订阅成功弹出注册框 | 从邮箱进来订阅页  -->

<!-- 订阅成功弹出登录框 | 从邮箱进来订阅页  -->

<!-- 从激活页点换个邮箱进入订阅页 -->
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="f828aecf8b80414491d138ca1190fb6d" />
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

<!--  -->

</body>
</html>