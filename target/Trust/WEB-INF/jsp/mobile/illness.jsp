<%@ page import="java.util.List" %>
<%@ page import="java.util.Random" %>
<%@ page import="trust.pojo.entity.Page" %><%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/4
  Time: 14:16
  To change this template use File | Settings | File Templates.病点进来
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<div class="cont_small_nav" style="margin-top:0.5em; background:#fff;">
    <img src="${pageContext.request.contextPath}/statics/images/cont_nav1.png" class="img-bg"/>
    <img src="${pageContext.request.contextPath}/statics/images/small_nav1.jpg" class="small_img1"/>
    <ul class="small_ul">
        <li><a href='/'>主页</a> > <a href="${pageContext.request.contextPath}/class.html/${node[0].id}">${node[0].name}</a> > <a href="${pageContext.request.contextPath}/catalog.html/illness/${node[1].id}">${node[1].name}</a>  </li>
    </ul>
</div>
<ul class="wzzd">
    <c:forEach var="i" begin="0" end="3">
        <%
            Random r=new Random();
           Page p= (Page) request.getAttribute("catalog");
           request.setAttribute("art",p.getPojos().get(r.nextInt(p.getPojos().size())));
        %>
        <li><p><a href="${pageContext.request.contextPath }/article.html/${art.id}" title="${art.title}">${art.title}</a></p></li>
    </c:forEach>
    <li><a href="${pageContext.request.contextPath}/chat.html" title="问专家">问专家</a></h3><p></li>
</ul>

<%@ include file="common/catalog.jsp" %>

<%@ include file="common/foot.jsp" %>
