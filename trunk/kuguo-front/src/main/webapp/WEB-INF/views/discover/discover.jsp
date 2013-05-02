<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!-- 发现 -->
<html>
<head>

<title>所有 - 果库</title>


<meta name="description"
	content="发现，方便你随便逛逛，向更多的朋友分享自己淘宝的经验、有趣的发现。我们知道你对于某一消费领域饱有认知，甚有品味。果库正努力成长为你分享个人品味或者找到志同道合族群的最佳途径。">
<meta name="keywords"
	content="果库,Guoku,果库网站,淘宝,单品,推荐,导购,母婴,配饰,鞋,包,帽,美容,数码,家居,运动,户外,文化,杂志,美食,搭配,达人,团购,淘宝店">

</head>

<body>
	<div id="wrapper">
		<div id="popup-layer"></div>

		<div class="clear"></div>

		<div id="navigation" class="with-border">
			<div class="main-category">
				<a class="left all-category active" href="/discover/">所有</a> <em>|</em>
				<ul>

					<li><span> · </span> <a href="/discover/?cat=1"> 女装 </a></li>

					<li><span> · </span> <a href="/discover/?cat=2"> 男装 </a></li>

					<li><span> · </span> <a href="/discover/?cat=3"> 孩童 </a></li>

					<li><span> · </span> <a href="/discover/?cat=4"> 配饰 </a></li>

					<li><span> · </span> <a href="/discover/?cat=5"> 美容 </a></li>

					<li><span> · </span> <a href="/discover/?cat=6"> 科技 </a></li>

					<li><span> · </span> <a href="/discover/?cat=7"> 居家 </a></li>

					<li><span> · </span> <a href="/discover/?cat=8"> 户外 </a></li>

					<li><span> · </span> <a href="/discover/?cat=9"> 文化 </a></li>

					<li><span> · </span> <a href="/discover/?cat=10"> 美食 </a></li>

					<li><span> · </span> <a href="/discover/?cat=11"> 玩乐 </a></li>

				</ul>
				<a class="btn-v2" href="/entity/new/">添加一件商品</a>
				<div class="clear"></div>
			</div>

		</div>


		<div id="main">

			<div class="main-container with-border discover" id="main-container">
				<c:forEach items="">
					<ul class="items-list">

						<li>
							<div class="image">
								<a href="/detail/9fc02dcd/" target=_blank>
									<div class="img-mask"></div> <img
									src="http://img01.taobaocdn.com/imgextra/i1/T1J.CBXeVeXXaEa2g2_044032.jpg_310x310.jpg"
									alt="TP-LINK TL-WR702N 迷你 便携 USB 无线 路由器 穿墙 无限 wifi"
									title="TP-LINK TL-WR702N 迷你 便携 USB 无线 路由器 穿墙 无限 wifi" />
								</a>
							</div>
							<div class="item-info">
								<a href="/u/2534/likes/" target=_blank> <img
									src="http://image.guoku.com/avatar/small_2534_b8f8e0c697ea13fb342dbc18cf11958c.jpg"
									width="35" height="35" />

								</a> <a href="/u/2534/likes/" target=_blank> 片栗弥生 </a> <br /> <label>&nbsp;2011
									年 12 月 20 日</label>

								<p class="with-tag">出差或旅行途中入住酒店，把酒店房间里的网线接到这个迷你路由器上。再连接好电源。整个房间就会被Wi-Fi覆盖了。此时你只需拿出你的手机、iPad或是其它任何支持Wi-Fi无线上网的设备，就能在房间任何地方无线上网。</p>
							</div>
							<div class="like-row">



								<div class="like need-login">
									<span></span>喜爱&nbsp;<em>897</em>
								</div>

							</div>

						</li>

					</ul>
				</c:forEach>
				<div id="items-loading">加载中</div>
			</div>

			<a id="back-to-top" href="#"></a>

			<div class="clear"></div>
		</div>

	</div>


</body>
</html>
