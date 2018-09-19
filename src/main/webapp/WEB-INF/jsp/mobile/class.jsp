<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/4
  Time: 14:39
  To change this template use File | Settings | File Templates.点类别进来
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<div class="common-box">

    <div class="index-title3"><span>${clas.name}</span></div>
    <div class="zwen">
    </div>
    <div class="Obstetric_all">
        <ul>
        <ul>
            <c:forEach items="${clas.illnesses}" var="i">
                <li><a href="${pageContext.request.contextPath }/catalog.html/illness/${i.id}" title="${i.name}">${i.name}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>
<div class="common-box">
    <div class="categorys-nav-box">
        <img src="${pageContext.request.contextPath }/statics/images/category-bg.png" class="img-bg">
        <div class="categorys-nav-line"></div>
        <div class="categorys-nav">
            <div>
                <ul class="categorys-nav-ul">
                   <c:forEach items="${page.illnesses}" var="i">
                        <li>${i.name}</li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <style>.invisible{display:none;}</style>

    <div class="categorys-wz-list">

            <c:forEach items="${page.illnesses}" var="i">
                <ul class="channel-ul">
                <c:forEach items="${i.articles}" var="ii">
                    <li>
                        <div class="channel-title">
                            <img src="${pageContext.request.contextPath }/statics/images/list-title.png">
                            <a href="${pageContext.request.contextPath }/article.html/${ii.id}" title="${ii.title}">${ii.title}</a>
                        </div>
                        <span class="channel-description">${fn:substring(ii.content, 0, 70)}...<a href="${pageContext.request.contextPath }/article.html/${ii.id}" title="${ii.title}" style="color:#f00">[详情]</a></span>
                        <span class="channel-time">时间：<fmt:formatDate value="${ii.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>
                        <span class="wzlb-time wzlb-hits"><script>document.write(parseInt(1000*Math.random()));</script> 次</span>
                    </li>
                </c:forEach>

                    <a href="${pageContext.request.contextPath }/catalog.html/illness/${i.id}" target="_blank" class="more-button">点击查看更多</a>
                </ul>
            </c:forEach>
        </ul>
    </div>

</div>
<script>
    $(function(){
        $(".categorys-nav-ul li").each(function(index){
            $(this).on('click',function(){
                $(".categorys-nav-ul li").removeClass("on");
                $(this).addClass("on");
                $(".categorys-wz-list ul").removeClass('on');
                $(".categorys-wz-list ul").eq(index).addClass('on');
            });
        });
    });
    $(function () {
        $(".categorys-nav-ul li:first").addClass("on");
        $(".categorys-wz-list ul:first").addClass('on');
    })
</script>

</div>
<div class="common-box">
    <div class="index-title2">
        <img src="${pageContext.request.contextPath }/statics/images/title-bg.png" class="index-title2-bg">
        <span>专家团队</span>
    </div>
    <div class="category-zj-list" id="category-zj-list">
       <%-- <div class="swiper-container1">
            <div class="swiper-wrapper">
                <c:forEach items="${team}" var="i">
                <div class="swiper-slide">
                    <div class="category-zj-hide"><a href="${pageContext.request.contextPath }"><img src="${pageContext.request.contextPath }/statics/images/${i.image}" class="category-zj-thumb"></a></div>
                    <div class="category-zj-hide01">
                        <h1>${i.name}&nbsp;</h1>
                        <h3>${i.position}</h3>
                        <p><b>擅长：</b>${i.introduce}</p>
                    </div>
                    <div class="category-zj-hide2"><a href="${pageContext.request.contextPath }/chat.html">在线咨询专家</a></div>
                </div>
            </div>
            </c:forEach>
            <div class="swiper-pagination"></div>
        </div>
        <script language="javascript">
            var mySwiper = new Swiper('.swiper-container1',{
                pagination : '.swiper-pagination',
                loop:true
            })
        </script>--%>
           <div class="swiper-container1 swiper-container-horizontal">
                <c:forEach items="${team}" var="i">
                   <div class="swiper-slide swiper-slide-duplicate-active" data-swiper-slide-index="0" style="width: 640px;">
                       <div class="category-zj-hide"><a href="${pageContext.request.contextPath }"><img src="${pageContext.request.contextPath }/statics/images/${i.image}" class="category-zj-thumb"></a></div>
                       <div class="category-zj-hide01">
                           <h1>徐桂凤&nbsp;</h1>
                           <h3>烟台丽华妇科医院院长</h3>
                           <p><b>擅长</b>擅长：各类妇科疑难杂症、产科疾病的诊断和治疗及中西医结合加宫</p>
                       </div>
                       <div class="category-zj-hide2"><a href="/swt/">在线咨询专家</a></div>
                   </div>
                </c:forEach>
               </div>
               <div class="swiper-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span></div>
           </div>
           <script language="javascript">
               var mySwiper = new Swiper('.swiper-container1',{
                   pagination : '.swiper-pagination',
                   loop:true
               })
           </script>

    </div>
    <div class="news"><a href="team.html" class="news-btn">点击查看更多专家</a></div>
</div>
<%@ include file="common/foot.jsp" %>
