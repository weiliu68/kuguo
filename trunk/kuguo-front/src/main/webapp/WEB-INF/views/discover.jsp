<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!-- 发现 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<title>所有</title>
<link media="all" rel="stylesheet" type="text/css" href="${ctx }/static/styles/discover.css" />
</head>

<body>
	<div id="wrapper">

		<div id="navigation" class="with-border">
			<div class="main-category">
				<a class="left all-category active" href="${ctx }/discover/">所有</a> <em>|</em>
				<ul>
					<c:forEach items="${channels}" var="channel">
						<li> · <a href="${ctx }/discover/?cat=${channel.id }">
								${channel.name } </a></li>
					</c:forEach>
				</ul>
				<a class="btn-v2" href="${ctx}/entity/new/">添加一件商品</a>
				<div class="clear"></div>
			</div>
			
		</div>


		<div id="main">

			<div class="main-container with-border discover" id="main-container">
					<ul class="items-list">
				<c:forEach items="${products}" var="product">

						<li>
							<div class="image">
								<a href="${ctx }/detail/${product.id }/" target=_blank>
									<div class="img-mask"></div> <img src="${product.picture}"
									alt="${product.name }"
									title="${product.name }" />
								</a>
							</div>
							<div class="item-info">
								<a href="${ctx }/u/${product.user.id }/likes/" target=_blank> <img
									src="${product.user.head}" width="35" height="35" />

								</a>
								<a href="${ctx }/u/${product.user.id }/likes/" target=_blank> ${product.user.name}</a>
								 <br />
								 <label>&nbsp;${product.comment.create_time }</label>

								<p class="with-tag"></p>
								${product.comment.content}
							</div>
							<div class="like-row">


								<div class="like need-login">
									<span></span>喜爱&nbsp;<em>${product.favorite_num}</em>
								</div>

							</div>

						</li>

				</c:forEach>
					</ul>
			</div>

			<a id="back-to-top" href="#"></a>

			<div class="clear"></div>
		</div>

	</div>
<script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>  
        <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
</body>
</html>
