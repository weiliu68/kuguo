<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
   <title>热门 - 果库</title>

       
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
                    最近更新：2 分钟前
                </div>
            </div>
        </div>

        
            <div id="main">
                
    <div class="main-container with-border" id="main-container">
    
    <ul class="items-list">
            

<c:forEach items="${products}" var="product">
    <li>
        <div class="image">
            <a href="/detail/" target=_blank >
                <div class="img-mask"></div>
                <img src="${product.picture}" alt="${product.name }" title="${product.name }" />
            </a>
        </div>
        <div class="item-info">
            <a href="/u/22045/likes/" target=_blank >
                <img src="${product.user.head}" width="35" height="35" />

            </a>
            <a href="/u/22045/likes/" target=_blank >
                ${product.user.name }
            </a>
                      <br/>
                <label>&nbsp;${product.comment.create_time}</label>
            
            <p class="with-tag">${product.comment.content}</p>
        </div>
        <div class="like-row">
            


    <div class="like " thelink="/entity/like/81931/0/">
        <span></span>喜爱&nbsp;<em>1425</em>
    </div>
            
        </div>
        
            <div class="avatar-container">
                
                    <a href="/u/85801/likes/" target=_blank>
                        <img src="" width="25" height="25" />

                    </a>
                
                    <a href="/u/162099/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/default_small_1.png" width="25" height="25" />

                    </a>
                
                    <a href="/u/142132/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/small_142132_174c23fcfe26cb3fb04b1575675db6d7.jpg" width="25" height="25" />

                    </a>
                
                    <a href="/u/103208/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/default_small_11.png" width="25" height="25" />

                    </a>
                
                    <a href="/u/138208/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/small_138208_edf0dc1230a3340a26cd9aa3239db6e7.jpg" width="25" height="25" />

                    </a>
                
                    <a href="/u/164018/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/small_164018_83e2663341666ecc182a862ca720f94c.jpe" width="25" height="25" />

                    </a>
                
                    <a href="/u/101817/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/default_small_3.png" width="25" height="25" />

                    </a>
                
                    <a href="/u/150319/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/default_small_4.png" width="25" height="25" />

                    </a>
                
            </div>
        
    </li>
</c:forEach>
   
        </ul>
    </div>
    <a id="back-to-top" href="#"></a>

                <div class="clear"></div>
            </div>
                   

        </div>
    </body>
</html>
    
        <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>
