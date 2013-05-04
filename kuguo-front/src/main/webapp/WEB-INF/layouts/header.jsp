<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page import="com.kuguo.front.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
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
                    
                        <shiro:guest>
                            <div class="header-nav-right">
                                <a href="${ctx}/register">
                                    注册
                                </a>
                                | 
                                <a href="${ctx}/login">
                                    登录
                                </a>
                            </div>
                         </shiro:guest>
                        <shiro:user>
                        	你好, <shiro:principal property="name"/> <a href="${ctx}/logout">退出登录</a>
                        </shiro:user>
                    
                </div>
            </div>
            
