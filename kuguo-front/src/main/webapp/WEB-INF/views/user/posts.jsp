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
            <a class="link-v1 active" href="${ctx }/u/${user.id }/likes/">
                喜爱(1)
            </a>
            <span>·</span>
            <a class="link-v1" href="${ctx }/u/${user.id }/posts/">
                添加(2)
            </a>
            <span>·</span>
            <a class="link-v1" href="${ctx }/u/${user.id }/notes/">
                点评(3)
            </a>
            <span>·</span>
            <a class="link-v1" href="${ctx }/u/${user.id }/tags/">
                标签(1)
            </a>

            <label class="right ml15">
                <a href="${ctx }/u/${user.id }/fans/">
                    关注者 <b>2</b> 人
                </a>
            </label>
            <label class="right">
                <a href="${ctx }/u/${user.id }/followings/">
                    关注了 <b>1</b> 人
                </a>
            </label>
        </div>
    </div>
    </div>

        
            <div id="main">
                
    
        
            





    
        <div class="main-container with-border">
            <h2>
                
                    2013 年 4 月
                
            </h2>
            <ul class="items">
                
                    



    <li>
        <div class="image">
            <a href="${ctx }/detail/id/" target=_blank>
                <div class="img-mask"></div>
                <img src="http://img02.taobaocdn.com/bao/uploaded/i2/12188022137478940/T1EBGhXw8iXXXXXXXX_!!0-item_pic.jpg_200x200.jpg" alt="Nike 耐克官方 AIR MAX RUN LITE 4 女子跑步鞋 554894" title="Nike 耐克官方 AIR MAX RUN LITE 4 女子跑步鞋 554894"/>
            </a>
        </div>
        


    <div class="like need-login">
        <span></span>喜爱&nbsp;<em>1</em>
    </div>


    </li>


                
                    



    <li>
        <div class="image">
            <a href="/detail/7380dba8/" target=_blank>
                <div class="img-mask"></div>
                <img src="http://img02.taobaocdn.com/bao/uploaded/i2/17489021158189206/T1tPB1XupbXXXXXXXX_!!0-item_pic.jpg_200x200.jpg" alt="雪纺圆点拼色波点休闲七分连体裤" title="雪纺圆点拼色波点休闲七分连体裤"/>
            </a>
        </div>
        


    <div class="like need-login">
        <span></span>喜爱&nbsp;<em>0</em>
    </div>


    </li>


                
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
