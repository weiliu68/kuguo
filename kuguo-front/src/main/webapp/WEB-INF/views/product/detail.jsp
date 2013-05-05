<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
    <head>
    
    <title>${product.name} - 果库</title>
    
        
    <link media="all" rel="stylesheet" type="text/css" href="${ctx}/static/styles/detail.css" />


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
 
            <div id="main">
                
<div class="detail-body">
    <div class="main-left" id="main-left">
        <h1>
            ${product.name}
            <!-- <a href="#"><span>报告问题</span></a> -->
        </h1>
        <div class="with-border upper">
            <div class="entity">
                <div class="image">
                    <a href="${product.order_link}" target="_blank" bi="image_taobao">
                        <div class="img-mask"></div>
                        <img src="${product.picture }" />
                    </a>
                </div>

                
                    <div class="row">
                        


    <div class="like need-login">
        <span></span>喜爱&nbsp;<em>93</em>
    </div>


                    </div>
                
            </div>
            



<div class="notes">
    <div id="display-area">
        
            
 
 


    <div class="note">
        <div class="avatar">
            <a href="/u/132404/likes/" target=_blank>
               <img src="${user.head}" width="50" height="50" />

           </a>
        </div>
        <a class="name c333" href="/u/132404/likes/" target=_blank>
            ${user.name }
        </a>
        
            <span class="desc">${user.bio }</span>
        
        <p class="with-tag">${product.comment.content }</p>
        <div class="link-row">
            
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
            
 
            
            <div class="note-time right">
                ${product.comment.create_time} 
            </div>
            
            <a class="right note-weibo-share" href="javascript:void(0);">分享</a>

            <div class="clear"></div>
        </div>
        <div class="comments">
            <div class="arrow-grey"></div>
            <div class="container">
                
            </div>
            <shiro:user>
                <div class="new-comment">
                    <form action="/entity/note/comment/create/" class="new-comment-form" method="post" onsubmit="return false;">
                        <input name="entity_note_id" type="hidden" value="147684" /> 
                        <input name="comment" type="text" class="content" value="写下你的评论…" defaultValue="写下你的评论…" autocomplete="off" />
                        <input type="submit" class="btn-v1 disable right" value="评论" />
                        <a href="javascript:void(0);" class="right new-comment-cancel">取消</a>
                    </form>
                    <div class="clear"></div>
                </div>
                </shiro:user>
            
        </div>
    </div>


        
    </div>

    
</div>

        </div>

<!-- 这里要判断用户是否登录 -->

        <div id="new">
<shiro:guest>
        
            <div class="note new-note with-border">
                <div class="note-register">
                    收藏、点评、分享心爱好物
                    <a href="/register/" class="btn-v2 w4">现在注册</a>
                    <span class="right">
                        已有帐号，
                        <a href="/login/" class="green">从这里登录</a>
                    </span> 
                </div>  
            </div>
        
   </shiro:guest>  
   <shiro:user>
   <div class="note new-note with-border">
    <div class="avatar">
        <a href="/u/163105/">
            <img src="http://image.guoku.com/avatar/default_small_4.png" width="50" height="50" />

        </a>
    </div>
    <a class="name c333" href="/u/163105/"><shiro:principal property="name"/></a>
    
        <span class="desc"><shiro:principal property="bio"/></span>
    
    
    <form action="/entity/note/create/" method="post" id="new-note-form">
        <textarea name="note" class="tag-ac" defaultValue="写点评  #贴标签">写点评  #贴标签</textarea>
        <div class="note-prompt">
            <div class="arrow-fcfcfc"></div>
            说说你的评价？欢迎真实、有用、有趣的商品点评。
        </div> 
        <input type="hidden" name="entity_id" value="82268" />
        <input class="btn-v2 right" type="submit" value="点评" />
    </form>
    
    <div class="clear"></div>
</div>
</shiro:user>
        </div>



    </div>
    <div class="main-right" id="main-right">
        
		<shiro:guest>
            <div class="sider-login with-border">
			    <p>果库，尽收世上好物！</p>
			    <p class="sider-login-bottom">
			        <a class="btn-v2" href="${ctx}/register">注册帐号</a>已有帐号，<a class="green" href="${ctx}/login">从这里登录</a>
			    </p>
			</div>
		</shiro:guest>

        

        <div class="siderbar with-border">
            <div class="aside">
                
                    <a class="btn-v2 price" href="${product.order_link}" target=_blank bi="btn_taobao">
                        详情 <span>￥${product.price}</span>
                    </a>
                
                <h3>93 人喜爱</h3>
                <div class="small-avatar-container">
                    
                        <a href="/u/120032/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_120032_e0ed76d7c5a01899884c717adb67019d.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/126697/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/default_small_10.png" width="25" height="25" />

                        </a>
                    
                        <a href="/u/43139/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_43139_8383ba8b71230ce2547650eb638f669a.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/84272/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_84272_deb8db43bfcfc88e37e6d97a88127439.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/11746/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_11746_573b1aa3ce2b0340db62d37136bc4318.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/127850/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_127850_ae199d5d7e009d6210b384b446ef8116.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/102434/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_102434_917e2d3c91383dd11e3c8c74177c667e.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/60202/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_60202_3c492347ba885581ebf51e2076106fb1.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/107488/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_107488_fda40223dca827fbd44076504e9d7980.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/142125/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_142125_a0c149806225ee9547ac217234610846.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/98025/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/default_small_5.png" width="25" height="25" />

                        </a>
                    
                        <a href="/u/63857/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_63857_9baa596e7bf0a1e63ef5e062b1d95836.JPG" width="25" height="25" />

                        </a>
                    
                        <a href="/u/121074/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_121074_595de22fc4b52fd90d04a2f7cffe411c.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/131615/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/default_small_6.png" width="25" height="25" />

                        </a>
                    
                        <a href="/u/92591/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_92591_776d90f8622e9fcc7d73836daf548820.JPG" width="25" height="25" />

                        </a>
                    
                        <a href="/u/24898/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/default_small_12.png" width="25" height="25" />

                        </a>
                    
                        <a href="/u/94241/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_94241_f27b6304cf3abfb76a46cdbf75941039.jpe" width="25" height="25" />

                        </a>
                    
                        <a href="/u/93858/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_93858_5faa8e09f166cbc6e013d0bd95ae277d.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/120201/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_120201_4e2d8971b7c3433230d1234abcfda51d.jpg" width="25" height="25" />

                        </a>
                    
                        <a href="/u/22328/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/default_small_1.png" width="25" height="25" />

                        </a>
                    
                        <a href="/u/40310/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_40310_5a96a6352f66cc6092dc34954526bec7.jpe" width="25" height="25" />

                        </a>
                    
                        <a href="/u/164100/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/default_small_6.png" width="25" height="25" />

                        </a>
                    
                        <a href="/u/125569/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/default_small_8.png" width="25" height="25" />

                        </a>
                    
                        <a href="/u/91488/liked/" target="_blank">
                            <img src="http://image.guoku.com/avatar/small_91488_6d63a05e23b525514e96ec3e76267414.jpg" width="25" height="25" />

                        </a>
                    
                </div>
            </div>
            
            <div class="aside">
                <p class="into-time">
                    <a href="/u/132404/liked/" target=_blank>
                        <img src="http://image.guoku.com/avatar/small_132404_e5d09a251bdc7afc24ed9e8964c51c49.jpg" width="25" height="25" />

                    </a>
                    <a href="/u/132404/liked/" target=_blank>${user.name }</a>  添加于 20 小时前
                </p>
            </div>
            <div class="aside">
                <p class="into-time sider-weibo-share"><a>分享到微博</a></p>
            </div>
            
            <div class="aside mobile-download">
    <h3>下载果库客户端</h3>
    <p>
        <a href="http://itunes.apple.com/cn/app/id477652209?mt=8" target="_blank" bi="download_iphone">iPhone</a> /
        <a href="http://itunes.apple.com/cn/app/id450507565?mt=8" target="_blank" bi="download_ipad">iPad</a> /
        <a href="http://app.guoku.com/android/latest/guoku.apk" target="_blank" bi="download_andriod">Android</a>
    </p>
</div>

        </div>
    </div>
</div>




                <div class="clear"></div>
            </div>
        </div>
                <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>
    </body>
</html>
    
