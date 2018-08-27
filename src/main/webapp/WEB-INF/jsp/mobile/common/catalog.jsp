<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/1
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="categorys-wz-list">
    <ul class="wzlb-ul" id="addMore">
<c:forEach items="${catalog.pojos}" var="i" >
    <li>
        <div class="wzlb-title"><img src="${pageContext.request.contextPath}/statics/images/list-title.png"><a href="${pageContext.request.contextPath }/article.html/${i.id}" title="${i.title}">${i.title}</a></div>
        <span class="channel-description">${fn:substring(i.content, 0, 70)}...<a href="${pageContext.request.contextPath }/article.html/${i.id}" title="${i.title}" style="color:#f00">[详情]</a></span>
        <span class="wzlb-time">时间：<fmt:formatDate value="${i.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>
        <span class="wzlb-time wzlb-hits"><script>document.write(parseInt(1000*Math.random()));</script> 次</span>
    </li>
</c:forEach>
</ul>
<div class="clear"></div>
<div class="pagelistbox">
    <c:if test="${catalog.currentPage>1}">
            <a href="${pageContext.request.contextPath }/catalog.html/${catalog.pojos[0].type}/${catalog.pojos[0].refId}/${catalog.currentPage-1}">上一页</a>
    </c:if>
    <c:if test="${0 < catalog.currentPage-3}">
        <a href="${pageContext.request.contextPath }/catalog.html/${catalog.pojos[0].type}/${catalog.pojos[0].refId}/${catalog.currentPage-3}">${catalog.currentPage-3}</a>
    </c:if>
    <c:if test="${0 < catalog.currentPage-2}">
        <a href="${pageContext.request.contextPath }/catalog.html/${catalog.pojos[0].type}/${catalog.pojos[0].refId}/${catalog.currentPage-2}">${catalog.currentPage-2}</a>
    </c:if>
    <c:if test="${0 < catalog.currentPage-1}">
        <a href="${pageContext.request.contextPath }/catalog.html/${catalog.pojos[0].type}/${catalog.pojos[0].refId}/${catalog.currentPage-1}">${catalog.currentPage-1}</a>
    </c:if>
    <span>${catalog.currentPage}</span>
    <c:if test="${catalog.pageCount>catalog.currentPage}">
        <a href="${pageContext.request.contextPath }/catalog.html/${catalog.pojos[0].type}/${catalog.pojos[0].refId}/${catalog.currentPage+1}">${catalog.currentPage+1}</a>
    </c:if>
    <c:if test="${catalog.pageCount > catalog.currentPage+1}">
        <a href="${pageContext.request.contextPath }/catalog.html/${catalog.pojos[0].type}/${catalog.pojos[0].refId}/${catalog.currentPage+2}">${catalog.currentPage+2}</a>
    </c:if>
    <c:if test="${catalog.pageCount > catalog.currentPage+2}">
        <a href="${pageContext.request.contextPath }/catalog.html/${catalog.pojos[0].type}/${catalog.pojos[0].refId}/${catalog.currentPage+3}">${catalog.currentPage+3}</a>
    </c:if>
    <c:if test="${catalog.pageCount>catalog.currentPage}">
        <a href="${pageContext.request.contextPath }/catalog.html/${catalog.pojos[0].type}/${catalog.pojos[0].refId}/${catalog.currentPage+1}" >下一页</a>
    </c:if>
</div>
</div>