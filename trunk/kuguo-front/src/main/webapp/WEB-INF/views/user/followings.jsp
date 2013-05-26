<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
    
        <title>${user.name }</title>
    
        
    <link media="all" rel="stylesheet" type="text/css" href="${ctx }/static/styles/user.css" />



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
        <div class="user-info">
            <div class="avatar with-border">
                <img src="${user.head }" width="100" height="100" />
 
            </div>
            <p>
                <a class="name c666" href="#">${user.name }</a>
                
                    <span class="male-icon"></span>
                
            </p>
            
                <label>${user.bio }</label>
            

            <div class="other-info">
                
                    <span class="location">
                        ${user.address }
                    </span>
                
                
            </div>
            <div class="clear"></div>
            </div>
               <div class="link-bar">
            <a class="link-v1" href="${ctx }/u/${user.id }/likes/">
                喜爱()
            </a>
            <span>·</span>
            <a class="link-v1" href="${ctx }/u/${user.id }/posts/">
                添加()
            </a>
            <span>·</span>
            <a class="link-v1" href="${ctx }/u/${user.id }/notes/">
                点评()
            </a>
            <span>·</span>
            <a class="link-v1" href="${ctx }/u/${user.id }/tags/">
                标签()
            </a>

            <label class="right ml15">
                <a href="${ctx }/u/${user.id }/fans/">
                    关注者 <b></b> 人
                </a>
            </label>
            <label class="right">
                <a href="${ctx }/u/${user.id }/followings/">
                    关注了 <b></b> 人
                </a>
            </label>
        </div>
</div>
        
            <div id="main">
  

<div class="main-container with-border">
    <h2>
        关注了 
    </h2>
    <ul class="users">
        
            

<c:forEach items="${friends}" var="friend">
    <li>
        <div class="avatar">
            <a href="/u/${friend.id }/likes/" target=_blank >
                <img src="${friend.head }" width="100" height="100" />

            </a>
        </div>
        <div class="user-info">
            <a class="c333" href="/u/${friend.id }/likes/" target=_blank >
                ${friend.name }
            </a>
            <p class="desc">
                
            </p>
            
        </div>
    </li>
</c:forEach>

        
    </ul> 

</div>

    <a id="back-to-top" href="#"></a>

                <div class="clear"></div>
            </div>
            
           
        </div>
          <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/static/js/main.js"></script>
        
    </body>
</html>
  