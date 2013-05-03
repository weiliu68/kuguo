<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <title>欢迎加入果库</title>
        <link rel="icon" type="image/png" href="http://static.guoku.com/static/images/guoku_favicon.png">
        <link media="all" rel="stylesheet" type="text/css" href="http://static.guoku.com/static/css/343529a82201d2afd88a7957d3cf484f/register.css" />

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
            <div id="main">
                <div class="rlcontainer">
                    <div class="top">
                        <div class="big_logo">
                            <a href="/selected/">
                                <img src="${ctx}/static/images/guoku_icon_56.png" />
                            </a>
                        </div>
                        <form action="/login/" class="rl-form" id="login-in-form" method="post" enable="true">
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
                                    <input name="password" type="password" value="" />
                                </div>
                                <input type="checkbox" name="remember_me" checked="checked"/>
                                <span>记住我 &nbsp;·&nbsp;<a href="/forget_password/">忘记密码？</a></span>
                                <input type="submit" value="登录" class="btn-v2" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div id="footer">
                <div class="footer-container">
                    <span>京ICP备11036615号-1 京公网安备11010502019958</span>
                    <ul class="footer-items">
                        <li><a href="http://itunes.apple.com/cn/app/id477652209?mt=8" target="_blank" bi="download_iphone">iPhone</a></li>
                        <li><a href="http://itunes.apple.com/cn/app/id450507565?mt=8" target="_blank" bi="download_ipad">iPad</a></li>
                        <li><a href="http://app.guoku.com/android/latest/guoku.apk" target="_blank" bi="download_android">Android</a></li>
                        <li><a href="mailto:hi@guoku.com" alt="Keep in touch :)">邮件反馈</a></li>
                        <li><a href="http://www.weibo.com/guoku" target="_blank" bi="sina">新浪微博</a></li>
                        <li><a href="http://t.qq.com/guokuapp" target="_blank" bi="tencent">腾讯微博</a></li>
                        <li><a href="http://site.douban.com/130280/" target="_blank" bi="douban">豆瓣小站</a></li>
                        <li><a href="http://guoku.com/agreement/">用户协议</a></li>
                        <li>© 2013 <a href="http://guoku.com">果库</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>    </body> 
</html>
