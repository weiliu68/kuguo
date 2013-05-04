<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
   <title>热门 - 果库</title>

        
    <link media="all" rel="stylesheet" type="text/css" href="${ctx }/static/styles/discover.css" />


        <link rel="icon" type="image/ico" href="${ctx}/static/images/favicon.ico">

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
            
                



<c:forEach items="products" var="product">
    <li>
        <div class="image">
            <a href="/detail/61cdc299/" target=_blank >
                <div class="img-mask"></div>
                <img src="" alt="VATIRI 随手杯" title="VATIRI 随手杯" />
            </a>
        </div>
        <div class="item-info">
            <a href="/u/22045/likes/" target=_blank >
                <img src="http://image.guoku.com/avatar/small_22045_57c98cc9076d59d57b3335eaf062b4ab.jpg" width="35" height="35" />

            </a>
            <a href="/u/22045/likes/" target=_blank >
                
            </a>
            <br />
            
                <label>&nbsp;24 小时前</label>
            
            <p class="with-tag">VATIRI 随手杯。第三代，流线型瓶身设计，密封螺旋瓶盖，配合丹宁/绒面皮革材质隔热带，用着舒适，看起来高级又时尚，适合你。</p>
        </div>
        <div class="like-row">
            


    <div class="like " thelink="/entity/like/81931/0/">
        <span></span>喜爱&nbsp;<em>1425</em>
    </div>


            
                /
                <div class="heat">
                    24 小时热度 1424 
                </div>
            
        </div>
        
            <div class="avatar-container">
                
                    <a href="/u/85801/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/small_85801_65d5c20d7ea12a32961d0882e1a612c1.jpe" width="25" height="25" />

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
    

    <script type="text/javascript" src="http://static.guoku.com/static/js/343529a82201d2afd88a7957d3cf484f/jquery.min.js"></script>
    <script type="text/javascript" src="http://static.guoku.com/static/js/343529a82201d2afd88a7957d3cf484f/main.js"></script>
