<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="${ctx }/style/js/conversion.js"></script><script src="${ctx }/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>用户-家长账户信息</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">

console.log(1);
</script>
<link href="${ctx }/images/favicon.ico" rel="Shortcut Icon">
<link href="${ctx }/style/css/style.css" type="text/css" rel="stylesheet">
<link href="${ctx }/style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="${ctx }/style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${ctx }/style/js/jquery.1.10.1.min.js"></script>
<script src="${ctx }/style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/ajaxfileupload.js"></script>
<script src="${ctx }/style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="${ctx }/style/js/excanvas.js"></script>
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
    		<a class="logo" href="${ctx }/">
    			<img width="229" height="43" alt="拉勾招聘-专注互联网招聘" src="${ctx }/style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index.html">首页</a></li>
    			<li><a href="companylist.html">公司</a></li>
    			<li><a target="_blank" href="${ctx }/toForum.html">论坛</a></li>
    				    			<li class="current"><a rel="nofollow" href="jianli.html">我的简历</a></li>
	    						    		</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span>jason&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                                	<dd><a rel="nofollow" href="jianli.html">我的简历</a></dd>
                	                	<dd><a href="collections.html">我收藏的职位</a></dd>
                	                	                	<dd class="btm"><a href="subscribe.html">我的订阅</a></dd>
                	<dd><a href="create.html">我要招人</a></dd>
                                                <dd><a href="accountBind.html">帐号设置</a></dd>
                                <dd class="logout"><a rel="nofollow" href="login.html">退出</a></dd>
            </dl>
                                    <div class="dn" id="noticeTip">
            	<span class="bot"></span>
				<span class="top"></span>
				<a target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
				<a class="closeNT" href="javascript:;"></a>
            </div>
                    </div>
    </div><!-- end #header -->
    <div id="container">
        
  		<div class="clearfix">
            <div class="content_l">
            	
            	
            	

            	<div class="profile_box" id="basicInfo">
            		<h2>基本信息</h2>
            		<span class="c_edit"></span>
            		<div class="basicShow">
            			            			<span>${ps.PUName }<br>
            			            			此信息用于站内的沟通、社区等功能，不会泄露
            			</span>
            			<div class="m_portrait">
	                    	<div></div>
	                    	<img width="120" height="120" alt="jason" src="${ctx }/style/images/default_headpic.png">
	                    </div>
            		</div><!--end .basicShow-->

            		<div class="basicEdit dn">
            			<form id="profileForm" action="${ctx }/jiazhang/edit" method="post">
						  <table>
						    <tbody><tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td>
						        <input type="text" placeholder="姓名" value="jason" name="name" id="name">
						      </td>
						      <td valign="top"></td> 
						      
						    </tr>
						    
						    <tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td colspan="3">
						          <input type="text" placeholder="手机号码" value="18644444444" name="tel" id="tel">
						      </td>
						   	</tr>
						   	<tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td colspan="3">
						          <input type="text" placeholder="接收面试通知的邮箱" value="jason@qq.com" name="email" id="email">
						      </td>
						    </tr>
						    
						    <tr>
						      <td></td> 
						      <td colspan="3">
						          <input type="submit" value="保 存" class="btn_profile_save">
						          <a class="btn_profile_cancel" href="javascript:;">取 消</a>
						      </td>
						    </tr>
						  </tbody></table>
						</form><!--end #profileForm-->
						<div class="new_portrait">
						  <div class="portrait_upload" id="portraitNo">
						      <span>上传自己的头像</span>
						  </div>
						  <div class="portraitShow dn" id="portraitShow">
						    <img width="120" height="120" src="">
						    <span>更换头像</span>
						  </div>
						  <input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="img_check(this,'${ctx }/resume/uploadPhoto.json','headPic');" name="headPic" id="headPic" class="myfiles">
							<!-- <input type="hidden" id="headPicHidden" /> -->
						  	<em>
						                  尺寸：120*120px <br>   
						                  大小：小于5M
						  	</em>
						  	<span style="display:none;" id="headPic_error" class="error"></span>
						</div><!--end .new_portrait-->
            		</div><!--end .basicEdit-->
            		<input type="hidden" id="nameVal" value="jason">
            		<input type="hidden" id="genderVal" value="男">
            		<input type="hidden" id="topDegreeVal" value="大专">
            		<input type="hidden" id="workyearVal" value="3年">
            		<input type="hidden" id="currentStateVal" value="">
            		<input type="hidden" id="emailVal" value="jason@qq.com">
            		<input type="hidden" id="telVal" value="18644444444">
            		<input type="hidden" id="pageType" value="1"> 
            	</div><!--end #basicInfo-->


				<input type="hidden" id="resumeId" value="268472">
            </div><!--end .content_l-->
            <div class="content_r">
            	<div class="mycenterR" id="myInfo">
            		<h2>我的信息</h2>
            		<a target="_blank" href="collections.html">账号绑定</a>
            		<br>
            		            		            		<a target="_blank" href="subscribe.html">修改密码</a>
            	</div><!--end #myInfo-->

				<div class="mycenterR" id="myResume">
            		<h2>我的招聘信息 
            			            			<a title="上传附件简历" href="recruitment.html" >填写招聘信息</a>
            			            		</h2>
            		<div class="resumeUploadDiv">
	            			            		暂无招聘信息
	            		            		</div>
            	</div><!--end #myResume-->

            	<div class="mycenterR" id="resumeSet">
            		<h2>收到的求职信  <a href="autoFilterResumes.html">修改设置</a></h2>
            		<!-- -1 (0=附件， 1=在线， 其他=未设置) -->
            		            		            			<div class="noSet set0 dn">默认使用<span>附件简历</span>进行投递</div>
            			<div class="noSet set1 dn">默认使用<span>在线简历</span>进行投递</div>
						<div class="noSet">暂未收到求职信</div>
            		            		<input type="hidden" class="defaultResume" value="-1">
            		<form class="dn" id="resumeSetForm">
	            		<label><input type="radio" value="1" class="resume1" name="resume">默认使用<span>在线简历</span>进行投递</label>
	            		<label><input type="radio" value="0" class="resume0" name="resume">默认使用<span>附件简历</span>进行投递</label>
	            		<span class="setTip error"></span>
	            		<div class="resumeTip">设置后投递简历时将不再提醒</div>
	            		<input type="submit" value="保 存" class="btn_profile_save">
						<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            	</form>
            	</div><!--end #resumeSet-->

            		<!--<div class="mycenterR" id="myResume">
            		<h2>收藏夹 
            			            			<a title="上传附件简历" href="#uploadFile" class="inline cboxElement">查看编辑</a>
            			            		</h2>
            		<div class="resumeUploadDiv">
	            			            		暂无收藏
	            		            		</div>
            	</div><!--end #myResume-->
				
				<div class="mycenterR" id="myShare">
            		<h2>当前每日招聘量：3个</h2>
            		<a target="_blank" href="${ctx }/share/invite.html">邀请好友，提升招聘量</a>
            	</div><!--end #myShare-->
            	
								
				<!--<div class="greybg qrcode mt20">
                	<img width="242" height="242" alt="拉勾微信公众号二维码" src="${ctx }/style/images/qr_resume.png">
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
	                        <input type="file" onchange="file_check(this,'${ctx }/nearBy/updateMyResume.json','resumeUpload')" class="filePrew" id="resumeUpload" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" tabindex="3">
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
	        	<td align="center"><img width="55" height="16" alt="loading" style="visibility: hidden;" id="loadingImg" src="${ctx }/style/images/loading.gif"></td>
	        </tr>
	    </tbody></table>
	</div><!--/#uploadFile-->
	
	<!-- 简历上传成功 -->
	<div class="popup" id="uploadFileSuccess">
     	<h4>简历上传成功！</h4>
         <table width="100%">
             <tbody><tr>
                 <td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
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
                <td align="center"><p class="font_16">你在拉勾还没有简历，请先上传一份</p></td>
            </tr>
        	<tr>
            	<td align="center">
                    <form>
                        <a class="btn_addPic" href="javascript:void(0);">
                        	<span>选择上传文件</span>
                        	<input type="file" onchange="file_check(this,'${ctx }/nearBy/updateMyResume.json','resumeUpload1')" class="filePrew" id="resumeUpload1" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M">
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
                		提示：<br>
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
<!-- <div id="profileOverlay"></div> -->
<div class="" id="qr_cloud_resume" style="display: none;">
	<div class="cloud">
		<img width="134" height="134" src="">
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
	if($.cookie(sessionId) &amp;&amp; $.cookie(sessionId) != 5){
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
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="${ctx }/about.html">联系我们</a>
		    <a target="_blank" href="${ctx }/af/zhaopin.html">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">拉勾微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">拉勾微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
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

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>