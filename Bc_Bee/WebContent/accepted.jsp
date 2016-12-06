<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</script><script type="text/javascript" async="" src="${ctx }/style/js/conversion.js"></script>
<script src="${ctx }/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control"/>
<link  media="handheld" rel="alternate"/>
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
<title>拉勾网-最专业的家教招聘平台</title>
<meta content="23635710066417756375" property="qc:admins"/>

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">

console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon"/>
<link href="${ctx }/style/css/style.css" type="text/css" rel="stylesheet"/>
<link href="${ctx }/style/css/external.min.css" type="text/css" rel="stylesheet"/>
<link href="${ctx }/style/css/popup.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="${ctx }/style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/ajaxfileupload.js"></script>
<script src="${ctx }/style/js/additional-methods.js" type="text/javascript"></script>

<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="${ctx }/style/js/conv.js" type="text/javascript"></script>
<script src="${ctx }/style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="${ctx }/index.html">
    			<img width="229" height="43" alt="拉勾招聘-专注互联网招聘" src="${ctx }/style/images/logo.png">
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
                <dd style="display: none;"><a rel="nofollow" href="${ctx }/jianli/Init">我的简历</a></dd>
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
                <dd class="btm" style="display: none;"><a href="${ctx }/Invitation/send">我发出的邀请</a></dd>
                <dd style="display: none;"><a href="${ctx}/publish/jump">我要招人</a></dd>
                <dd style="display: none;"><a href="${ctx }/certification_parent.jsp">用户认证</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx }/login.jsp">退出</a></dd>
            </dl><%} %>
                    </div>
    </div><!-- end #header -->
    <div id="container">
        	  	
        <div class="clearfix">
            <div class="content_l recommend_list">
            	<h2>通过求职信的教员列表 </h2>

    <form id="deliveryForm">
       <ul class="reset my_delivery">
       <c:forEach items="${teacer }" var="te" >
           <li>
              <div class="d_item">
                    <h2 title="随便写">
	                      <a target="_blank" href="${ctx }/preview/show?id=${te.tuser.TUId}">
	                           <em>${te.TUName}     </em> 
	                           <span></span>
	                      </a>
	                </h2>
	                <div class="clear"></div>
	                <a title="公司名称" class="d_jobname" target="_blank" href="${ctx }/preview/show?id=${te.tuser.TUId}">
	                	 <span>${ms.value.area}</span> 
	               </a>
	               <span class="d_time">${ms.key.inTime}</span>
	               <div class="clear"></div>
	               <div class="d_resume">
	                	结算方式：
	           			<span></span>
	                </div>
	               <a class="btn_showprogress" href="">删除</a>
				</li>
				</c:forEach>
              </ul>
              <input type="hidden" value="-1" name="tag"/>
              <input type="hidden" value="" name="r"/>
           </form>
	       <form id="searchForm"></form>
	            <div class="Pagination myself"><a title="1" >首页</a><span title="上一页" class="disabled">上一页 </span><span title="1" class="current">1</span><a title="2" >2</a><a title="3" >3</a><a title="4" >4</a><a title="5" >5</a><a title="2" >下一页 </a><a title="7" >尾页</a></div>
             </div>	
            <div class="content_r">

	         <div class="mycenterR" id="myInfo">
				<h2>我的信息</h2>
					<table>
               <tr>

                   <td>
                        <a href="${ctx }/Delivery/Init" target="_blank">
                            <img src="${ctx }/style/images/toudixiang.jpg">
                        </a>
                   </td>
                   <td>
                        <a target="_blank" href="${ctx }/mList.jsp">
                            <img src="${ctx }/style/images/yaoqinghan.jpg">
                        </a>
                   </td>
                   <td>
                        <a href="${ctx }/collections.html">
                            <img src="${ctx }/style/images/shoucangjia.jpg">
                        </a>
                   </td>
                   <td>
                        <a target="_blank" href="${ctx }/subscribe.html">
                            <img src="${ctx }/style/images/dingyuelan.jpg">
                        </a>
                   </td>
               </tr>
           	</table>
			</div>
                <div class="greybg qrcode mt20">
                	<img width="242" height="242" alt="拉勾微信公众号二维码" src="${ctx }/style/images/qrcode.jpg">
                    <span class="c7">扫描Bee二维码，微信轻松搜工作</span>
                </div>
            </div>
       	</div>
      <input type="hidden" id="userid" name="userid" value="314873">
<script>
$(function(){
	
	/***************************
 	 * 分页
 	 */
 	 		$('.Pagination').pager({
		      currPage: 1,
		      pageNOName: "pn",
		      form: "searchForm",
		      pageCount: 7,
		      pageSize:  5 
		});
	});
</script>
			<div class="clear"></div>
			<input type="hidden" value="" id="resubmitToken">
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

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>