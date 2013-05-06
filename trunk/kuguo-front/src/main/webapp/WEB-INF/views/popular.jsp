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
            
                




    <li>
        <div class="image">
            <a href="/detail/40a0cce4/" target=_blank >
                <div class="img-mask"></div>
                <img src="http://img04.taobaocdn.com/bao/uploaded/i4/10523022571794220/T1z2ivXCFfXXXXXXXX_!!0-item_pic.jpg_310x310.jpg" alt="PLUS 2013 年限量版修饰带" title="PLUS 2013 年限量版修饰带" />
            </a>
        </div>
        <div class="item-info">
            <a href="/u/105/likes/" target=_blank >
                <img src="http://image.guoku.com/avatar/small_105_7d4321644b555a2a83374e964ec001e6.jpg" width="35" height="35" />

            </a>
            <a href="/u/105/likes/" target=_blank >
                P 
            </a>
            <br />
            
                <label>&nbsp;昨天</label>
            
            <p class="with-tag">PLUS 2013 年限量版修饰带。修正带式的修饰带，拉动出花，可以用在笔记、贺卡、包装等场合，新颖别致。各种的款式的替芯都可以兼容使用，互相替换。</p>
        </div>
        <div class="like-row">
            


    <div class="like need-login">
        <span></span>喜爱&nbsp;<em>1087</em>
    </div>


            
                /
                <div class="heat">
                    24 小时热度 1084 
                </div>
            
        </div>
        
            <div class="avatar-container">
                
                    <a href="/u/161917/likes/" target=_blank>
                        <img src="http://image.guoku.com/avatar/default_small_2.png" width="25" height="25" />

                    </a>
      
            </div>
        
    </li>

      
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
    

  