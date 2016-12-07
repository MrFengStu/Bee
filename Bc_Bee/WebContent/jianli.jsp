<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</script><script type="text/javascript" async="" src="${ctx }/style/js/conversion.js"></script><script src="${ctx }/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control"/>
<link  media="handheld" rel="alternate"/>
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
<title>用户-学生账户信息</title>
<meta content="23635710066417756375" property="qc:admins"/>

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
<!-- var ctx = "h"; -->
console.log(1);
</script>
<link href="${ctx }/images/favicon.ico" rel="Shortcut Icon"/>
<link href="${ctx }/style/css/style.css" type="text/css" rel="stylesheet"/>
<link href="${ctx }/style/css/external.min.css" type="text/css" rel="stylesheet"/>
<link href="${ctx }/style/css/popup.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="${ctx }/style/js/jquery.1.10.1.min.js"></script>
<script src="${ctx }/style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/ajaxfileupload.js"></script>
<script src="${ctx }/style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="${ctx }/style/js/conv.js" type="text/javascript"></script>
<script src="${ctx }/style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="">
    			<img width="229" height="43" alt="Bee-小蜜蜂家教平台" src="${ctx }/style/images/logo.png"/>
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="${ctx }/index.jsp">首页</a></li>
    			<li><a href="${ctx }/companylist.jsp">教员列表</a></li>
    			<li><a target="_blank" href="${ctx }/list.jsp">职位列表</a></li>
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
                <dd class="btm" style="display: none;"><a href="${ctx }/Invitation/send">我发出的邀请</a></dd>
                <dd style="display: none;"><a href="${ctx}/publish/jump">我要招人</a></dd>
                <dd style="display: none;"><a href="${ctx }/certification_parent.jsp">用户认证</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx }/login.jsp">退出</a></dd>
            </dl><%} %>
            <div class="dn" id="noticeTip">
            	<span class="bot"></span>
				<span class="top"></span>
				<a target="_blank" href="${ctx }/delivery.jsp"><strong>0</strong>条新投递反馈</a>
				<a class="closeNT" href="javascript:;"></a>
            </div>
       </div>
    </div><!-- end #header -->
    <div id="container">
        
  		<div class="clearfix">
            <div class="content_l">
            	<div class="fl" id="resume_name">
	            	<div class="nameShow fl">
	            		<h1 title="jason的简历">${name }的简历</h1>
	            		<span class="rename">重命名</span> | <a target="_blank" href="${ctx }/resumepreview/resume">预览</a>
            		</div>
            		
            	</div><!--end #resume_name-->
            	<div class="fr c5" id="lastChangedTime">最后一次更新：<span>${ReTime } </span></div><!--end #lastChangedTime-->
            	<div id="resumeScore">
            		<div class="score fl">
            			<canvas height="120" width="120" id="doughnutChartCanvas" style="width: 120px; height: 120px;"></canvas>
           				<div style="" class="scoreVal"><span>15</span>分</div>
            		</div>	
            		
            		<div class="which fl">
            			<div>兼职经历最能体现自己的能力，且完善后才可投递简历哦！</div>
            										<span rel="workExperience"><a>马上去完善</a></span>
						            		</div>
            	</div><!--end #resumeScore-->

            	<div class="profile_box" id="basicInfo">
            		<h2>基本信息</h2>
            		<span class="c_edit"></span>
            		<div class="basicShow">
            			            			<span>${name } |  ${sex } |  ${college } |  <br>
            			            			${tel } | ${email }<br>
            			</span>
            			<div class="m_portrait">
	                    	<div></div>
	                    	<img width="120" height="120" alt="jason" src="${ctx }/style/images/default_headpic.png"/>
	                    </div>
            		</div><!--end .basicShow-->

            		<div class="basicEdit dn">
            		<!-- 教员详细信息的修改 -->
            			<form id="profileForm"  action="${ctx }/jianli/jiben" method="post">
						  <table>
						    <tbody>
						    <tr>
						      	<td valign="top">
						        	<span class="redstar">*</span>
						      	</td> 
						      	<td>
						        	<input type="text" placeholder="姓名" value="jason" name="name" id="name"/>
						      	</td>
						      	<td valign="top"></td> 
						      	<td>
						          	<ul class="profile_radio clearfix reset">
						            	<li class="current">
						           	  	 	男<em></em>
						              		<input type="radio" checked="checked" name="gender" value="男"/> 
						            	</li>
						            	<li>
						            	  	女<em></em>
						              		<input type="radio" name="gender" value="女"/> 
						            	</li>
						          	</ul>  
						      </td>
						    </tr>
						    <tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td>
						      	<input type="hidden" id="topDegree" value="${grade }" name="topDegree"/>
						        <input type="button" value="${grade }" id="select_topDegree" class="profile_select_190 profile_select_normal"/>
								<div class="boxUpDown boxUpDown_190 dn" id="box_topDegree" style="display: none;">
						        	<ul>
						        		<li>大学一年级</li><li>大学二年级</li><li>大学三年级</li><li>大学四年级</li><li>其他</li>
						        								        	</ul>
						        </div>  
						      </td>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td>
				 		          <input type="text" placeholder="专业" value="${major }" name="grade" id="grade"/>
						      </td>
						    </tr>
	
						    <tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td colspan="3">
						        <input type="text" placeholder="手机号" value="${tel }" name="tel" id="tel"/>
						      </td>
						   	</tr>
						   	<tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td>
						      	<input type="text" placeholder="学校" value="${college }" name="college" id="college"/>
						      </td>
						       <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td colspan="2">
						          <input type="text" placeholder="接收面试通知的邮箱" value="${email }" name="email" id="email"/>
						      </td>
						    </tr>

						    <tr>
						      <td></td> 
						      <td colspan="3">
						          <input type="submit" value="保 存" class="btn_profile_save"/>
						          <a class="btn_profile_cancel" href="javascript:;">取 消</a>
						      </td>
						    </tr>
						</tbody>
					</table>
						</form><!--end #profileForm-->
						<div class="new_portrait">
						  <div class="portrait_upload" id="portraitNo">
						      <span>上传自己的头像</span>
						  </div>
						  <div class="portraitShow dn" id="portraitShow">
						    <img width="120" height="120" src=""/>
						    <span>更换头像</span>
						  </div>
						  <input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="img_check(this,'h/resume/uploadPhoto.json','headPic');" name="headPic" id="headPic" class="myfiles"/>
							<!-- <input type="hidden" id="headPicHidden" /> -->
						  	<em>
						                   
						                 大小： 5兆以内
						  	</em>
						  	<span style="display:none;" id="headPic_error" class="error"></span>
						</div><!--end .new_portrait-->
            		</div><!--end .basicEdit-->
            		<input type="hidden" id="nameVal" value="${name }"/>
            		<input type="hidden" id="genderVal" value="${sex }"/>
            		<input type="hidden" id="topDegreeVal" value="${grade }"/>
            		<input type="hidden" id="workyearVal" value="${major }"/>
            		<input type="hidden" id="currentStateVal" value=""/>
            		<input type="hidden" id="emailVal" value="${email }"/>
            		<input type="hidden" id="telVal" value="${tel }"/>
            		<input type="hidden" id="pageType" value="1"/> 
            	</div><!--end #basicInfo-->

            	<div class="profile_box" id="expectJob">
            		<h2>期望工作</h2>
            		            		<span class="c_edit dn"></span>
            		<div class="expectShow dn">
            		            			<span></span>
            		</div><!--end .expectShow-->
            		<div class="expectEdit dn">
            			<form id="expectForm"  action="${ctx }/jianli/jianliqw" method="post">
	            			<table>
	            				<tbody><tr>
	            					<td>
	            						<input type="hidden" id="expectCity" value="" name="expectCity"/>
	            				 		<input type="button" value="${area }" id="select_expectCity" class="profile_select_287 profile_select_normal"/>   
										<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity" style="display: none;">
								          	<dl>
								        		<dt>热门地区</dt>
								        		<dd>
									        		<span>裕华区</span><span>长安区</span><span>桥西区</span><span>桥东区</span>
									        		<span>新华区</span><span>其他地区</span>
									        	</dd>
								        	</dl>							        		
								       	</div>  
	            					</td>
	            					<td>
	            						<ul class="profile_radio clearfix reset">
	            							 <li>
									             	兼职<em></em>
									              	<input type="radio" name="type" value="兼职"/> 
									            </li>
									          
								       </ul> 
	            					</td>
	            				</tr>
	            				<tr>
	            					<td>
							        	<input type="text" placeholder="期望职位，如：小学数学" value="${sub }" name="expectPosition" id="expectPosition"/>
									</td>
	            					<td>
	            						<input type="hidden" id="expectSalary" value="" name="expectSalary"/>
	            						<input type="button" value="期望时薪" id="select_expectSalary" class="profile_select_287 profile_select_normal"/>
	            							<div class="boxUpDown boxUpDown_287 dn" id="box_expectSalary" style="display: none;">
								          	 	<ul>
								        		<li>30元以下</li><li>30元-50元</li><li>50元-100元</li><li>100元以上</li>
								        		</ul>
								         	</div>  
	            					</td>
	            				</tr>
	            				<tr>
	            					<td colspan="2">
										<input type="submit" value="保 存" class="btn_profile_save"/>
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
            			</form><!--end #expectForm-->
            		</div><!--end .expectEdit-->
            		            		<div class="expectAdd pAdd">
            		            			填写准确的期望工作能大大提高求职成功率哦…<br>
						快来添加期望工作吧！
						<span>添加期望工作</span>
            		</div><!--end .expectAdd-->
            		
            		<input type="hidden" id="expectJobVal" value=""/>
            		<input type="hidden" id="expectCityVal" value=""/>
            		<input type="hidden" id="typeVal" value=""/>
            		<input type="hidden" id="expectPositionVal" value=""/>
            		<input type="hidden" id="expectSalaryVal" value=""/>
            	</div><!--end #expectJob-->
            		
            	<div class="profile_box" id="workExperience">
            		<h2>兼职经历  <span> （投递简历时必填）</span></h2>
            		            		<span class="c_add dn"></span>
            		<div class="experienceShow dn">
            		            			<form class="experienceForm borderBtm dn">
	            			<table>
	            				<tbody><tr>
							      	
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							          	<input type="text" placeholder="职位名称，如：小学英语" name="positionName" class="positionName"/>
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearStart" value="" name="companyYearStart"/>
								        	<input type="button" value="开始年份" class="profile_select_139 profile_select_normal select_companyYearStart"/>
											<div class="box_companyYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            <li>2016</li><li>2015</li><li>2014</li><li>2013</li><li>2012</li><li>2011</li>
									        	<li>2010</li><li>2009</li><li>2008</li><li>2007</li><li>2006</li><li>2005</li>
									        	<li>2004</li><li>2003</li><li>2002</li><li>2001</li><li>2000</li><li>1999</li>
									        	<li>1998</li><li>1997</li><li>1996</li><li>1995</li><li>1994</li><li>1993</li>
									        	<li>1992</li><li>1991</li><li>1990</li><li>1989</li><li>1988</li><li>1987</li>
									        	<li>1986</li><li>1985</li><li>1984</li><li>1983</li><li>1982</li><li>1981</li>
									        	<li>1980</li><li>1979</li><li>1978</li><li>1977</li><li>1976</li><li>1975</li>
									        	<li>1974</li><li>1973</li><li>1972</li><li>1971</li><li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthStart" value="" name="companyMonthStart"/>
								        	<input type="button" value="开始月份" class="profile_select_139 profile_select_normal select_companyMonthStart"/>
											<div style="display: none;" class="box_companyMonthStart boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
									    </div>
									    <div class="clear"></div>
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearEnd" value="" name="companyYearEnd"/>
								        	<input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_companyYearEnd"/>
											<div class="box_companyYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            <li>至今</li>
									            <li>2016</li><li>2015</li><li>2014</li><li>2013</li><li>2012</li><li>2011</li>
									        	<li>2010</li><li>2009</li><li>2008</li><li>2007</li><li>2006</li><li>2005</li>
									        	<li>2004</li><li>2003</li><li>2002</li><li>2001</li><li>2000</li><li>1999</li>
									        	<li>1998</li><li>1997</li><li>1996</li><li>1995</li><li>1994</li><li>1993</li>
									        	<li>1992</li><li>1991</li><li>1990</li><li>1989</li><li>1988</li><li>1987</li>
									        	<li>1986</li><li>1985</li><li>1984</li><li>1983</li><li>1982</li><li>1981</li>
									        	<li>1980</li><li>1979</li><li>1978</li><li>1977</li><li>1976</li><li>1975</li>
									        	<li>1974</li><li>1973</li><li>1972</li><li>1971</li><li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthEnd" value="" name="companyMonthEnd"/>
								        	<input type="button" value="结束月份" class="profile_select_139 profile_select_normal select_companyMonthEnd"/>
											<div style="display: none;" class="box_companyMonthEnd boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
								        <div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save"/>
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="expId" value=""/>
            			</form><!--end .experienceForm-->
            			<ul class="wlist clearfix">/</ul>
            		</div><!--end .experienceShow-->
            		<div class="experienceEdit dn">
            			<form class="experienceForm" action="${ctx }/jianli/jianlijl" method="post">
	            			<table>
	            				<tbody><tr>
							      	
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							          	<input type="text" placeholder="${pte }" value="${pte }" name="positionName" class="positionName"/>
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearStart" value="" name="companyYearStart"/>
								        	<input type="button" value="开始年份" class="profile_select_139 profile_select_normal select_companyYearStart"/>
											<div class="box_companyYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            <li>2016</li><li>2015</li><li>2014</li><li>2013</li><li>2012</li><li>2011</li>
									        	<li>2010</li><li>2009</li><li>2008</li><li>2007</li><li>2006</li><li>2005</li>
									        	<li>2004</li><li>2003</li><li>2002</li><li>2001</li><li>2000</li><li>1999</li>
									        	<li>1998</li><li>1997</li><li>1996</li><li>1995</li><li>1994</li><li>1993</li>
									        	<li>1992</li><li>1991</li><li>1990</li><li>1989</li><li>1988</li><li>1987</li>
									        	<li>1986</li><li>1985</li><li>1984</li><li>1983</li><li>1982</li><li>1981</li>
									        	<li>1980</li><li>1979</li><li>1978</li><li>1977</li><li>1976</li><li>1975</li>
									        	<li>1974</li><li>1973</li><li>1972</li><li>1971</li><li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthStart" value="" name="companyMonthStart"/>
								        	<input type="button" value="开始月份" class="profile_select_139 profile_select_normal select_companyMonthStart"/>
											<div style="display: none;" class="box_companyMonthStart boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
									    </div>
									    <div class="clear"></div>
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearEnd" value="" name="companyYearEnd"/>
								        	<input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_companyYearEnd"/>
											<div class="box_companyYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            <li>至今</li>
									            <li>2016</li><li>2015</li><li>2014</li><li>2013</li><li>2012</li><li>2011</li>
									        	<li>2010</li><li>2009</li><li>2008</li><li>2007</li><li>2006</li><li>2005</li>
									        	<li>2004</li><li>2003</li><li>2002</li><li>2001</li><li>2000</li><li>1999</li>
									        	<li>1998</li><li>1997</li><li>1996</li><li>1995</li><li>1994</li><li>1993</li>
									        	<li>1992</li><li>1991</li><li>1990</li><li>1989</li><li>1988</li><li>1987</li>
									        	<li>1986</li><li>1985</li><li>1984</li><li>1983</li><li>1982</li><li>1981</li>
									        	<li>1980</li><li>1979</li><li>1978</li><li>1977</li><li>1976</li><li>1975</li>
									        	<li>1974</li><li>1973</li><li>1972</li><li>1971</li><li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthEnd" value="" name="companyMonthEnd"/>
								        	<input type="button" value="结束月份" class="profile_select_139 profile_select_normal select_companyMonthEnd"/>
											<div style="display: none;" class="box_companyMonthEnd boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
								        <div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save"/>
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="expId" value=""/>
            			</form><!--end .experienceForm-->
            		</div><!--end .experienceEdit-->
            		<div class="experienceAdd pAdd">
            		    兼职经历最能体现自己的能力，<br>且完善后才可投递简历哦！
						<span>添加兼职经历</span>
            		</div><!--end .experienceAdd-->
            	</div><!--end #workExperience-->



            	<div class="profile_box" id="educationalBackground">
            		<h2>教育背景<span>（投递简历时必填）</span></h2>
            							<span class="c_add dn"></span>
            		<div class="educationalShow dn">
            		            			<form class="educationalForm borderBtm dn">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							        	<input type="text" placeholder="${college }" name="schoolName" class="schoolName"/>
							      	</td>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							      		<input type="hidden" class="degree" value="" name="degree"/>
							        	<input type="button" value="学历" class="profile_select_287 profile_select_normal select_degree"/>
										<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
								            <ul>
								        		<li>大专</li><li>本科</li><li>硕士</li><li>博士</li><li>其他</li>
								        	</ul>
								        </div>
							        </td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
	            						<input type="text" placeholder="专业名称" name="professionalName" class="professionalName"/>
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="schoolYearStart" value="" name="schoolYearStart"/>
								        	<input type="button" value="开始年份" class="profile_select_139 profile_select_normal select_schoolYearStart"/>
											<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            <li>2016</li><li>2015</li><li>2014</li><li>2013</li><li>2012</li><li>2011</li>
									        	<li>2010</li><li>2009</li><li>2008</li><li>2007</li><li>2006</li><li>2005</li>
									        	<li>2004</li><li>2003</li><li>2002</li><li>2001</li><li>2000</li><li>1999</li>
									        	<li>1998</li><li>1997</li><li>1996</li><li>1995</li><li>1994</li><li>1993</li>
									        	<li>1992</li><li>1991</li><li>1990</li><li>1989</li><li>1988</li><li>1987</li>
									        	<li>1986</li><li>1985</li><li>1984</li><li>1983</li><li>1982</li><li>1981</li>
									        	<li>1980</li><li>1979</li><li>1978</li><li>1977</li><li>1976</li><li>1975</li>
									        	<li>1974</li><li>1973</li><li>1972</li><li>1971</li><li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
		            						<input type="hidden" class="schoolYearEnd" value="" name="schoolYearEnd"/>
								        	<input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_schoolYearEnd"/>
											<div style="display: none;" class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn">
									            <ul>
									        	<li>2021</li><li>2020</li><li>2019</li><li>2018</li><li>2017</li>
									        	<li>2016</li><li>2015</li><li>2014</li><li>2013</li><li>2012</li><li>2011</li>
									        	<li>2010</li><li>2009</li><li>2008</li><li>2007</li><li>2006</li><li>2005</li>
									        	<li>2004</li><li>2003</li><li>2002</li><li>2001</li><li>2000</li><li>1999</li>
									        	<li>1998</li><li>1997</li><li>1996</li><li>1995</li><li>1994</li><li>1993</li>
									        	<li>1992</li><li>1991</li><li>1990</li><li>1989</li><li>1988</li><li>1987</li>
									        	<li>1986</li><li>1985</li><li>1984</li><li>1983</li><li>1982</li><li>1981</li>
									        	<li>1980</li><li>1979</li><li>1978</li><li>1977</li><li>1976</li><li>1975</li>
									        	<li>1974</li><li>1973</li><li>1972</li><li>1971</li><li>1970</li>
									        	</ul>
									        </div>
	            						</div>
	            						<div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save"/>
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="eduId" value=""/>
            			</form><!--end .educationalForm-->

            			<ul class="elist clearfix"></ul>
            		</div><!--end .educationalShow-->
            		<div class="educationalEdit dn">
            			<form class="educationalForm" action="${ctx }/jianli/jibenjy" method="post" >
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							        	<input type="text" placeholder="${college }" value="${college }" name="schoolName" class="schoolName"/>
							      	</td>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							      		<input type="hidden" class="degree" value="" name="degree"/>
							        	<input type="button" value="学历" class="profile_select_287 profile_select_normal select_degree"/>
										<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
								            <ul>
								            	<li>大专</li><li>本科</li><li>硕士</li><li>博士</li><li>其他</li>
								        	</ul>
								        </div>
							        </td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
	            						<input type="text" placeholder="${major }" value="${major }" name="professionalName" class="professionalName"/>
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="schoolYearStart" value="" name="schoolYearStart"/>
								        	<input type="button" value="开始年份" class="profile_select_139 profile_select_normal select_schoolYearStart"/>
											<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									        	<!--  	<li>2016</li><li>2015</li>-->
									        	<li>2014</li><li>2013</li><li>2012</li><li>2011</li>
									        	<li>2010</li><li>2009</li><li>2008</li><li>2007</li><li>2006</li><li>2005</li>
									        	<li>2004</li><li>2003</li><li>2002</li><li>2001</li><li>2000</li><li>1999</li>
									        	<li>1998</li><li>1997</li><li>1996</li><li>1995</li><li>1994</li><li>1993</li>
									        	<li>1992</li><li>1991</li><li>1990</li><li>1989</li><li>1988</li><li>1987</li>
									        	<li>1986</li><li>1985</li><li>1984</li><li>1983</li><li>1982</li><li>1981</li>
									        	<li>1980</li><li>1979</li><li>1978</li><li>1977</li><li>1976</li><li>1975</li>
									        	<li>1974</li><li>1973</li><li>1972</li><li>1971</li><li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
		            						<input type="hidden" class="schoolYearEnd" value="" name="schoolYearEnd"/>
								        	<input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_schoolYearEnd"/>
											<div class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									           <ul>
									        	<!--  	<li>2016</li><li>2015</li>-->
									        	<li>2014</li><li>2013</li><li>2012</li><li>2011</li>
									        	<li>2010</li><li>2009</li><li>2008</li><li>2007</li><li>2006</li><li>2005</li>
									        	<li>2004</li><li>2003</li><li>2002</li><li>2001</li><li>2000</li><li>1999</li>
									        	<li>1998</li><li>1997</li><li>1996</li><li>1995</li><li>1994</li><li>1993</li>
									        	<li>1992</li><li>1991</li><li>1990</li><li>1989</li><li>1988</li><li>1987</li>
									        	<li>1986</li><li>1985</li><li>1984</li><li>1983</li><li>1982</li><li>1981</li>
									        	<li>1980</li><li>1979</li><li>1978</li><li>1977</li><li>1976</li><li>1975</li>
									        	<li>1974</li><li>1973</li><li>1972</li><li>1971</li><li>1970</li>
									        	</ul>
									        </div>
	            						</div>
	            						<div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save"/>
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="eduId" value=""/>
            			</form><!--end .educationalForm-->
            		</div><!--end .educationalEdit-->
            		            		<div class="educationalAdd pAdd">
            		            			教育背景可以充分体现你的学习和专业能力，<br/>
						且完善后才可投递简历哦！
						<span>添加教育经历</span>
            		</div><!--end .educationalAdd-->
            	</div><!--end #educationalBackground-->

            	<div class="profile_box" id="selfDescription">
            		<h2>自我描述</h2>
            		            		<span class="c_edit dn"></span>
            		<div class="descriptionShow dn">
            		            			
            		</div><!--end .descriptionShow-->
            		<div class="descriptionEdit dn">
            			<form class="descriptionForm" action="${ctx }/jianli/jianlims" method="post">
	            			<table>
	            				<tbody><tr>
									<td colspan="2">
										<textarea class="selfDescription s_textarea" name="selfDescription" placeholder=""></textarea>
										<div class="word_count">你还可以输入 <span>500</span> 字</div>
									</td>
	            				</tr>
	            				<tr>
	            					<td colspan="2">
										<input type="submit" value="保 存" class="btn_profile_save"/>
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
            			</form><!--end .descriptionForm-->
            		</div><!--end .descriptionEdit-->
            		            		<div class="descriptionAdd pAdd">
            		            			描述你的性格、爱好以及吸引人的经历等，<br/>
						让大家了解多元化的你！
						<span>添加自我描述</span>
            		</div><!--end .descriptionAdd-->
            	</div><!--end #selfDescription-->

            	<div class="profile_box" id="worksShow">
            		<h2>个人专长</h2>
            		<span class="c_add dn"></span>
            		<div class="workShow dn">
            		     <ul class="slist clearfix"></ul>
            		</div><!--end .workShow-->
            		<div class="workEdit dn">
            			<form class="workForm" action="${ctx }/jianli/jianlizc" method="post">
	            			<table>
	            				<tbody>
	      <!--  				<tr>
							      	<td>
							        	<input type="text" placeholder="请输入作品链接" name="workLink" class="workLink"/>
							      	</td>
							    </tr>
			-->	
	            				<tr>
									<td>
										<textarea maxlength="100" class="workDescription s_textarea" name="workDescription" placeholder="请输入说明文字"></textarea>
										<div class="word_count">你还可以输入 <span>100</span> 字</div>
									</td>
	            				</tr>
	            				<tr>
	            					<td>
										<input type="submit" value="保 存" class="btn_profile_save"/>
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="showId" value=""/>
            			</form><!--end .workForm-->
            		</div><!--end .workEdit-->
            		            		<div class="workAdd pAdd">
            		            			好作品会说话！<br/>
						快来秀出你的作品打动人们吧！
						<span>添加作品展示</span>
            		</div><!--end .workAdd-->
            	</div><!--end #worksShow-->
				<input type="hidden" id="resumeId" value="268472"/>
            </div><!--end .content_l-->
            <div class="content_r">
            	<div class="mycenterR" id="myInfo">
            		<h2>我的信息</h2>
        		<%--  <a target="_blank" href="collections.html">我收藏的职位</a>
            		<br>
            		  <a target="_blank" href="delivery.html">我投递的职位</a>
            		<br>
            		  <a target="_blank" href="mList.html">我收到的邀请</a>
            	--%> 
            	
            	   <table>
               <tr>

                   <td>
                        <a href="${ctx }/delivery.html" target="_blank">
                            <img src="${ctx }/style/images/toudixiang.jpg"/>
                        </a>
                   </td>
                   <td>
                        <a target="_blank" href="${ctx }/mList.html">
                            <img src="${ctx }/style/images/yaoqinghan.jpg"/>
                        </a>
                   </td>
                   <td>
                        <a href="${ctx }/collections.html">
                            <img src="${ctx }/style/images/shoucangjia.jpg"/>
                        </a>
                   </td>
                   <td>
                        <a target="_blank" href="${ctx }/subscribe.html">
                            <img src="${ctx }/style/images/dingyuelan.jpg"/>
                        </a>
                   </td>
               </tr>
           </table>
            	
            	</div><!--end #myInfo-->

				<div class="mycenterR" id="myResume">
            		<h2>我的附件简历 
            			<a title="上传附件简历" href="#uploadFile" class="inline cboxElement">上传简历</a>
            		</h2>
            		<div class="resumeUploadDiv">
	            		暂无附件简历
	           	 	</div>
            	</div><!--end #myResume-->

            	<div class="mycenterR" id="resumeSet">
            		<h2>投递简历设置  <span>修改设置</span></h2>
            		<!-- -1 (0=附件， 1=在线， 其他=未设置) -->
            		<div class="noSet set0 dn">默认使用<span>附件简历</span>进行投递</div>
            		<div class="noSet set1 dn">默认使用<span>在线简历</span>进行投递</div>
					<div class="noSet">暂未设置默认投递简历</div>
            		<input type="hidden" class="defaultResume" value="-1"/>
            		<form class="dn" id="resumeSetForm">
	            		<label><input type="radio" value="1" class="resume1" name="resume"/>默认使用<span>在线简历</span>进行投递</label>
	            		<label><input type="radio" value="0" class="resume0" name="resume"/>默认使用<span>附件简历</span>进行投递</label>
	            		<span class="setTip error"></span>
	            		<div class="resumeTip">设置后投递简历时将不再提醒</div>
	            		<input type="submit" value="保 存" class="btn_profile_save"/>
						<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            	</form>
            	</div><!--end #resumeSet-->
				
				<div class="mycenterR" id="myShare">
            		<h2>当前每日投递量：10个</h2>
            		<a target="_blank" href="${ctx }/invite.html">邀请好友，提升投递量</a>
            	</div><!--end #myShare-->
            	
								
				<!--<div class="greybg qrcode mt20">
                	<img width="242" height="242" alt="Bee微信公众号二维码" src="style/images/qr_resume.png">
                    <span class="c7">微信扫一扫，轻松找工作</span>
                </div>-->
            </div><!--end .content_r-->
        </div>
        
      <input type="hidden" id="userid" name="userid" value="314873">

<!-------------------------------------弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!-- 上传简历 -->
	<div class="popup" id="uploadFile">
	    <table width="100%">
	    	<tbody><tr>
	        	<td align="center">
	                <form>
	                    <a class="btn_addPic" href="javascript:void(0);">
	                    	<span>选择上传文件</span>
	                        <input type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload')" class="filePrew" id="resumeUpload" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" tabindex="3"/>
	                    </a>
	                </form>
	            </td>
	        </tr>
	    	<tr>
	        	<td align="left">支持word、pdf、ppt、txt、wps格式文件<br>文件大小需小于10M</td>
	        </tr>
	        <tr>
	        	<td align="left" style="color:#dd4a38; padding-top:10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
	        </tr>
	    	<tr>
	        	<td align="center"><img width="55" height="16" alt="loading" style="visibility: hidden;" id="loadingImg" src="${ctx }/style/images/loading.gif"/></td>
	        </tr>
	    </tbody></table>
	</div><!--/#uploadFile-->
	
	<!-- 简历上传成功 -->
	<div class="popup" id="uploadFileSuccess">
     	<h4>简历上传成功！</h4>
         <table width="100%">
             <tbody><tr>
                 <td align="center"><p>你可以将简历投给你中意的家长了。</p></td>
             </tr>
         	<tr>
             	<td align="center"><a class="btn_s" href="javascript:;">确&nbsp;定</a></td>
             </tr>
         </tbody></table>
     </div><!--/#uploadFileSuccess-->
     
	<!-- 没有简历请上传 -->
    <div class="popup" id="deliverResumesNo">
        <table width="100%">
            <tbody><tr>
                <td align="center"><p class="font_16">你在Bee还没有简历，请先上传一份</p></td>
            </tr>
        	<tr>
            	<td align="center">
                    <form>
                        <a class="btn_addPic" href="javascript:void(0);">
                        	<span>选择上传文件</span>
                        	<input type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload1')" class="filePrew" id="resumeUpload1" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M"/>
                        </a>
                    </form>
                </td>
            </tr>
        	<tr>
            	<td align="center">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumesNo-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUpload">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">请上传标准格式的word简历</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		操作说明：<br>
                		打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#fileResumeUpload-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUploadSize">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">上传文件大小超出限制</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		提示：<br/>
                		单个附件不能超过10M，请重新选择附件简历！
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumeConfirm-->
    
</div>
<!------------------------------------- end ----------------------------------------->  

<script src="${ctx }/style/js/Chart.min.js" type="text/javascript"></script>
<script src="${ctx }/style/js/profile.min.js" type="text/javascript"></script>

<div class="" id="qr_cloud_resume" style="display: none;">
	<div class="cloud">
		<img width="134" height="134" src=""/>
		<a class="close" href="javascript:;"></a>
	</div>
</div>
<script>
$(function(){
	$.ajax({
        url:ctx+"/mycenter/showQRCode",
        type:"GET",
        async:false
   	}).done(function(data){
        if(data.success){
             $('#qr_cloud_resume img').attr("src",data.content);
        }
   	}); 
	var sessionId = "resumeQR"+314873;
	if(!$.cookie(sessionId)){
		$.cookie(sessionId, 0, {expires: 1});
	}
	if($.cookie(sessionId) , $.cookie(sessionId) != 5){
		$('#qr_cloud_resume').removeClass('dn');
	}
	$('#qr_cloud_resume .close').click(function(){
		$('#qr_cloud_resume').fadeOut(200);
		resumeQR = parseInt($.cookie(sessionId)) + 1;
		$.cookie(sessionId, resumeQR, {expires: 1});
	});
});
</script>
			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken"/>
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
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

<script src="${ctx }/style/js/core.min.js" type="text/javascript"></script>
<script src="${ctx }/style/js/popup.min.js" type="text/javascript"></script>

<!--  -->

<script type="text/javascript">
$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});
var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div>
</body>
</html>