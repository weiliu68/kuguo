<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div id="popup-login" class="with-border">
                    <a class="close-btn" href="javascript:void(0);">关闭</a>
                    <div class="top">
                        <form action="/login/" id="popup-login-form" method="post" enable="true">
                            <div class="content">
                                <p>
                                    <b>登录</b> | 没有帐号？ 
                                    <a href="/register/" class="green">请注册</a>
                                </p>
                                <div class="row">
                                    <label>邮箱</label>
                                    <input name="email" type="text" value="" />
                                </div>
                                <div class="row">
                                    <label>密码</label>
                                    <input name="password" type="password" value=""/>
                                </div>
                                <input type="hidden" name="next" value="" />
                                <input type="checkbox" name="remember_me" />
                                <span >记住我 &nbsp;·&nbsp;<a href="/forget_password/">忘记密码？</a></span>
                                <input type="submit" value="登录" class="btn-v2 right" />
                            </div>
                        </form>
                    </div>
                    <div class="bottom">
                            <div class="content">
                                第三方帐号登录
                                <a href="/sina/login/"><img src="http://static.guoku.com/static/images/weibo_20x16.jpg" alt="新浪微博">新浪微博</a>
                                <a href="/taobao/login/"><img src="http://static.guoku.com/static/images/taobao_20x15.jpg"  alt="淘宝网">淘宝网</a>
                            
                            </div>
                    </div>
                </div>