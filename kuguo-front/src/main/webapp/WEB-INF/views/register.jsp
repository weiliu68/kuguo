<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <title>欢迎加入果库</title>
        <link rel="icon" type="image/png" href="${ctx}/static/images/guoku_favicon.png">
        <link media="all" rel="stylesheet" type="text/css" href="${ctx}/static/styles/register.css" />

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
                            <a href="${ctx }/selected/">
                                <img src="${ctx}/static/images/guoku_icon_56.png"/>
                            </a>
                        </div>
                        
                        
                        <form action="${ctx}/register/" class="rl-form" id="sign-in-up-form1" method="post" enable="true">
                            <div class="content">
                                <p>
                                    <b>注册一个新的帐号</b> | 已有帐号？ 
                                    <a href="${ctx}/login" class="green">请登录</a>
                                </p>
                                <div class="row">
                                    <label>昵称</label>
                                   昵称:<input name="name" type="text" value="" /><br />
                                </div>
                                <div class="row">
                                    <label>邮箱（用于登录）</label>
                                    邮箱:<input name="email" type="text" value="" /><br />
                                </div>
                                <div class="row">
                                    <label>密码（至少 6 位数字或字母）</label>
                                    密码:<input name="plainPassword" type="password" value=""/><br />
                                </div>
                                <input type="checkbox" checked />
                                <span>同意果库<a href="/agreement/">《使用协议》</a></span>
                                <input type="submit" value="注册" class="btn-v2 ml80" />
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
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>
    </body> 
</html>
