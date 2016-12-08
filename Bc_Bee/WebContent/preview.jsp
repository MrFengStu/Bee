<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>简历预览-我的简历-拉勾网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">

<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
</script><script type="text/javascript">

console.log(1);
</script>
<link href="${ctx}/images/favicon.ico" rel="Shortcut Icon">
<link href="${ctx}/style/css/style.css" type="text/css" rel="stylesheet">
<link href="${ctx}/style/css/colorbox.min.css" type="text/css" rel="stylesheet">
<link href="${ctx}/style/css/popup.css" type="text/css" rel="stylesheet">

<script type="text/javascript" src="${ctx}/style/js/jquery.1.10.1.min.js"></script>

<script src="${ctx}/style/js/jquery.colorbox-min.js" type="text/javascript"></script>
<script>
$(function(){
	 $("body").on("click","a.btn_s",function(){
		$.colorbox.close();
		parent.jQuery.colorbox.close();
	});
	$(".inline").colorbox({
		inline:true
	});
});
</script>
<script src="${ctx}/style/js/ajaxCross.json" charset="UTF-8"></script>
<script type="text/javascript">
	function preview() {
		document.loginForm.submit();
	}
	
</script>

</head>

<body>
 
 
  	<div id="previewWrapper">
        <div class="preview_header">
         
            <h1 title="jason的简历">${resume.TUName }的简历</h1>
                        	<a title="下载简历" class="inline cboxElement" href="#downloadOnlineResume">下载该简历</a>
                    </div><!--end .preview_header-->

        <div class="preview_content">
            <div class="profile_box" id="basicInfo">
                <h2>基本信息</h2>
                <div class="basicShow">
                  <span>
                   ${tdeinfo.TName}   
                   &nbsp;&nbsp; 
                   ${tdeinfo.TSex} 
                   &nbsp;&nbsp; 
                   ${tdeinfo.TCollege} 
                   &nbsp;&nbsp; 
                   ${tdeinfo.TMajor} 
                   &nbsp;&nbsp; 
                   ${tdeinfo.TGrade} 
                   &nbsp;&nbsp; 
                   </br> 
                   ${tdeinfo.TAddress}
                   </br> 
                   ${tdeinfo.TContactInfo} 
                   ${tdeinfo.TMailbox} 
                   </br> 

            			
            		</span>
           			<div class="m_portrait">
                    	<div></div>
                    	<img width="120" height="120" alt="jason" src="${ctx}/style/images/default_headpic.png">
                    </div>
                </div><!--end .basicShow-->
            </div><!--end #basicInfo-->
 
				            <div class="profile_box" id="expectJob">
	                <h2>期望工作</h2>
	                <div class="expectShow">
	                	${resume.area}
	                	&nbsp;&nbsp; 
	                	${resume.teaSubject} 
	                	&nbsp;&nbsp; 
	                	</br>
	                	${resume.salary}
	                	&nbsp;&nbsp; 
	                	${resume.teaMode}
	                	&nbsp;&nbsp;
	                </div><!--end .expectShow-->
	            </div><!--end #expectJob-->
						
				            <div class="profile_box" id="workExperience">
	                <h2>兼职经历</h2>
	                <div class="experienceShow">
	                  <ul class="wlist clearfix">
	                  	                    	           				            				<li class="clear">
            					           					<span class="c9">${resume.SGrade}</span>
            					           					<span class="c9">${resume.pte}</span>
	           					
	           				</li>
	           					          				                  </ul>
	                </div><!--end .experienceShow-->
	            </div><!--end #workExperience-->
			
				            
						
				            <div class="profile_box" id="educationalBackground">
	                <h2>教育背景</h2>
	                <div class="educationalShow">
	                  <ul class="elist clearfix">
	                  	                  	            				            				<li class="clear">
            				            					 
            					<div>
            						<h3> ${resume.ted}</h3>
            					 
            					</div>
            				</li>
            				           					                  </ul>
	                </div><!--end .educationalShow-->
	            </div><!--end #educationalBackground-->
						
				            <div class="profile_box" id="selfDescription">
	                <h2>自我描述</h2>
	                <div class="descriptionShow">
	            	 ${resume.brief}
	                </div><!--end .descriptionShow-->
	            </div><!--end #selfDescription-->
						
				            
	            </div><!--end #worksShow-->
 <!--新增内容-->

 	<%if(session.getAttribute("student") == null && session.getAttribute("parent") != null){ %>
 	
 			<div class="profile_box" id="comment1">
	                <h2>评价</h2>
	                <div class="commentShow">
					                 	 <div class="descriptionShow">
		            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c9">评价内容：</span>
		                </div><!--end .descriptionShow-->
						 <c:forEach items="${tuser1 }" var="t1">
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${t1.CId }.${t1.comCon }</p>
						</c:forEach>
	
	                </div>
	        </div>
	            
	       <div class="profile_box" id="comment">
                <h2>评论</h2>
                <div class="commentShow">
				                 	 <div class="descriptionShow">
	            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c9">评论内容：</span>
	                </div><!--end .descriptionShow-->
						<form action="${ctx }/preview/save?&id=${resume.reId}" method="post"">
							<textarea cols="40" rows="8" value="" id='txt' name="text"></textarea>
							<br />
							<button  ><a onclick="preview()" >提交评论</a></button>
						</form>

                </div>
            </div>
             
     <%}else if(session.getAttribute("student") != null && session.getAttribute("parent") == null){ %>
	     <div class="profile_box" id="comment1">
	                <h2>评价</h2>
	                <div class="commentShow">
					                 	 <div class="descriptionShow">
		            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c9">评价内容：</span>
		                </div><!--end .descriptionShow-->
		                <div class="basicShow">
							<c:forEach items="${tuser1 }" var="t1">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${t1.comCon }</span>
							</c:forEach>	
						</div>
	
	                </div>
	            </div>
     <%} %>
	
 <!--新增内容-->         
	            
	            
			        </div><!--end .preview_content-->
  	</div>
 <!--end #previewWrapper-->

<!-------------------------------------弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!-- 下载简历 -->
	<div class="popup" id="downloadOnlineResume">
         <table width="100%">
             <tbody><tr>
                 <td class="c5 f18">请选择下载简历格式：</td>
             </tr>
         	<tr>
             	<td>
             		<a class="btn_s" href="${ctx}/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=1">word格式</a>
             		<a class="btn_s" href="${ctx}/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=2">html格式</a>
             		<a class="btn_s" href="${ctx}/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=3">pdf格式</a>
             	</td>
             </tr>
         </tbody></table>
    </div><!--/#downloadOnlineResume-->   
</div>
<!------------------------------------- end ----------------------------------------->  




<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>