<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html style="overflow-x: hidden; overflow-y: scroll;"
	xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>库果网</title>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width">
		<meta content="库果,kuguo" property="og:site_name">
			<meta content="http://www.similarercom" property="og:url">
				<meta content="库果,kuguo" property="og:title">



					<meta name="description" content="这里是库果网">
						<meta name="keywords" content="库果网">



							<link media="all" rel="stylesheet" type="text/css"
								href="selection.css" />


							<link rel="icon" type="image/ico"
								href="http://static.guoku.com/static/images/favicon.ico">

								<script type="text/javascript">
									if (window.ActiveXObject) {
										var ua = navigator.userAgent
												.toLowerCase();
										var ie = ua.match(/msie ([\d.]+)/)[1]
										if (ie == 6.0)
											location.href = "/ie6/";
									}
								</script>
</head>

<body>
	<div id="wrapper">
		<div id="popup-layer"></div>

		<div id="header">
			<div class="header-holder">
				<div class="logo">
					<a href="/selected/"><img
						src="http://static.guoku.com/static/images/guoku_icon_32.png"
						alt="Logo" height="32"></a>
				</div>
				<div class="header-nav">
					<a class="active" href="/selected/"> 精选 </a> <a href="/activity/">
						动态 </a> <a href="/popular/"> 热门 </a> <a href="/discover/"> 发现 </a>

				</div>


				<div class="header-nav-right">
					<a href="/register/"> 注册 </a> | <a href="/login/"> 登录 </a>
				</div>


			</div>
		</div>
		<div class="clear"></div>




		<div id="main">

			<div class="main-left selected-body" id="main-left">
				<h1>
					所有 <span>最近更新：</span>
				</h1>


				<div class="entity with-border">
					<div class="entity-attrs">
						<h3>
							<a href="/detail/3667b03c/" target=_blank> ${product.name} </a>
						</h3>

						<div class="image">
							<a href="/detail/3667b03c/" target=_blank>
								<div class="img-mask"></div> <img
								src="http://img03.taobaocdn.com/bao/uploaded/i3/1049653664/T29FuhXahcXXXXXXXX_!!1049653664.jpg_230x230.jpg"
								alt="《小「食」光》lacuisine" title="《小「食」光》lacuisine" />
							</a>
						</div>

						<div class="like need-login">
							<span></span>喜爱&nbsp;<em>20</em>
						</div>
					</div>
					
					<div class="entity-notes">
						<div class="note">
							<div class="avatar">
								<a href="/u/10/likes/" target=_blank> <img
									src="http://image.guoku.com/avatar/small_10_8a50623705c04427f5584db51a42ab10.jpg"
									width="50" height="50" />

								</a>
							</div>
							<a class="name c333" href="/u/10/likes/" target=_blank> Lynn
							</a> <span class="desc">仁义大哥</span>

							<p class="with-tag">${product.description}</p>
							<div class="link-row">

								<div class="approve-btn left need-login">
									<span></span><em></em>
								</div>


								<span class="splite-icon left"></span>

								<div class="disapprove-btn left need-login">
									<span></span><em></em>
								</div>


								<span class="splite-icon left"></span>

								<div class="comment-btn left  need-login">
									<span></span><em></em>
								</div>



								<div class="note-time right">3 小时前</div>







								<a class="right note-weibo-share" href="javascript:void(0);">分享</a>

								<div class="clear"></div>
							</div>
							<div class="comments">
								<div class="arrow-grey"></div>
								<div class="container"></div>

							</div>
						</div>


						<div class="hidden-area dn"></div>


						<div class="fold-note">



							<a href="javascript:void(0);" class="need-login"> 写点评 </a>


						</div>

					</div>
				</div>



				<a href="/selected/?p=2" class="paging-btn">下一页</a> <a
					href="javascript:void(0);" class="paging-btn invalid">上一页</a>


			</div>
			<div class="main-right" id="main-right">

				<div class="sider-login with-border">
					<p>果库，尽收世上好物！</p>
					<p class="sider-login-bottom">
						<a class="btn-v2" href="/register/">注册帐号</a>已有帐号，<a class="green"
							href="/login/">从这里登录</a>
					</p>
				</div>


<!-- 频道显示区 -->
				<div class="siderbar with-border">
					<div class="aside">
						<a class="all-cate active " href="/selected/"> 所有 </a>
						<ul>

							<li>· <a class="link-v1" href="/selected/?c=1"> 女装 </a>
							</li>

						</ul>
					</div>

<!-- 标签显示区 -->
					<div class="aside">
						<h3>热门的标签</h3>

						<p class="hottag">
							<span>#</span><a class="c666" href="/t/2674049e/" target=_blank>地震了该怎么办</a>
						</p>

					</div>


<!-- 显示用户  -->
					<div class="aside">
						<h3>热门的用户</h3>


						<div class="note">
							<div class="avatar">
								<a href="/u/7/likes/" target=_blank> <img
									src="http://image.guoku.com/avatar/small_7_24431b0d7737b0d5637f29b0086e2a7f.jpg"
									width="50" height="50" />

								</a>
							</div>
							<a class="name c333" href="/u/7/likes/" target=_blank>
								.... </a> <span class="desc l24"></span>

							<div class="clear"></div>
						</div>
	
					</div>


					<div class="aside mobile-download">
						<h3>下载果库客户端</h3>
						<p>
							<a href="http://itunes.apple.com/cn/app/id477652209?mt=8"
								target="_blank" bi="download_iphone">iPhone</a> / <a
								href="http://itunes.apple.com/cn/app/id450507565?mt=8"
								target="_blank" bi="download_ipad">iPad</a> / <a
								href="http://app.guoku.com/android/latest/guoku.apk"
								target="_blank" bi="download_andriod">Android</a>
						</p>
					</div>

				</div>
			</div>
			<a id="back-to-top" href="#"></a>

			<div class="clear"></div>
		</div>


		<div id="footer">
			<div class="footer-container">
				<span>京ICP备11036615号-1 京公网安备11010502019958</span>
				<ul class="footer-items">
					<li><a href="http://itunes.apple.com/cn/app/id477652209?mt=8"
						target="_blank" bi="download_iphone">iPhone</a></li>
					<li><a href="http://itunes.apple.com/cn/app/id450507565?mt=8"
						target="_blank" bi="download_ipad">iPad</a></li>
					<li><a href="http://app.guoku.com/android/latest/guoku.apk"
						target="_blank" bi="download_android">Android</a></li>
					<li><a href="mailto:hi@guoku.com" alt="Keep in touch :)">邮件反馈</a></li>
					<li><a href="http://www.weibo.com/guoku" target="_blank"
						bi="sina">新浪微博</a></li>
					<li><a href="http://t.qq.com/guokuapp" target="_blank"
						bi="tencent">腾讯微博</a></li>
					<li><a href="http://site.douban.com/130280/" target="_blank"
						bi="douban">豆瓣小站</a></li>
					<li><a href="/agreement/" target="_blank">用户协议</a></li>
					<li>© 2013 <a href="http://guoku.com">果库</a></li>
				</ul>
			</div>
		</div>


		<div id="popup-login" class="with-border">
			<a class="close-btn" href="javascript:void(0);">关闭</a>
			<div class="top">
				<form action="/login/" id="popup-login-form" method="post"
					enable="true">
					<div class="content">
						<p>
							<b>登录</b> | 没有帐号？ <a href="/register/" class="green">请注册</a>
						</p>
						<div class="row">
							<label>邮箱</label> <input name="email" type="text" value="" />
						</div>
						<div class="row">
							<label>密码</label> <input name="password" type="password" value="" />
						</div>
						<input type="hidden" name="next" value="" /> <input
							type="checkbox" name="remember_me" /> <span>记住我
							&nbsp;·&nbsp;<a href="/forget_password/">忘记密码？</a>
						</span> <input type="submit" value="登录" class="btn-v2 right" />
					</div>
				</form>
			</div>
			<div class="bottom">
				<div class="content">
					第三方帐号登录 <a href="/sina/login/"><img
						src="http://static.guoku.com/static/images/weibo_20x16.jpg"
						alt="新浪微博">新浪微博</a> <a href="/taobao/login/"><img
						src="http://static.guoku.com/static/images/taobao_20x15.jpg"
						alt="淘宝网">淘宝网</a>

				</div>
			</div>
		</div>


	</div>
</body>
</html>



<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-24696872-5' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();

	(function($) {
		$('a').click(function() {
			var name = $(this).attr("bi");
			if (name != undefined)
				_gaq.push([ '_trackEvent', name, 'clicked' ]);
		});
	}(jQuery));

	/* taobao jssdk */
</script>
