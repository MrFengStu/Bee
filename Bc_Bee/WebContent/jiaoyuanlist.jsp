<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8"
	src="${ctx }/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld" />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>职位搜索-蜜蜂网-最专业的家教平台</title>
<meta property="qc:admins" content="23635710066417756375" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>
<link rel="Shortcut Icon"
	href="http://www.lagou.com/h/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${ctx }/style/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx }/style/css/external.min.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx }/style/css/popup.css" />
<script src="${ctx }/style/js/jquery.1.10.1.min.js"
	type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/jquery.lib.min.js"></script>
<script src="${ctx }/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript"
	src="${ctx }/style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="${ctx }/style/js/excanvas.js"></script>
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
				<a href="${ctx }/index.jsp" class="logo"> <img
					src="${ctx }/style/images/logo.png" width="229" height="43"
					alt="拉勾招聘-专注互联网招聘" />
				</a>
				<ul class="reset" id="navheader">
					<li><a href="${ctx }/index.jsp">首页</a></li>
					<li><a href="${ctx }/joblist" target="_blank">职位列表</a></li>
					<li class="current"><a href="${ctx }/jiaoyuan">教员列表</a></li>
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
						<a rel="nofollow" href="${ctx }/jianli.jsp">我的简历</a>
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
			</div>
		</div>
		<!-- end #header -->
		<div id="container">

			<div class="sidebar">
				<div id="options" class="greybg">
					<dl>
						<dt>
							工资范围 <em></em>
						</dt>
						<dd>
							<div>25元/小时</div>
							<div>30元/小时</div>
							<div>35元/小时</div>
							<div>40元/小时</div>
							<div>45元/小时</div>
							<div>50元/小时</div>
							<div>50元以上</div>
						</dd>
					</dl>
					<dl>
						<dt>
							工作经验 <em></em>
						</dt>
						<dd>
							<div>不限</div>
							<div>1-2年</div>
							<div>2-4年</div>
						</dd>
					</dl>
					<dl>
						<dt>
							学历 <em></em>
						</dt>
						<dd>
							<div>不限</div>
							<div>大专</div>
							<div>本科</div>
							<div>硕士</div>
							<div>博士</div>
						</dd>
					</dl>

					<dl>
						<dt>
							发布时间 <em></em>
						</dt>
						<dd>
							<div>今天</div>
							<div>3天内</div>
							<div>一周内</div>
							<div>一月内</div>
						</dd>
					</dl>
				</div>

				<!-- QQ群 -->
				<div class="qq_group">
					加入<span>前端</span>QQ群
					<div class="f18">跟同行聊聊</div>
					<p>160541839</p>
				</div>

				<!-- 对外合作广告位  -->
				<a href="" target="_blank" class="partnersAd"> <img
					src="${ctx }/style/images/w3cplus.png" width="230" height="80"
					alt="w3cplus" />
				</a> <a href="" target="_blank" class="partnersAd"> <img
					src="${ctx }/style/images/jquery_school.jpg" width="230"
					height="80" alt="JQ学校" />
				</a> <a href="" target="_blank" class="partnersAd"> <img
					src="${ctx }/style/images/muke.jpg" width="230" height="80"
					alt="幕课网" />
				</a>
				<!-- 	            <a href="http://www.osforce.cn/" target="_blank" class="partnersAd">
	            	<img src="${ctx }/style/images/osf-lg.jpg" width="230" height="80" alt="开源力量"  />
	            </a>
	         -->
			</div>

			<div class="content">
				<div id="search_box">
					<form id="searchForm" name="searchForm" action="${ctx }/search1"
						method="post">
						<ul id="searchType">
							<li data-searchtype="1" class="type_selected">职位</li>
							<li data-searchtype="4">教员</li>
						</ul>
						<div class="searchtype_arrow"></div>
						<input type="text" id="search_input" name="kd" tabindex="1"
							value="" placeholder="请输入职位名称，如：小学数学" /> <input type="hidden"
							name="spc" id="spcInput" value="1" /> <input type="hidden"
							name="pl" id="plInput" value="" /> <input type="hidden" name="gj"
							id="gjInput" value="" /> <input type="hidden" name="xl"
							id="xlInput" value="" /> <input type="hidden" name="yx"
							id="yxInput" value="" /> <input type="hidden" name="gx"
							id="gxInput" value="" /> <input type="hidden" name="st"
							id="stInput" value="" /> <input type="hidden" name="labelWords"
							id="labelWords" value="label" /> <input type="hidden" name="lc"
							id="lc" value="" /> <input type="hidden" name="workAddress"
							id="workAddress" value="" /> <input type="hidden" name="city"
							id="cityInput" value="全国" /> <input type="submit"
							id="search_button" value="搜索" />
					</form>
				</div>
				<style>
.ui-autocomplete {
	width: 488px;
	background: #fafafa !important;
	position: relative;
	z-index: 10;
	border: 2px solid #91cebe;
}

.ui-autocomplete-category {
	font-size: 16px;
	color: #999;
	width: 50px;
	position: absolute;
	z-index: 11;
	right: 0px; /*top: 6px; */
	text-align: center;
	border-top: 1px dashed #e5e5e5;
	padding: 5px 0;
}

.ui-menu-item {
	*width: 439px;
	vertical-align: middle;
	position: relative;
	margin: 0px;
	margin-right: 50px !important;
	background: #fff;
	border-right: 1px dashed #ededed;
}

.ui-menu-item a {
	display: block;
	overflow: hidden;
}
</style>
				<script type="text/javascript" src="${ctx }/style/js/search.min.js"></script>
				<dl class="hotSearch">
	<dt>热门搜索：</dt>
	<c:forEach items="${hotsearch}" var="hs">
	<dd><a href="${ctx }/search1?&kd=${hs.including }">${hs.including }</a></dd>
	</c:forEach>
</dl>	
				<div class="breakline"></div>
				<dl class="workplace" id="workplaceSelect">
					<dt class="fl">工作地点：</dt>
					<dd>
						<a href="javascript:;" class="current">桥西区</a> |
					</dd>
					<dd>
						<a href="javascript:;">桥东区</a> |
					</dd>
					<dd>
						<a href="javascript:;">裕华区</a> |
					</dd>
					<dd>
						<a href="javascript:;">长安区</a> |
					</dd>
					<dd>
						<a href="javascript:;">新华区</a> |
					</dd>

					<dd class="more">
						<a href="javascript:;">其他</a>
				</dl>

				<div id="tip_didi" class="dn">
					<span>亲，“嘀嘀打车”已更名为“滴滴打车”了哦，我们已帮您自动跳转~</span> <a href="javascript:;">我知道了</a>
				</div>

				<ul class="hot_pos reset">
					<c:forEach items="${resumes}" var="rs">
						<li class="odd clearfix">
							<div class="hot_pos_l">
								<div class="mb10">
									<a href="${ctx }/peopledetail?id=${rs.reId }" title="前端开发"
										target="_blank">${rs.TUName }</a> &nbsp; <span class="c9">${rs.area }</span>
								</div>
								<span><em class="c7">优惠：</em>${rs.discount }</span> <span><em
									class="c7">经验：</em> ${rs.pte }</span> <span><em class="c7">学历：
								</em>${rs.ted }</span> <br /> <br /> <span>[${rs.reTime }]</span>
							</div>
							<div class="hot_pos_r">
								<div class="apply">
									<a href="${ctx}/send/sendInvitation?param=${rs.TUName}"
										target="_blank">发出邀请</a>
								</div>
								<div class="mb10">
									<a href="${ctx }/peopledetail?id=${rs.reId }" title="紫色医疗"
										target="_blank">个人详情</a>
								</div>

							</div>
						</li>
					</c:forEach>



				</ul>
				<div class="Pagination">
					<td colspan="6" align="center">共${page.totalRecords }条记录
						共${page.totalPages }页 当前第${page.pageNo }页<br> <a
						href="<%=request.getContextPath() %>/}/jiaoyuan?pageNo=${page.topPageNo }"
						name="firstPage" value="首页">首页</a> <c:choose>
							<c:when test="${page.pageNo!=1 }">
								<a
									href="<%=request.getContextPath() %>/jiaoyuan?pageNo=${page.previousPageNo}"
									name="previousPage" value="上一页">上一页</a>
							</c:when>
							<c:otherwise>
								<a
									href="<%=request.getContextPath() %>/jiaoyuan?pageNo=${page.previousPageNo}"
									disabled="disabled" name="previousPage" value="上一页">上一页</a>
							</c:otherwise>
						</c:choose> <c:choose>
							<c:when test="${page.pageNo!=page.totalPages }">
								<a
									href="<%=request.getContextPath()%>/jiaoyuan?pageNo=${page.nextPageNo}"
									name="nextPage" value="下一页">下一页</a>
							</c:when>
							<c:otherwise>
								<a
									href="<%=request.getContextPath()%>/jiaoyuan?pageNo=${page.nextPageNo}"
									disabled="disabled" name="nextPage" value="下一页">下一页</a>
							</c:otherwise>
						</c:choose> <a
						href="<%=request.getContextPath()%>/jiaoyuan?pageNo=${page.bottomPageNo}"
						name="lastPage" value="尾页">尾页</a>
					</td>
				</div>
			</div>

			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" /> <a id="backtop"
				title="回到顶部" rel="nofollow"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="#" target="_blank" rel="nofollow">联系我们</a> <a
				href="" target="_blank">工作地址导航</a> <a href="#"
				target="_blank" rel="nofollow">蜜蜂微博</a> <a class="footer_qr"
				href="#" rel="nofollow">蜜蜂微信<i></i></a>
			<div class="copyright">
				&copy;2016-2017 Bee <a target="_blank" href="#">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="${ctx }/style/js/core.min.js"></script>
	<script type="text/javascript" src="${ctx }/style/js/popup.min.js"></script>

	<!--  -->

</body>
</html>