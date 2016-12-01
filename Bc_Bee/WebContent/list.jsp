<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="${ctx }/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>职位列表</title>
<meta property="qc:admins" content="23635710066417756375" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="http://www.lagou.com/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/style.css"/>
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
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="index.html" class="logo">
    			<img src="${ctx }/style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx }/index.jsp">首页</a></li>
    			<li ><a href="${ctx }/jiaoyuan" >教员列表</a></li>
    			<li ><a href="${ctx }/joblist">职位列表</a></li>
    				    			<li ><a href="jianli.html" rel="nofollow">发布职位</a></li>
	    							    			
	    		    		</ul>
	    		    		<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
	    		    		<ul class="loginTop">
            	<li><a href="${ctx }/login.jsp" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="${ctx }/register.jsp" rel="nofollow">注册</a></li>
            </ul><%}else{ %>
        	            <dl class="collapsible_menu">
            	<dt>
           			<span>${name }&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                <dd style="display: none;"><a rel="nofollow" href="${ctx }/jianli.jsp">我的简历</a></dd>
                <dd style="display: none;"><a href="${ctx }/collections.jsp">我收藏的职位</a></dd>
                <dd style="display: none;"><a href="${ctx }/Delivery/Init">我投递的职位 <span id="noticeNo" class="red dn">(0)</span></a></dd>
                <dd class="btm" style="display: none;"><a href="${ctx }/subscribe.jsp">我的订阅</a></dd>
                <dd style="display: none;"><a href="${ctx }/create.jsp">我要招人</a></dd>
                <dd style="display: none;"><a href="${ctx }/accountBind.jsp">帐号设置</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx }/login.jsp">退出</a></dd>
            </dl> <%} %>           </div>
    </div><!-- end #header -->
    <div id="container">
        
       	<div class="sidebar">
       		            <div id="options" class="greybg">
                                <dl >
                   	<dt>工作时间 <em ></em></dt>
	                <dd >
	                    	                    	<div>周一-周五</div>
	                    	                    	<div>周六日</div>
	                    	                    	
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>教学科目 <em ></em></dt>
	                <dd >
	                    	                    	<div>数学</div>
	                    	                    	<div>语文</div>
	                    	                    	<div>英语</div>
	                    	                    	<div>物理</div>
	                    	                    	<div>化学</div>
	                    	                    	<div>生物</div>
	                    	                    	<div>历史</div>
	                    	                    	<div>地理</div>
	                    	                    	<div>政治</div>
	                    	                    	<div>文综</div>
	                    	                    	<div>理综</div>
	                    	                    	<div>艺术类</div>
	                    	                    	<div>其他</div>
	                    	                    	
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>教学年级 <em ></em></dt>
	                <dd >
	                    	                    	<div>小学</div>
	                    	                    	<div>初中</div>
	                    	                    	<div>高中</div>
	                    	                    	
	                    	                </dd> 
                </dl>
                               
                            </div>
            
            <!-- QQ群 -->
            	            		            <div class="qq_group">
		            	加入<span>家教</span>QQ群
		            	<div class="f18">跟大家聊聊</div>
		            	<p>160541839</p>
		            </div>
		                                
            <!-- 对外合作广告位  -->
             	            		        	<a href="http://www.w3cplus.com/" target="_blank" class="partnersAd">
		            	<img src="${ctx }/style/images/w3cplus.png" width="230" height="80" alt="w3cplus" />
		            </a>
		            <a href="" target="_blank" class="partnersAd">
		            	<img src="${ctx }/style/images/jquery_school.jpg" width="230" height="80" alt="JQ学校" />
		            </a>
		                                	            <a href="http://linux.cn/" target="_blank" class="partnersAd">
	            	<img src="${ctx }/style/images/linuxcn.png" width="230" height="80" alt="Linux中文社区"  />
	            </a>
	            <a href="http://zt.zhubajie.com/zt/makesite? utm_source=lagou.com&utm_medium=referral&utm_campaign=BD-yl" target="_blank" class="partnersAd">
	            	<img src="${ctx }/style/images/zhubajie.jpg" width="230" height="80" alt="猪八戒" />
	            </a>
	            <a href="http://www.imooc.com" target="_blank" class="partnersAd">
	            	<img src="${ctx }/style/images/muke.jpg" width="230" height="80" alt="幕课网" />
	            </a>
	        	       	<!-- 	            <a href="http://www.osforce.cn/" target="_blank" class="partnersAd">
	            	<img src="${ctx }/style/images/osf-lg.jpg" width="230" height="80" alt="开源力量"  />
	            </a>
	         -->
        </div>
        
        <div class="content">
        	<div id="search_box">
		<form id="searchForm" name="searchForm" action="list.html" method="get">
        <ul id="searchType">
        	        	<li data-searchtype="1" class="type_selected">职位</li>
        	<li data-searchtype="4">公司</li>
        	        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" name = "kd"  tabindex="1" value="数学"  placeholder="请输入职位名称，如：数学家教"  />
        <input type="hidden" name="spc" id="spcInput" value="1"/>
        <input type="hidden" name="pl" id="plInput" value=""/>
        <input type="hidden" name="gj" id="gjInput" value=""/>
        <input type="hidden" name="xl" id="xlInput" value=""/>
        <input type="hidden" name="yx" id="yxInput" value=""/>
        <input type="hidden" name="gx" id="gxInput" value="" />
        <input type="hidden" name="st" id="stInput" value="" />
        <input type="hidden" name="labelWords" id="labelWords" value="label" />
        <input type="hidden" name="lc" id="lc" value="" />
        <input type="hidden" name="workAddress" id="workAddress" value=""/>
                <input type="hidden" name="city" id="cityInput" value="全国"/>
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
	<dd><a href="list.htmlJava?labelWords=label&city=全国">英语</a></dd>
	<dd><a href="list.htmlPHP?labelWords=label&city=全国">小学英语</a></dd>
	<dd><a href="list.htmlAndroid?labelWords=label&city=全国">小学数学</a></dd>
	<dd><a href="list.htmliOS?labelWords=label&city=全国">100元</a></dd>
	<dd><a href="list.html前端?labelWords=label&city=全国">语文</a></dd>
	<dd><a href="list.html产品经理?labelWords=label&city=全国">初中英语</a></dd>
	<dd><a href="list.htmlUI?labelWords=label&city=全国">数学</a></dd>
	<dd><a href="list.html运营?labelWords=label&city=全国">理综</a></dd>
	<dd><a href="list.htmlBD?labelWords=label&city=全国">生物</a></dd>
	<dd><a href="list.html?gx=实习&city=全国">历史</a></dd>
</dl>			<div class="breakline"></div>
            <dl class="workplace" id="workplaceSelect">
                <dt class="fl">工作地点：</dt>
               	               	<dd >
                	<a href="javascript:;" class="current">桥西区</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >桥东区</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >新华区</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >长安区</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >裕华区</a> 
                	                	|
                	               	</dd>
               	               	<dd class="more">
                	<a href="javascript:;" >其他地区</a>
                						<div class="triangle citymore_arrow"></div> 
                	                	
                	               	</dd>
               	               	
               	    
               	                <dd id="box_expectCity" class="searchlist_expectCity dn">
	            	<span class="bot"></span>
	            	<span class="top"></span>
		    				    						    			    						    		<dl>
			    			
			    	  	</dl>
			    	  				    				    </dd>  
            </dl>
         
            <div id="tip_didi" class="dn">
            	<span>亲，“嘀嘀打车”已更名为“滴滴打车”了哦，我们已帮您自动跳转~</span>
            	<a href="javascript:;">我知道了</a>
            </div>
            
            	            <ul class="hot_pos reset">
            	            <c:forEach items="${recinfo }" var="rf">
	                    		                    			                <li class="odd clearfix">
			                			                				                	<div class="hot_pos_l">
			                        <div class="mb10">
			                            <a href="${ctx }/job1?&id=${rf.rlId }" title="前端开发" target="_blank">${rf.jobTitle }</a> 
			                            &nbsp;
			                            <span class="c9">${rf.workArea }</span>
			                            			                        </div>
			                        <span><em class="c7">时薪：</em>${rf.salary}</span>
			                        <span><em class="c7">年级：</em> ${rf.grade}</span>
			                        <span><em class="c7">工作时间： </em>${rf.WTime}</span>
			                        <br />
			                        <span><em class="c7">职位诱惑：</em>${rf.subsidy}</span>
			                        <br />
			                        <span>1天前发布</span>
			                    </div> 
						        <div class="hot_pos_r">
			                        <div class="apply">
			                        <a href="${ctx }/mail/listadd?RlId=${rf.rlId}" target="_blank">投个简历</a>
			                        				                        </div>
			                        <div class="mb10"><a href="h/c/1712.html" title="紫色医疗" target="_blank">${rf.contacts}</a></div>
			                        
			                        			                        
			                       
			                        
			                            			                            				                            		
			                    </div>
			                 </li>
			                 </c:forEach>
			                
	                    		        
			                
	                    	            </ul>
	                        	<div class="Pagination"></div>
            	                    </div>	

<script>
$(function(){
	/***************************
 	 * 分页
 	 */
 	 						$('.Pagination').pager({
		      currPage: 1,
		      pageNOName: "pn",
		      form: "searchForm",
		      pageCount: 30,
		      pageSize:  5 
		});
		
	$(".workplace dd").not('.more').children('a').click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).html());
	});
	
	$("#box_expectCity dd span").click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).html());
	});
	
	$('#options dd div').click(function(){
		var firstName = $(this).parents('dl').children('dt').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围"){
			editForm("yxInput" , $(this).html());
		}
		else if(fn=="工作经验"){
			editForm("gjInput" , $(this).html());
		}
		else if(fn=="最低学历"){
			editForm("xlInput" , $(this).html());
		}
		else if(fn=="工作性质"){
			editForm("gxInput" , $(this).html());
		}
		else if(fn=="发布时间"){
			editForm("stInput" , $(this).html());
		}
	});
	
	$('#selected ul').delegate('li span.select_remove','click',function(event){
		var firstName = $(this).parent('li').find('strong').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围")
			editForm("yxInput" , "");
		else if(fn=="工作经验")
			editForm("gjInput" , "");
		else if(fn=="最低学历")
			editForm("xlInput" , "");
		else if(fn=="工作性质")
			editForm("gxInput" , "");
		else if(fn=="发布时间")
			editForm("stInput" , "");
	});
	
	/* search结果飘绿	*/
	(function($) {
		var searchVal = $('#search_input').val();
		var reg = /\s/g;     
		searchVal = searchVal.replace(reg, "").split(""); 
		
		var resultL = '';
		var resultR = '';
		$('.hot_pos li').each(function(){
			resultL = $('.hot_pos_l a',this).text().split("");
			$.each(resultL,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultL[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_l a',this).html(resultL.join(''));
			
			resultR = $('.hot_pos_r .mb10 a',this).text().split("");
			$.each(resultR,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultR[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_r .mb10 a',this).html(resultR.join(''));
		});
		
	})(jQuery);
	
	//didi tip
   	if($.cookie('didiTip') != 1 && false){
		$('#tip_didi').show();
	}
	$('#tip_didi a').click(function(){
		$(this).parent().remove();
		$.cookie('didiTip',1,{ expires: 30, path: '/'});
	});
	
});

function editForm(inputId,inputValue){
	$("#"+inputId).val(inputValue);
	var keyword = $.trim($('#search_input').val());
	var reg =  /[`~!@\$%\^\&\*\(\)_<>\?:"\{\},\\\/;'\[\]]/ig;
	var re = /#/g;
	var r = /\./g;
	var kw = keyword.replace(reg," ");

	if(kw == ''){
		$('#searchForm').attr('action','list.html所有职位').submit();	
	}else{
		kw = kw.replace(re,'井');
		kw = kw.replace(r,'。');
		$('#searchForm').attr('action','list.html'+kw).submit();
	}
	//$("#searchForm").submit();
}
</script>

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

<!--  -->

</body>
</html>