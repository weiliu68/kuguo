<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
    
        <title>${user.name } 的果库</title>
  
        
        
    <link media="all" rel="stylesheet" type="text/css" href="${ctx }/static/styles/user.css" />


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
            <a class="link-v1 active" href="/u/${user.id }/likes/">
                喜爱(1)
            </a>
            <span>·</span>
            <a class="link-v1" href="/u/${user.id }/posts/">
                添加(2)
            </a>
            <span>·</span>
            <a class="link-v1" href="/u/${user.id }/notes/">
                点评(3)
            </a>
            <span>·</span>
            <a class="link-v1" href="/u/${user.id }/tags/">
                标签(1)
            </a>

            <label class="right ml15">
                <a href="/u/${user.id }/fans/">
                    关注者 <b>2</b> 人
                </a>
            </label>
            <label class="right">
                <a href="/u/${user.id }/followings/">
                    关注了 <b>1</b> 人
                </a>
            </label>
        </div>
    </div>

        
            <div id="main">
 
        <div class="main-container with-border">
            <div class="no-data"><p><span class="tag-icon-v2"></span>暂时没有标签</p></div>
        </div>
  
    
    <a id="back-to-top" href="#"></a>

                <div class="clear"></div>
            </div>


        </div>
    </body>
</html>

