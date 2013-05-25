<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>首页</title>
<link media="all" rel="stylesheet" type="text/css" href="${ctx}/static/styles/selection.css" />
</head>

<body>
<div id="main">
                
    <div class="main-left selected-body" id="main-left">
        <h1>
            所有
            <span>最近更新： 分钟前</span>
        </h1>


	<c:forEach items="${products}" var="product">
    <div class="entity with-border">
        <div class="entity-attrs">
            <h3>
                    <a href="${ctx }/detail/${product.id }/" target=_blank>
                        ${product.name }
                    </a>
            </h3>
    
            <div class="image">
                <a href="${ctx }/detail/${product.id }/" target=_blank>
                    <div class="img-mask"></div>
                    <img src="${product.picture }" alt="${product.name }" title="${product.name }"/>
                </a>
            </div>
    
            


    <div class="like need-login">
        <span></span>喜爱&nbsp;<em>${product.favorite_num}</em>
    </div>


        </div>
    
        <div class="entity-notes">
            
    <div class="note">
        <div class="avatar">
            <a href="${ctx }/u/${product.user.id }/likes/" target=_blank>
               <img src="${product.user.head}" width="50" height="50" />

           </a>
        </div>
        <a class="name c333" href="${ctx }/u/${product.user.id }/likes/" target=_blank>
           ${product.user.name}
        </a>
            <span class="desc">${product.user.bio}</span>
        <p class="with-tag">${product.comment.content}</p>
        <div class="link-row">
            
                <div class="approve-btn left need-login">
                    <span></span><em></em>
                </div>
            

            <span class="splite-icon left"></span>
            
                <div class="disapprove-btn left need-login" thelink="${ctx }/entity/note/poke/147604/">
                    <span></span><em></em>
                </div>
            
            
            <span class="splite-icon left"></span>
            
                <div class="comment-btn left  need-login" thelink="${ctx }/entity/note/poke/147604/">
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
                    <form action="${ctx}/entity/note/comment/create/" class="new-comment-form" method="POST" onsubmit="return false;">
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


            <div class="hidden-area dn">
                
            </div>

                <div class="fold-note">
                    
                    
                        <shiro:guest>
                            <a href="javascript:void(0);" class="need-login">
                               写点评 
                            </a>
                        </shiro:guest>
                        <shiro:user>
                            <a href="/detail/524ea73e/#new" target="_blank">
                               写点评 
                            </a>                       
                       </shiro:user>
                    
                </div>
            
        </div>
    </div>
    </c:forEach>

			
            <a href="${ctx}/selected/?page=1" class="paging-btn">下一页</a>
        
        
            <a href="${ctx}/selected/?page=0" class="paging-btn">上一页</a>
        
        
    </div>
    <div class="main-right" id="main-right">
        <shiro:guest>
            <div class="sider-login with-border">
			    <p>尽收世上好物！</p>
			    <p class="sider-login-bottom">
			        <a class="btn-v2" href="${ctx}/register">注册帐号</a>已有帐号，<a class="green" href="${ctx}/login">从这里登录</a>
			    </p>
			</div>
		</shiro:guest>
        
        
        <div class="siderbar with-border">
            <div class="aside">
                    <a  class="all-cate active " href="${ctx}/selected/">
                        所有
                    </a>
                <ul>
                    <c:forEach items="${channels}" var="channel">
                    
                        <li>·
                            <a class="link-v1" href="${ctx }/selected/?c=${channel.id}">
                                ${channel.name}
                            </a>
                        </li>
                    
                </c:forEach>
                </ul>
            </div>

            
    <div class="aside">
        <h3>热门的标签</h3>
        
        <c:forEach items="${labels}" var="label">
            <p class="hottag">
                <span>#</span><a class="c666" href="${ctx }/t/${label.id }/" target=_blank>${label.name}</a>
            </p>
        </c:forEach>
    </div>


    <div class="aside">
        <h3>热门的用户</h3>
        
<c:forEach items="${users}" var="user">
    <div class="note">
        <div class="avatar">
            <a href="${ctx }/u/${user.id}/likes/" target=_blank >
                <img src="${user.head}" width="50" height="50" />

            </a>
        </div>
        <a class="name c333" href="${ctx }/u/${user.id}/likes/" target=_blank>
            ${user.name}
        </a>
        <span class="desc l24">
        	${user.bio}
        </span>
        
        <shiro:user>
       	<a href="javascript:void(0);" thelink="${ctx}/user/follow/${user.id }/0/" class="btn-v1 followBtn s0 w4">
        	<span></span>
        	<em>关注</em>
    	</a>    	
        </shiro:user>
        
        <div class="clear"></div>
    </div>
   </c:forEach>
    </div>


    <div class="aside mobile-download">
    <h3>下载客户端</h3>
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
            
        <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>
</body>
</html>
