<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>任务管理</title>
</head>

<body>
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success">
			<button data-dismiss="alert" class="close">×</button>
			${message}
		</div>
	</c:if>
	<div class="row">
		<div class="span4 offset7">
			<form class="form-search" action="#">
				<label>名称：</label> <input type="text" name="search_LIKE_title"
					class="input-medium" value="${param.search_LIKE_title}">
				<button type="submit" class="btn" id="search_btn">Search</button>
			</form>
		</div>
		<tags:sort />
	</div>

	<%-- 	<table id="contentTable"
		class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>任务</th>
				<th>管理</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products.content}" var="product">
				<tr>
					<td><a href="${ctx}/product/update/${product.id}">${product.name}</a></td>
					<td><a href="${ctx}/product/delete/${product.id}">删除</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table> --%>
	<c:forEach items="${products.content}" var="product">
		<div class="entity with-border">
			<div class="entity-attrs">
				<h3>
					<!-- 商品名称 -->
					<a href="${ctx}/product/update/${product.id}" target=_blank>
						${product.name} </a>
				</h3>

				<div class="image">
					<a href="/detail/3667b03c/" target=_blank>
						<div class="img-mask"></div> <img
						src="${product.picture }"
						alt="" title="" />
					</a>
				</div>

				<div class="like need-login">
					<span></span>喜爱&nbsp;<em>${product.favorite_num}</em>
				</div>
			</div>

			<div class="entity-notes">
				<div class="note">
					<a class="name c333" href="${ctx}/product/update/${product.id}"
						target=_blank> ${product.brand} </a> <span class="description">${product.description
						}</span>

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

					<div class="note-time right">${product.channel}</div>

					<a class="right note-weibo-share" href="javascript:void(0);">分享</a>

					<div class="clear"></div>
				</div>
				<div class="comments">
					<div class="arrow-grey"></div>
					<div class="container"></div>
				</div>
			</div>
		</div>
	</c:forEach>
	<tags:pagination page="${products}" paginationSize="5" />

	<div>
		<a class="btn" href="${ctx}/product/create">添加商品</a>
	</div>
</body>
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
</html>
