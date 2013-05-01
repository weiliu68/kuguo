<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>任务管理</title>
	
	<script>
		$(document).ready(function() {
			//聚焦第一个输入框
			$("#product_title").focus();
			//为inputForm注册validate函数
			$("#inputForm").validate();
		});
	</script>
</head>

<body>
	<form id="inputForm" action="${ctx}/product/${action}" method="post" class="form-horizontal">
		<input type="hidden" name="id" value="${product.id}"/>
		<fieldset>
			<legend><small>管理任务</small></legend>
			<div class="control-group">
				<label for="product_title" class="control-label">商品名称:</label>
				<div class="controls">
					<input type="text" id="product_title" name="name"  value="${product.name}" class="input-large required" minlength="3"/>
				</div>
			</div>	
			<div class="control-group">
				<label for="description" class="control-label">商品描述:</label>
				<div class="controls">
					<textarea id="description" name="description" class="input-large">${product.description}</textarea>
				</div>
			</div>	
			<div class="control-group">
				<label for="price" class="control-label">价格:</label>
				<div class="controls">
					<textarea id="price" name="price" class="input-large">${product.price}</textarea>
				</div>
			</div>	
			
			<div class="control-group">
				<label for="channel" class="control-label">分类:</label>
				<div class="controls">
					<textarea id="channel" name="channel" class="input-large">${product.channel}</textarea>
				</div>
			</div>	
			
			<div class="control-group">
				<label for="favorite_num" class="control-label">喜爱数:</label>
				<div class="controls">
					<textarea id="favorite_num" name="favorite_num" class="input-large">${product.favorite_num}</textarea>
				</div>
			</div>	
			
			<div class="control-group">
				<label for="brand" class="control-label">品牌:</label>
				<div class="controls">
					<textarea id="brand" name="brand" class="input-large">${product.brand}</textarea>
				</div>
			</div>	
			
			<div class="control-group">
				<label for="hots" class="control-label">热度:</label>
				<div class="controls">
					<textarea id="hots" name="hots" class="input-large">${product.hots}</textarea>
				</div>
			</div>	
			
			<div class="control-group">
				<label for="order_link" class="control-label">链接:</label>
				<div class="controls">
					<textarea id="order_link" name="order_link" class="input-large">${product.order_link}</textarea>
				</div>
			</div>	
			
			<div class="control-group">
				<label for="picture" class="control-label">图片:</label>
				<div class="controls">
					<textarea id="picture" name="picture" class="input-large">${product.picture}</textarea>
				</div>
			</div>	
		
		
			<div class="form-actions">
				<input id="submit_btn" class="btn btn-primary" type="submit" value="提交"/>&nbsp;	
				<input id="cancel_btn" class="btn" type="button" value="返回" onclick="history.back()"/>
			</div>
		</fieldset>
	</form>
</body>
</html>
