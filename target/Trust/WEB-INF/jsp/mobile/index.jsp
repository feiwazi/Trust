<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/1
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<div class="common-box">
    <div class="ckzx">
        <c:forEach items="${illness}" var="i">
            <div class="index-title">
                <img src="${pageContext.request.contextPath }/statics/images/${i.image}" class="img_tp" alt="${i.name}"/>
                <span>${i.name}</span>
            </div>
            <ul>
               <c:forEach items="${i.illnesses}" var="ii">
                    <div class="h4"><a href="${pageContext.request.contextPath }/catalog.html/illness/${ii.id}" title="${ii.name}"><li>${ii.name}</li></a></div>
                </c:forEach>
                <a href="${pageContext.request.contextPath }/class.html/${i.id}"><li class="li_color02" title="点击更多">点击更多</li></a>
            </ul>
        </c:forEach>
    </div>
</div>
<div class="common-box">
    <div class="index-title2">
        <img src="${pageContext.request.contextPath }/statics/images/title-bg.png" class="index-title2-bg" alt="优惠项目"/>
        <span>特色疗法</span>
    </div>
    <div class="news">
        <ul class="news-ul">
            <c:forEach items="${therapy}" var="i">
                <li>
                    <div class="news-info">
                        <img src="${pageContext.request.contextPath }/statics/images/${i.image}" class="news-thumb">
                        <a href="${pageContext.request.contextPath }/article.html/${i.article.id}" title="${i.article.title}" class="news-title">${i.article.title}</a>
                        <span class="news-time">时间： <fmt:formatDate value="${i.article.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>
                    </div>
                </li>
            </c:forEach>
        </ul>
        <a href="${pageContext.request.contextPath }/dynamic.html/therapy" class="news-btn" title="点击查看更多特色疗法">点击查看更多特色疗法</a>
    </div>
</div>
<div class="common-box">
    <div class="index-title2">
        <img src="${pageContext.request.contextPath }/statics/images/title-bg.png" class="index-title2-bg" alt=""/>
        <span>新闻动态</span>
    </div>
    <div class="news">
        <ul class="news-ul">
            <c:forEach items="${news}" var="i">
                <li>
                    <div class="news-info">
                        <img src="${pageContext.request.contextPath }/statics/images/${i.image}" class="news-thumb">
                        <a href="${pageContext.request.contextPath }/article.html/${i.article.id}" title="${i.article.title}" class="news-title">${i.article.title}</a>
                        <span class="news-time">时间： <fmt:formatDate value="${i.article.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>
                    </div>
                </li>
            </c:forEach>
        </ul>
        <a href="${pageContext.request.contextPath }/dynamic.html/news" class="news-btn" title="点击查看更多新闻动态">点击查看更多新闻动态</a>
    </div>
</div>
<div class="common-box">
    <div class="index-title2">
        <img src="${pageContext.request.contextPath }/statics/images/title-bg.png" class="index-title2-bg">
        <span>专家团队</span>
    </div>
    <div class="category-zj-list" id="category-zj-list">
        <div class="swiper-container1">
            <div class="swiper-wrapper">
                <c:forEach items="${team}" var="i">
                    <div class="swiper-slide">
                        <div class="category-zj-hide"><a href="${pageContext.request.contextPath }/article.html/${i.article.id}"><img src="${pageContext.request.contextPath }/statics/images/${i.image}" class="category-zj-thumb"></a></div>
                        <div class="category-zj-hide01">
                            <h1><a  href="${pageContext.request.contextPath }/article.html/${i.article.id}">${i.name}&nbsp;</a></h1>
                            <h3><a  href="${pageContext.request.contextPath }/article.html/${i.article.id}">${i.position}</a></h3>
                            <p><a href="${pageContext.request.contextPath }/article.html/${i.article.id}"><b>擅长：</b>${i.introduce}</a></p>
                        </div>
                        <div class="category-zj-hide2"><a href="${pageContext.request.contextPath }/chat.html">在线咨询专家</a></div>
                    </div>
                </c:forEach>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <script language="javascript">
            var mySwiper = new Swiper('.swiper-container1',{
                pagination : '.swiper-pagination',
                loop:true
            })
        </script>
    </div>
    <div class="news"><a href="${pageContext.request.contextPath }/menu/team.html" class="news-btn">点击查看更多专家</a></div>
</div>
<div class="common-box" style="height: 23.5rem;margin: 0;padding: 0;text-align: center">
    <div class='swiper-container'>
        <div class='swiper-wrapper'>
            <c:forEach items="${down}" var="i">
                <div class='swiper-slide'><a href='${pageContext.request.contextPath }/chat.html'><img src='${pageContext.request.contextPath }/statics/images/${i.image}'></a><h3 style="display: block;color: #eeeeee;border: #2e2e2e solid 1px;background-color: #3c3b3b">${i.text}</h3></div>
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

<%@ include file="common/foot.jsp" %>