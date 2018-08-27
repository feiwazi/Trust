<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/1
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<div class="cont_small_nav" style="margin-top:0.5em; background:#fff;">
    <img src="${pageContext.request.contextPath }/statics/images/cont_nav1.png" class="img-bg"/>
    <img src="${pageContext.request.contextPath }/statics/images/small_nav1.jpg" class="small_img1"/>
    <ul class="small_ul">
        <li><a href='/'>主页</a> >  <a href="${pageContext.request.contextPath }/menu/team.html">专家团队</a></li>
    </ul>
</div>

<!-- 专家列表 -->
<div id="common-box">
    <div class="expert-wz-list">
        <ul class="ex-ul on">
            <c:forEach items="${teamPage.pojos}" var="i" >
                <li>
                    <a href="${pageContext.request.contextPath }/article.html/${i.article.id}" title="${i.name}"><img src="${pageContext.request.contextPath }/statics/images/${i.image}" class="zjlb-thumb"></a>
                    <div class="zjlb-info">
                        <a href="${pageContext.request.contextPath }/article.html/${i.article.id}" title="${i.name}" class="zjlb-name">${i.name}</a>
                        <a href="${pageContext.request.contextPath }/article.html/${i.article.id}" class="zjlb-zc">${i.position}</a>
                        <p>擅长：${i.introduce}</p>
                    </div>
                    <a href="${pageContext.request.contextPath }/chat.html" class="zjlb-btn"><span>在线<br>咨询</span></a>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
<div class="clear"></div>
<div class="pagelistbox">
<c:if test="${teamPage.currentPage>1}">
    <a href="/lihuapinpai/zhuanjiatuandui/index.html" class="a1">上一页</a>
</c:if>
    <span>${teamPage.currentPage}</span>
    <c:if test="${teamPage.pageCount>teamPage.currentPage}">
    <a href="${pageContext.request.contextPath }/menu/team.html/${teamPage.currentPage+1}">${teamPage.currentPage+1}</a>
</c:if>
    <c:if test="${teamPage.pageCount > teamPage.currentPage+1}">
        <a href="${pageContext.request.contextPath }/menu/team.html/${teamPage.currentPage+2}">${teamPage.currentPage+2}</a>
    </c:if>
    <c:if test="${teamPage.pageCount > teamPage.currentPage+2}">
        <a href="${pageContext.request.contextPath }/menu/team.html/${teamPage.currentPage+3}">${teamPage.currentPage+3}</a>
    </c:if>
    <c:if test="${teamPage.pageCount>teamPage.currentPage}">
        <a href="${pageContext.request.contextPath }/menu/team.html/${teamPage.currentPage+1}" class="a1">下一页</a>
    </c:if>
</div>
<%@ include file="common/foot.jsp" %>
