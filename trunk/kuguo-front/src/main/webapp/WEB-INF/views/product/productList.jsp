<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>任务管理</title>
</head>

<body>
<div id="main">
                
    <div class="main-left selected-body" id="main-left">
        <h1>
            所有
            <span>最近更新：10 分钟前</span>
        </h1>
        
            



	<c:forEach items="${products }" var="product">
    <div class="entity with-border">
        <div class="entity-attrs">
            <h3>
                    <a href="/detail/${product.id }/" target=_blank>
                        ${product.name }
                    </a>
            </h3>
    
            <div class="image">
                <a href="/detail/3667b03c/" target=_blank>
                    <div class="img-mask"></div>
                    <img src="${product.picture }" alt="《小「食」光》lacuisine" title="《小「食」光》lacuisine"/>
                </a>
            </div>
    
            


    <div class="like need-login">
        <span></span>喜爱&nbsp;<em>20</em>
    </div>


        </div>
    
        <div class="entity-notes">
            
 
 


    <div class="note">
        <div class="avatar">
            <a href="/u/10/likes/" target=_blank>
               <img src="http://image.guoku.com/avatar/small_10_8a50623705c04427f5584db51a42ab10.jpg" width="50" height="50" />

           </a>
        </div>
        <a class="name c333" href="/u/10/likes/" target=_blank>
            Lynn
        </a>
        
            <span class="desc">仁义大哥</span>
        
        <p class="with-tag">${product.description }</p>
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
                3 小时前 
            </div>
            
            
            

            


            <a class="right note-weibo-share" href="javascript:void(0);">分享</a>

            <div class="clear"></div>
        </div>
        <div class="comments">
            <div class="arrow-grey"></div>
            <div class="container">
                
            </div>
            
        </div>
    </div>


            <div class="hidden-area dn">
                
            </div>

            
                <div class="fold-note">
                    
                    
                        
                            <a href="javascript:void(0);" class="need-login">
                               写点评 
                            </a>
                        
                    
                </div>
            
        </div>
    </div>
    </c:forEach>




    
   


       




   
        
        
            <a href="${ctx }/product?page=2" class="paging-btn">下一页</a>
        
        
            <a href="javascript:void(0);" class="paging-btn invalid">上一页</a>
        
        
    </div>
    <div class="main-right" id="main-right">
        
            <div class="sider-login with-border">
    <p>果库，尽收世上好物！</p>
    <p class="sider-login-bottom">
        <a class="btn-v2" href="/register/">注册帐号</a>已有帐号，<a class="green" href="/login/">从这里登录</a>
    </p>
</div>

        
        <div class="siderbar with-border">
            <div class="aside">
                    <a  class="all-cate active " href="/selected/">
                        所有
                    </a>
                <ul>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=1">
                                女装
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=2">
                                男装
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=3">
                                孩童
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=4">
                                配饰
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=5">
                                美容
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=6">
                                科技
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=7">
                                居家
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=8">
                                户外
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=9">
                                文化
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=10">
                                美食
                            </a>
                        </li>
                    
                        <li>·
                            <a class="link-v1" href="/selected/?c=11">
                                玩乐
                            </a>
                        </li>
                    
                </ul>
            </div>

            
    <div class="aside">
        <h3>热门的标签</h3>
        
            <p class="hottag">
                <span>#</span><a class="c666" href="/t/2674049e/" target=_blank>地震了该怎么办</a>
            </p>
        
            <p class="hottag">
                <span>#</span><a class="c666" href="/t/f488a9c8/" target=_blank>我是一名演员</a>
            </p>
        
            <p class="hottag">
                <span>#</span><a class="c666" href="/t/dec8557a/" target=_blank>博士之选</a>
            </p>
        
            <p class="hottag">
                <span>#</span><a class="c666" href="/t/f0008ca2/" target=_blank>唉哟唉哟唉哟</a>
            </p>
        
            <p class="hottag">
                <span>#</span><a class="c666" href="/t/79b74465/" target=_blank>你若不举便是晴天</a>
            </p>
        
    </div>


            




            



    <div class="aside">
        <h3>热门的用户</h3>
        

    <div class="note">
        <div class="avatar">
            <a href="/u/7/likes/" target=_blank >
                <img src="http://image.guoku.com/avatar/small_7_24431b0d7737b0d5637f29b0086e2a7f.jpg" width="50" height="50" />

            </a>
        </div>
        <a class="name c333" href="/u/7/likes/" target=_blank>
            liuting
        </a>
        <span class="desc l24"></span>
        
        <div class="clear"></div>
    </div>

    <div class="note">
        <div class="avatar">
            <a href="/u/74862/likes/" target=_blank >
                <img src="http://image.guoku.com/avatar/small_74862_195cfdd693e52fd87d189ddf72343025.jpg" width="50" height="50" />

            </a>
        </div>
        <a class="name c333" href="/u/74862/likes/" target=_blank>
            得吃多少唐僧
        </a>
        <span class="desc l24">嗨，墙角见。</span>
        
        <div class="clear"></div>
    </div>

    <div class="note">
        <div class="avatar">
            <a href="/u/68310/likes/" target=_blank >
                <img src="http://image.guoku.com/avatar/small_68310_ec00955cc2d89bd587f1256373f44574.jpg" width="50" height="50" />

            </a>
        </div>
        <a class="name c333" href="/u/68310/likes/" target=_blank>
            都给我跪下 !
        </a>
        <span class="desc l24"></span>
        
        <div class="clear"></div>
    </div>

    <div class="note">
        <div class="avatar">
            <a href="/u/95424/likes/" target=_blank >
                <img src="http://image.guoku.com/avatar/small_95424_0a5062581e51aa0092730926a061dfe6.jpg" width="50" height="50" />

            </a>
        </div>
        <a class="name c333" href="/u/95424/likes/" target=_blank>
            2 花
        </a>
        <span class="desc l24"></span>
        
        <div class="clear"></div>
    </div>

    <div class="note">
        <div class="avatar">
            <a href="/u/542/likes/" target=_blank >
                <img src="http://image.guoku.com/avatar/small_542_d8e5550a18cdbb09ffb808c33d017eca.jpg" width="50" height="50" />

            </a>
        </div>
        <a class="name c333" href="/u/542/likes/" target=_blank>
            攒RP既来之则安之
        </a>
        <span class="desc l24">小透明抖~抖~抖~~~</span>
        
        <div class="clear"></div>
    </div>


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
    <a id="back-to-top" href="#"></a>

                <div class="clear"></div>
            </div>
</body>
</html>
