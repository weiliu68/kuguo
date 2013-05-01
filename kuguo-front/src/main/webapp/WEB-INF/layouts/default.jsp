<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="overflow-x: hidden; overflow-y: scroll;" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><sitemesh:title/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">
<link href="${ctx}/static/bootstrap/2.2.2/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/jquery-validation/1.10.0/validate.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/styles/default.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/static/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.10.0/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.10.0/messages_bs_zh.js" type="text/javascript"></script>


        
    


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <meta content="库果,kuguo" property="og:site_name">
        <meta content="http://www.similarercom" property="og:url">
        <meta content="库果,kuguo" property="og:title">


        
            <meta name="description" content="这里是库果网">
            <meta name="keywords" content="库果网">
        
    
        
    <link media="all" rel="stylesheet" type="text/css" href="${ctx}/static/styles/selection.css" />


        <link rel="icon" type="image/ico" href="http://static.guoku.com/static/images/favicon.ico">

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
            <div id="popup-layer"></div>
            <%@ include file="/WEB-INF/layouts/header.jsp"%>
            <div class="clear"></div>
            <sitemesh:body/>
            <%@ include file="/WEB-INF/layouts/footer.jsp"%>
            <%@ include file="/WEB-INF/layouts/right.jsp"%>
        </div>
    </body>
</html>