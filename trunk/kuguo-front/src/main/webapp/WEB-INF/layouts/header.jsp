<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page import="com.kuguo.front.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%if(true) { %>
<div id="header">
                <div class="header-holder">
                    <div class="logo">
                        <a href="/selected/"><img src="http://static.guoku.com/static/images/guoku_icon_32.png" alt="Logo" height="32"></a>
                    </div>
                    <div class="header-nav">
                        <a class="active" href="${ctx}/product?page=0">
                            精选
                        </a>
                        <a href="${ctx}/activity/">
                            动态 
                        </a>
                        <a href="${ctx}/popular/">
                            热门
                        </a>
                        <a href="${ctx}/discover/">
                            发现 
                        </a>
                        
                    </div>
                    
                        
                            <div class="header-nav-right">
                                <a href="${ctx}/register">
                                    注册
                                </a>
                                | 
                                <a href="${ctx}/login">
                                    登录
                                </a>
                            </div>
                        
                    
                </div>
            </div>
            
   <% } else { %>         
            <div id="header">
                <div class="header-holder">
                    <div class="logo">
                        <a href="/selected/"><img src="http://static.guoku.com/static/images/guoku_icon_32.png" alt="Logo" height="32"></a>
                    </div>
                    <div class="header-nav">
                        <a class="active" href="${ctx}/product?page=0">
                            精选
                        </a>
                        <a href="/activity/">
                            动态 
                        </a>
                        <a href="/popular/">
                            热门
                        </a>
                        <a href="/discover/">
                            发现 
                        </a>
                        
                            <a href="/u/163105/likes/">
                                我的果库
                            </a>
                        
                    </div>
                    
                        <div class="tools-holder">
                            <div id="user-tools">
                            <c:forEach items="user" var="user">
                                <a href="/u/163105/likes/">
                                    <span>
                                       
                                    </span>
                                </a>
                                <ul class="drop">
                                    
                                    <li><a href="/setting/" target=_blank>设置</a></li>
                                    <li><a href="/logout/">退出</a></li>
                                </ul>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="header-nav-right">
                            <a href="/message/" >
                                消息  
                            </a>
                        </div>
                    
                </div>
            </div>
        <%} %>
            