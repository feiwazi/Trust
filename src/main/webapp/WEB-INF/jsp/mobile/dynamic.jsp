<%@ page import="trust.pojo.Dynamic" %>
<%@ page import="trust.pojo.entity.DynamicEntity" %><%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/5
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<div class="categorys-wz-list">
    <ul class="wzlb-ul" id="addMore">
        <c:forEach items="${dynamic.pojos}" var="i" >
            <li>
                <div class="wzlb-title"><img src="${pageContext.request.contextPath}/statics/images/list-title.png"><a href="${pageContext.request.contextPath }/article.html/${i.article.id}" title="${i.article.title}">${i.article.title}</a></div>
                    <% DynamicEntity de= (DynamicEntity) pageContext.getAttribute("i");
                        String c=de.getArticle().getContent().replace("&nbsp;","");
                        request.setAttribute("content",c);
                    %>
                <span class="channel-description">${fn:substring(content, 0, 70)}...<a href="${pageContext.request.contextPath }/article.html/${i.article.id}" title="${i.article.title}" style="color:#f00">[详情]</a></span>
                <span class="wzlb-time">时间：<fmt:formatDate value="${i.article.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>
                <span class="wzlb-time wzlb-hits"><script>document.write(parseInt(1000*Math.random()));</script> 次</span>
            </li>
        </c:forEach>
    </ul>
    <div class="clear"></div>
    <div class="pagelistbox">
        <c:if test="${dynamic.currentPage>1}">
            <a href="${pageContext.request.contextPath }/dynamic.html/${dynamic.pojos[0].article.type}/${dynamic.currentPage-1}">上一页</a>
        </c:if>
        <c:if test="${0 < dynamic.currentPage-3}">
            <a href="${pageContext.request.contextPath }/dynamic.html/${dynamic.pojos[0].article.type}/${dynamic.currentPage-3}">${dynamic.currentPage-3}</a>
        </c:if>
        <c:if test="${0 < dynamic.currentPage-2}">
            <a href="${pageContext.request.contextPath }/dynamic.html/${dynamic.pojos[0].article.type}/${dynamic.currentPage-2}">${dynamic.currentPage-2}</a>
        </c:if>
        <c:if test="${0 < dynamic.currentPage-1}">
            <a href="${pageContext.request.contextPath }/dynamic.html/${dynamic.pojos[0].article.type}/${dynamic.currentPage-1}">${dynamic.currentPage-1}</a>
        </c:if>
        <span>${dynamic.currentPage}</span>
        <c:if test="${dynamic.pageCount>dynamic.currentPage}">
            <a href="${pageContext.request.contextPath }/dynamic.html/${dynamic.pojos[0].article.type}/${dynamic.pojos[0].article.refId}/${dynamic.currentPage+1}">${dynamic.currentPage+1}</a>
        </c:if>
        <c:if test="${dynamic.pageCount > dynamic.currentPage+1}">
            <a href="${pageContext.request.contextPath }/dynamic.html/${dynamic.pojos[0].article.type}/${dynamic.currentPage+2}">${dynamic.currentPage+2}</a>
        </c:if>
        <c:if test="${dynamic.pageCount > dynamic.currentPage+2}">
            <a href="${pageContext.request.contextPath }/dynamic.html/${dynamic.pojos[0].article.type}/${dynamic.currentPage+3}">${dynamic.currentPage+3}</a>
        </c:if>
        <c:if test="${dynamic.pageCount>dynamic.currentPage}">
            <a href="${pageContext.request.contextPath }/dynamic.html/${dynamic.pojos[0].article.type}/${dynamic.currentPage+1}" >下一页</a>
        </c:if>
    </div>
</div>
<%@ include file="common/foot.jsp" %>
