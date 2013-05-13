<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
     <title>热门 - 果库</title>

        
    <link media="all" rel="stylesheet" type="text/css" href="${ctx }/static/styles/discover.css" />


        <link rel="icon" type="image/ico" href="${ctx }/static/images/favicon.ico">

        <script type="text/javascript">
        if (window.ActiveXObject) {
            var ua = navigator.userAgent.toLowerCase();
            var ie=ua.match(/msie ([\d.]+)/)[1]
            if(ie==6.0)
                location.href = "/ie6/";
        }
        </script>

    </head>

    <body>
        <div id="wrapper">
            
        
            
        <div id="navigation" class="with-border">
            <div class="nav-desc">
                <a class="nav-popular active" href="/popular/">24 小时</a>
                <span>|</span>
                <a class="nav-popular" href="/popular/?group=weekly">7 天</a>
                <span>|</span>
                <a class="nav-popular" href="/popular/?group=monthly">30 天</a>

                <div class="nav-desc-right">
                    最近更新：4 分钟前
                </div>
            </div>
        </div>

        
            <div id="main">
                
    <div class="main-container with-border" id="main-container">
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

				</c:forEach>
        </ul>
    </div>
    <a id="back-to-top" href="#"></a>

                <div class="clear"></div>
            </div>
        
                <div id="popup-login" class="with-border">
                    <a class="close-btn" href="javascript:void(0);">关闭</a>
                    <div class="top">
                        <form action="/login/" id="popup-login-form" method="post" enable="true">
                            <div class="content">
                                <p>
                                    <b>登录</b> | 没有帐号？ 
                                    <a href="/register/" class="green">请注册</a>
                                </p>
                                <div class="row">
                                    <label>邮箱</label>
                                    <input name="email" type="text" value="" />
                                </div>
                                <div class="row">
                                    <label>密码</label>
                                    <input name="password" type="password" value=""/>
                                </div>
                                <input type="hidden" name="next" value="" />
                                <input type="checkbox" name="remember_me" />
                                <span >记住我 &nbsp;·&nbsp;<a href="/forget_password/">忘记密码？</a></span>
                                <input type="submit" value="登录" class="btn-v2 right" />
                            </div>
                        </form>
                    </div>
             
                </div>
            

        </div>
        
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>  
        <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
    </body>
</html>
    

  