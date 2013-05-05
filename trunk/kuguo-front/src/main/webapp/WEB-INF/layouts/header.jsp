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
                        <a class="active" href="${ctx}/selected/">
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
                        <shiro:user>
                        <a href="${ctx}/likes/">
                                我的果库
                            </a>
                        </shiro:user>
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
                        	<div class="tools-holder">
                            <div id="user-tools" class="" style="height: 21px;">
                                <a href="/u/<shiro:principal property="id"/>/likes/">
                                    <span>
                                        <shiro:principal property="name"/>
                                    </span>
                                </a>
                                <ul class="drop" style="display: none; width: 87px;">
                                    
                                    <li><a href="${ctx }/setting/" target="_blank">设置</a></li>
                                    <li><a href="${ctx }/logout/">退出</a></li>
                                </ul>
                            </div>
                        </div>
                    	<div class="header-nav-right">
                            <a href="${ctx}/message/">
                                消息
                            </a>
                        </div>
                        </shiro:user>
                </div>
            </div>
            
