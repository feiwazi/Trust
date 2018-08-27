<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/1
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <link rel="shortcut icon" href=" ${pageContext.request.contextPath }/statics/images/favicon.ico" />
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>守信中医结核病专科医院</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/swiper-3.4.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/swiper-3.4.1.min.css">
    <!-- Bootstrap -->
</head>
<div class="top_top" style="position:relative;">
    <a href="${pageContext.request.contextPath }/"><img src="${pageContext.request.contextPath }/statics/images/logo-bann.png" class="logo"></a>
</div>
<div class="common-box" style="height: 23.5rem;margin: 0;padding: 0;text-align: center">
    <div class='swiper-container'>
        <div class='swiper-wrapper'>
            <c:forEach items="${top}" var="i">
                <div class='swiper-slide'><a href='${pageContext.request.contextPath }/chat.html'><img src='${pageContext.request.contextPath }/statics/images/${i.image}'></a></div>
            </c:forEach>
        </div>
        <div class='swiper-pagination'></div>
    </div>
</div>
<script language='javascript'>
    var mySwiper = new Swiper('.swiper-container',{
        autoplay:5000,
        pagination : '.swiper-pagination',
        loop:true
    })
</script>
<div class="common-box">
<div class="nav">
    <img src="${pageContext.request.contextPath }/statics/images/nav-bg.png" class="nav-bg">
    <ul class="nav_ul">
        <li><a href="${pageContext.request.contextPath }/menu/introduce.html"><span>守信<br>简介</span></a></li>
        <li><a href="${pageContext.request.contextPath }/menu/team.html"><span>医生<br>团队</span></a></li>
        <li><a href="${pageContext.request.contextPath }/menu/treatment.html"><span>诊疗<br>项目</span></a></li>
        <li><a href="${pageContext.request.contextPath }/menu/recovery.html"><span>康复<br>案例</span></a></li>
    </ul>
</div>
</div>
