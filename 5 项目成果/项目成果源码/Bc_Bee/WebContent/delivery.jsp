<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</script>
<script type="text/javascript" async=""
	src="${ctx }/style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control" />
<link media="handheld" rel="alternate" />
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>投递箱-蜜蜂网-最专业的互联网家教平台</title>
<meta content="23635710066417756375" property="qc:admins" />

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
<!--var ctx = "http://www.lagou.com";-->
	console.log(1);
</script>
<link href="${ctx }/images/favicon.ico" rel="Shortcut Icon" />
<link href="${ctx }/style/css/style.css" type="text/css"
	rel="stylesheet" />
<link href="${ctx }/style/css/external.min.css" type="text/css"
	rel="stylesheet" />
<link href="${ctx }/style/css/popup.css" type="text/css"
	rel="stylesheet" />
<script type="text/javascript"
	src="${ctx }/style/js/jquery.1.10.1.min.js"></script>
<script src="${ctx }/style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/ajaxfileupload.js"></script>
<script src="${ctx }/style/js/additional-methods.js"
	type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script src="${ctx }/style/js/conv.js" type="text/javascript"></script>
<script src="${ctx }/style/js/ajaxCross.json" charset="UTF-8"></script>
</head>
<body>
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a class="logo" href="${ctx }/index.html"> <img width="229"
					height="43" alt="Bee-小蜜蜂家教平台" src="${ctx }/style/images/logo.png" />
				</a>
				<ul id="navheader" class="reset">
					<li><a href="${ctx }/index.jsp">首页</a></li>
					<li><a href="${ctx }/joblist">职位列表</a></li>
					<li><a target="_blank" href="${ctx }/jiaoyuan">教员列表</a></li>
					<%
						if (session.getAttribute("student") == null && session.getAttribute("parent") == null) {
					%>
					<li style="display: none;"><a href="${ctx}/publish/jump"
						rel="nofollow">发布职位</a></li>
					<%
						} else if (session.getAttribute("student") == null && session.getAttribute("parent") != null) {
					%>
					<li><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
					<%
						} else if (session.getAttribute("parent") == null && session.getAttribute("student") != null) {
					%>
					<li><a href="${ctx}/jianli/Init" rel="nofollow">我的简历</a></li>
					<%
						}
					%>
				</ul>
				<%
					if (session.getAttribute("student") == null && session.getAttribute("parent") == null) {
				%>
				<ul class="loginTop">
					<li><a href="${ctx}/login.jsp" rel="nofollow">登录</a></li>
					<li>|</li>
					<li><a href="${ctx}/register.jsp" rel="nofollow">注册</a></li>
				</ul>
				<%
					} else if (session.getAttribute("student") != null && session.getAttribute("parent") == null) {
				%>
				<dl class="collapsible_menu">
					<dt>
						<span>${name }&nbsp;</span> <span class="red dn" id="noticeDot-0"></span>
						<i></i>
					</dt>
					<dd style="display: none;">
						<a rel="nofollow" href="${ctx }/jianli/Init">我的简历</a>
					</dd>
					<dd style="display: none;">
						<a href="${ctx }/Delivery/Init">我投递的职位 <span id="noticeNo"
							class="red dn">(0)</span></a>
					</dd>
					<dd style="display: none;">
						<a href="${ctx }/Invitation/Init">我收到的邀请</a>
					</dd>
					<dd style="display: none;">
						<a href="${ctx }/certification_student.jsp">用户认证</a>
					</dd>
					<dd class="logout" style="display: none;">
						<a rel="nofollow" href="${ctx }/login.jsp">退出</a>
					</dd>
				</dl>
				<%
					} else if (session.getAttribute("student") == null && session.getAttribute("parent") != null) {
				%>
				<dl class="collapsible_menu">
					<dt>
						<span>${name }&nbsp;</span> <span class="red dn" id="noticeDot-0"></span>
						<i></i>
					</dt>
					<dd style="display: none;">
						<a rel="nofollow" href="${ctx }/jiazhang/show">我的信息</a>
					</dd>
					<dd style="display: none;">
						<a href="">我收到的简历 <span id="noticeNo" class="red dn">(0)</span></a>
					</dd>
					<dd class="btm" style="display: none;">
						<a href="${ctx }/Invitation/send">我发出的邀请</a>
					</dd>
					<dd style="display: none;">
						<a href="${ctx}/publish/jump">我要招人</a>
					</dd>
					<dd style="display: none;">
						<a href="${ctx }/certification_parent.jsp">用户认证</a>
					</dd>
					<dd class="logout" style="display: none;">
						<a rel="nofollow" href="${ctx }/login.jsp">退出</a>
					</dd>
				</dl>
				<%
					}
				%>
				<div class="dn" id="noticeTip">
					<span class="bot"></span> <span class="top"></span> <a
						target="_blank" href="${ctx }/delivery.jsp"><strong>0</strong>条新投递反馈</a>
					<a class="closeNT" href="javascript:;"></a>
				</div>
			</div>
		</div>
		<!-- end #header -->
		<div id="container">

			<div class="clearfix">
				<div class="content_l">
					<dl class="c_delivery">
						<dt>
							<h1>
								<em></em>已投递简历状态
							</h1>
							<a class="d_refresh" href="javascript:;">刷新</a>
						</dt>
						<dd>
							<div class="delivery_tabs">
								<ul class="reset">
									<li class="current"><a href="${ctx }/Delivery/Init">全部</a>
									</li>
									<li><a href="${ctx }/Delivery/Init?state=a">投递成功</a></li>
									<li><a href="${ctx }/Delivery/Init?state=b">被查看</a></li>
									<li><a href="${ctx }/Delivery/Init?state=c">通过初筛</a></li>
									<li><a href="${ctx }/Delivery/Init?state=d">通知面试</a></li>
									<li class="last"><a href="${ctx }/Delivery/Init?state=e">不合适</a></li>
								</ul>
							</div>
							<form id="deliveryForm">
								<ul class="reset my_delivery">
									<c:forEach items="${map }" var="ms">
										<li>
											<div class="d_item">
												<h2 title="随便写">
													<a target="_blank"
														href="${ctx }/job1?&id=${ms.value.rlId }"> <em>${ms.value.grade}
															${ms.value.subject }</em> <span>${ms.value.salary }</span> <!--  -->
													</a>
												</h2>
												<div class="clear"></div>
												<a title="公司名称" class="d_jobname" target="_blank"
													href="${ctx }/job1?&id=${ms.value.rlId }">
													${ms.value.contacts } <span>[${ms.value.qu }]</span>
												</a> <span class="d_time">${ms.value.reTime}</span>
												<div class="clear"></div>
												<div class="d_resume">
													使用简历： <span>在线简历</span>
												</div>
												<a class="btn_showprogress"
													href="${ctx }/Delivery/delete?DeId=${ms.key.deId}">删除</a>
											</div>
										</li>
									</c:forEach>
								</ul>
								<input type="hidden" value="-1" name="tag" /> <input
									type="hidden" value="" name="r" />
							</form>
						</dd>
					</dl>
					<div class="Pagination">
						<td colspan="6" align="center">
						共${deliveryPage.totalCount }条记录
							共${deliveryPage.totalPageNum }页 当前第${deliveryPage.currentPageNum }页<br />
							<a href="${ctx }/Delivery/Init?pageNum=1&state=${jyDeliveryState}" name="firstPage"value="首页">首页</a> 
							<c:if test="${deliveryPage.currentPageNum!=1 }">
								<a href="${ctx }/Delivery/Init?pageNum=${deliveryPage.prePageNum}&state=${jyDeliveryState}"	name="firstPage" value="首页">上一页</a>
							</c:if> 
							<c:forEach begin="1" end="${deliveryPage.totalPageNum }" var="pageNum">
								<a name="pagen" href="${ctx }/Delivery/Init?pageNum=${pageNum }&state=${jyDeliveryState}">${pageNum }</a>
							</c:forEach> 
							<c:if test="${deliveryPage.currentPageNum!=deliveryPage.totalPageNum }">
								<a href="${ctx }/Delivery/Init?pageNum=${deliveryPage.nextPageNum}&state=${jyDeliveryState}"	name="firstPage" value="首页">下一页</a>
							</c:if> 
							<a href="${ctx }/Delivery/Init?pageNum=${deliveryPage.totalPageNum}&state=${jyDeliveryState}" name="firstPage" value="尾页">尾页</a>
						</td>
					</div>

				</div>

				<div class="content_r">
					<div class="mycenterR" id="myInfo">
						<h2>我的信息</h2>


						<table>
							<tr>
								<td><a href="${ctx }/Delivery/Init" target="_blank"> <img
										src="${ctx }/style/images/toudixiang.jpg" />
								</a></td>
								<td><a target="_blank" href="${ctx }/mList.jsp"> <img
										src="${ctx }/style/images/yaoqinghan.jpg" />
								</a></td>
								<td><a href=""> <img
										src="${ctx }/style/images/shoucangjia.jpg" />
								</a></td>
								<td><a target="_blank" href=""> <img
										src="${ctx }/style/images/dingyuelan.jpg" />
								</a></td>
							</tr>
						</table>
					</div>
					<!--end #myInfo-->
					<div class="mycenterR" id="myRecommend">
						<h2>
							可能适合你的职位 <i>匹配度</i>
						</h2>
						<ul class="reset">
							<li><a target="_blank" href=""> <span class="f16">产品经理</span>
									<span class="c7">广州百田</span> <em>92%</em>
							</a></li>
							<li><a target="_blank" href=""> <span class="f16">产品经理</span>
									<span class="c7">短讯神州</span> <em>92%</em>
							</a></li>
							<li><a target="_blank" href=""> <span class="f16">产品经理</span>
									<span class="c7">爱拍</span> <em>89%</em>
							</a></li>
							<li><a target="_blank" href=""> <span class="f16">产品经理</span>
									<span class="c7">一彩票</span> <em>88%</em>
							</a></li>
							<li><a target="_blank" href=""> <span class="f16">产品经理</span>
									<span class="c7">林安集团</span> <em>88%</em>
							</a></li>
						</ul>
						<a target="_blank" class="more" href="">更多推荐职位&gt;&gt;</a>
					</div>
					<!--end #myRecommend-->
					<div class="greybg qrcode mt20">
						<img width="242" height="242" alt="Bee微信公众号二维码"
							src="${ctx }/style/images/qr_delivery.png" /> <span class="c7">扫描Bee二维码，微信轻松搜工作</span>
					</div>
				</div>
			</div>
			<input type="hidden" id="userid" name="userid" value="314873" />
			<div class="dn" id="recordPopBox">
				<dl>
					<dt>
						评价面试体验 <a class="boxclose" href="javascript:;"></a>
					</dt>
					<dd>
						<form id="recordForm">
							<input type="hidden" value="" id="recordId" />
							<ul id="interviewResult" class="record_radio clearfix">
								<li class="mr35">已收到offer <input type="radio" name="type"
									value="1" />
								</li>
								<li>未收到offer <input type="radio" name="type" value="2" />
								</li>
							</ul>
							<div class="dividebtm">
								<table>
									<tbody>
										<tr>
											<td width="80" valign="top" align="right">面试评分：</td>
											<td>
												<ul id="recordStarSelect">
													<li></li>
													<li></li>
													<li></li>
													<li></li>
													<li></li>
												</ul> <input type="hidden" id="recordStar" value=""
												name="recordStar" />
												<div class="clear"></div>
											</td>
										</tr>
										<tr>
											<td valign="top" align="right" class="dividebtman">面试短评：</td>
											<td><input type="hidden" class="error"
												id="select_record_hidden" value="" name="record" /> <input
												type="text" autocomplete="off" placeholder="15字以内对面试的简单描述哦"
												id="select_record" class="selectr_340" maxlength="15" />
												<div class="boxUpDownan boxUpDown_340 dn" id="box_record"
													style="display: none;">
													<ul>
														<p>热门短评：</p>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td valign="top" align="right" class="dividebtman">面试经历：</td>
											<td><textarea id="interviewDesc"
													placeholder="记录下自己的面试经历" style="width: 320px;"></textarea>
												<div class="word_count">
													你还可以输入 <span>500</span> 字
												</div>
												<div id="showName" class="f14 c7">
													<label class="checkbox"> <input type="checkbox" />
														<i></i>
													</label> 匿名提交
												</div> <input type="hidden" value="" id="isShowName" /> <input
												type="hidden" value="" id="senduid" /> <input type="hidden"
												value="" id="poid" /> <input type="hidden" value=""
												id="deid" /></td>
										</tr>
										<tr>
											<td align="right" colspan="2"><input type="submit"
												value="确认提交" class="submitRecord btn_small" /></td>
										</tr>
									</tbody>
								</table>
							</div>
						</form>
					</dd>
				</dl>
			</div>
			<!-- end #recordPopBox -->
			<script src="style/js/delivery.js"></script>
			
			<div class="clear"></div>
			<input type="hidden" value="" id="resubmitToken" /> <a rel="nofollow"
				title="回到顶部" id="backtop" style="display: none;"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="#" target="_blank" rel="nofollow">联系我们</a> <a href=""
				target="_blank">工作地址导航</a> <a href="#" target="_blank"
				rel="nofollow">蜜蜂微博</a> <a class="footer_qr" href="#" rel="nofollow">蜜蜂微信<i></i></a>
			<div class="copyright">
				&copy;2016-2017 Bee <a target="_blank" href="#">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

	<script src="${ctx }/style/js/core.min.js" type="text/javascript"></script>
	<script src="${ctx }/style/js/popup.min.js" type="text/javascript"></script>

	<!--  -->

	<script type="text/javascript">
		$(function() {
			$('#noticeDot-1').hide();
			$('#noticeTip a.closeNT').click(function() {
				$(this).parent().hide();
			});
		});
		var index = Math.floor(Math.random() * 2);
		var ipArray = new Array('42.62.79.226', '42.62.79.227');
		var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
		var CallCenter = {
			init : function(url) {
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
					if (notice.status[0] == 0) {
						$('#noticeDot-0').hide();
						$('#noticeTip').hide();
						$('#noticeNo').text('').show().parent('a').attr('href',
								ctx + '/mycenter/delivery.html');
						$('#noticeNoPage').text('').show().parent('a').attr(
								'href', ctx + '/mycenter/delivery.html');
					} else {
						$('#noticeDot-0').show();
						$('#noticeTip strong').text(notice.status[0]);
						$('#noticeTip').show();
						$('#noticeNo').text('(' + notice.status[0] + ')')
								.show().parent('a').attr('href',
										ctx + '/mycenter/delivery.html');
						$('#noticeNoPage').text(' (' + notice.status[0] + ')')
								.show().parent('a').attr('href',
										ctx + '/mycenter/delivery.html');
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

	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox" class="" role="dialog" tabindex="-1"
		style="display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxTitle" style="float: left;"></div>
					<div id="cboxCurrent" style="float: left;"></div>
					<button type="button" id="cboxPrevious"></button>
					<button type="button" id="cboxNext"></button>
					<button id="cboxSlideshow"></button>
					<div id="cboxLoadingOverlay" style="float: left;"></div>
					<div id="cboxLoadingGraphic" style="float: left;"></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
	</div>
</body>
</html>