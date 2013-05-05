<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0028)http://guoku.com/entity/new/ -->
<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml"><head _wxlaelhepjgkhpnfpeodbobgikmbjecnne_="shake_1.0"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <title>添加商品 - 果库</title>


        
        <meta name="viewport" content="width=device-width">
        <meta content="果库,Guoku" property="og:site_name">
        <meta content="http://www.guoku.com" property="og:url">
        <meta content="果库,Guoku" property="og:title">


        
            <meta name="description" content="果库，最实用的网络购物指南，每日优选与发现最有趣、有用、有价值的网购商品。帮助降低发现的成本，努力提升消费的质量。">
            <meta name="keywords" content="果库,Guoku,果库网站,淘宝,单品,推荐,导购,母婴,配饰,鞋,包,帽,美容,数码,家居,运动,户外,文化,杂志,美食,搭配,达人,团购,淘宝店">
        
    
        
    <link media="all" rel="stylesheet" type="text/css" href="${ctx }/static/styles/add.css">


        <link rel="icon" type="image/ico" href="http://static.guoku.com/static/images/favicon.ico">

        <script type="text/javascript">
        if (window.ActiveXObject) {
            var ua = navigator.userAgent.toLowerCase();
            var ie=ua.match(/msie ([\d.]+)/)[1]
            if(ie==6.0)
                location.href = "/ie6/";
        }
        </script><style type="text/css"></style>

    </head>

    <body>
        <div id="wrapper">
            <div id="popup-layer"></div>
            
            <div id="header">
                <div class="header-holder">
                    <div class="logo">
                        <a href="http://guoku.com/selected/"><img src="./添加商品 - 果库_files/guoku_icon_32.png" alt="Logo" height="32"></a>
                    </div>
                    <div class="header-nav">
                        <a href="http://guoku.com/selected/">
                            精选
                        </a>
                        <a href="http://guoku.com/activity/">
                            动态 
                        </a>
                        <a href="http://guoku.com/popular/">
                            热门
                        </a>
                        <a href="http://guoku.com/discover/">
                            发现 
                        </a>
                        
                            <a href="http://guoku.com/u/69567/likes/">
                                我的果库
                            </a>
                        
                    </div>
                    
                        <div class="tools-holder">
                            <div id="user-tools">
                                <a href="http://guoku.com/u/69567/likes/">
                                    <span>
                                        有劲没劲
                                    </span>
                                </a>
                                <ul class="drop">
                                    
                                    <li><a href="http://guoku.com/setting/" target="_blank">设置</a></li>
                                    <li><a href="http://guoku.com/logout/">退出</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="header-nav-right">
                            <a href="http://guoku.com/message/">
                                消息
                                
                            </a>
                        </div>
                    
                </div>
            </div>
            <div class="clear"></div>
        
            

        
            <div id="main">
                
    <div class="main-left" id="main-left">
        <h1>
            添加商品入库 
        </h1>

        <div class="entity with-border" style="min-height: 278px;">
            <form action="${ctx}/entity/taobao/info" method="post" id="new-entity-form" _lpchecked="1">
                <label>选择货真价实，有用、有趣、有价值的好商品</label>
                <br>
                <input type="text" id="new-entity-url" name="url" value="粘贴商品链接到这里" defaultvalue="粘贴商品链接到这里" style="color: rgb(187, 187, 187);">
                <input type="submit" name="btn" class="btn-v1" value="载入">
            </form>

        </div>
    </div>
    <div class="main-right" id="main-right">

        <div class="siderbar with-border">
            <div class="aside">
                <h3>果库全是好商品</h3>
                <p class="c999">如果，一件商品，</p>
                <p class="c999">你愿意让家人使用或与朋友分享，也许这就应该是件不错的东西。</p>
            </div>
            <div class="aside">
                <h3>创建人信息</h3>
                <p class="c999">作为第一个把商品推荐到果库的人，你将被永久记录在商品页。</p>
            </div>
            <div class="aside mobile-download">
                <h3>下载果库客户端</h3>
                <p>
                    <a href="http://itunes.apple.com/cn/app/id477652209?mt=8" target="_blank" bi="download_iphone">iPhone</a> /
                    <a href="http://itunes.apple.com/cn/app/id450507565?mt=8" target="_blank" bi="download_ipad">iPad</a> /
                    <a href="http://app.guoku.com/android/latest/guoku.apk" target="_blank" bi="download_android">Android</a>
                </p>
            </div>
        </div>
    </div>
    

                <div class="clear"></div>
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
                        <li><a href="http://guoku.com/agreement/" target="_blank">用户协议</a></li>
                        <li>© 2013 <a href="http://guoku.com/">果库</a></li>
                    </ul>
                </div>
            </div>

            
                <div id="feedback-button" class="with-border"><a href="javascript:void(0);">意见反馈</a></div> 
                <div id="feedback"> 
                    <img src="./添加商品 - 果库_files/small_69567_b6a015dbd91b22c31717939a0ab6f325.jpg" width="25" height="25">

                    <label>有劲没劲</label> 
                    <form id="feedback-form" action="http://guoku.com/feedback/" method="post"> 
                        <div class="feedback-arrow"></div> 
                        <textarea rows="3" cols="20" name="content"></textarea> 
                        <input type="submit" class="btn-v2 right" value="提交"> 
                        <a href="javascript:void(0);" onclick="$(&#39;#feedback,#popup-layer&#39;).hide();" class="right">取消</a> 
                    </form> 
                    <div class="feedback-result">
                        反馈收到，感谢支持<br>
                        <a href="javascript:void(0);" onclick="$(&#39;#feedback,#popup-layer&#39;).hide();" class="btn-v1">关闭</a> 
                    </div>
                </div>
            

        </div>
    

    

        <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>