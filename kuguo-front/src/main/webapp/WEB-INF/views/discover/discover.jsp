<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!-- 发现 -->
<html>
<head>

<title>所有 - 果库</title>

</head>

<body>
	<div id="wrapper">
		<div id="popup-layer"></div>

		<div class="clear"></div>

		<div id="navigation" class="with-border">
			<div class="main-category">
				<a class="left all-category active" href="/discover/">所有</a> <em>|</em>
				<ul>
					<c:forEach items="${channels}" var="channel">
						<li> · <a href="/discover/?cat=${channel.id }">
								${channel.name } </a></li>
					</c:forEach>
				</ul>
				<a class="btn-v2" href="${ctx}/entity/new/">添加一件商品</a>
				<div class="clear"></div>
			</div>
			
		</div>


		<div id="main">

			<div class="main-container with-border discover" id="main-container">
				<c:forEach items="${products}" var="product">
					<ul class="items-list">

						<li>
							<div class="image">
								<a href="/detail/9fc02dcd/" target=_blank>
									<div class="img-mask"></div> <img src="${product.picture}"
									alt="${product.name }"
									title="${product.name }" />
								</a>
							</div>
							<div class="item-info">
								<a href="/u/2534/likes/" target=_blank> <img
									src="${product.user.head}" width="35" height="35" />

								</a>
								<a href="/u/2534/likes/" target=_blank> ${product.user.name}</a>
								 <br />
								 <label>&nbsp;2011 年 12 月 20 日</label>

								<p class="with-tag"></p>
								${product.comment.content}
							</div>
							<div class="like-row">



								<div class="like need-login">
									<span></span>喜爱&nbsp;<em>897</em>
								</div>

							</div>

						</li>

					</ul>
				</c:forEach>
				<!-- <div id="items-loading">加载中</div> -->
			</div>

			<a id="back-to-top" href="#"></a>

			<div class="clear"></div>
		</div>

	</div>


</body>
</html>
