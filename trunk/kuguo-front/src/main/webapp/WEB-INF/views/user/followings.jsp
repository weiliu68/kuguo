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
            

        
            <div id="main">
  

<div class="main-container with-border">
    <h2>
        关注了 
    </h2>
    <ul class="users">
        
            


    <li>
        <div class="avatar">
            <a href="/u/69567/likes/" target=_blank >
                <img src="http://image.guoku.com/avatar/large_69567_8d159ceb664499ee4d63503dcd808cee.jpg" width="100" height="100" />

            </a>
        </div>
        <div class="user-info">
            <a class="c333" href="/u/69567/likes/" target=_blank >
                有劲没劲
            </a>
            <p class="desc">
                
            </p>
            
        </div>
    </li>


        
    </ul> 

</div>

    <a id="back-to-top" href="#"></a>

                <div class="clear"></div>
            </div>
            
           
        </div>
        
    </body>
</html>
  