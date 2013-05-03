<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    
                        
                            <div class="header-nav-right">
                                <a href="${pageContext.request.contextPath}/register">
                                    注册
                                </a>
                                | 
                                <a href="/login/">
                                    登录
                                </a>
                            </div>
                        
                    
                </div>
            </div>