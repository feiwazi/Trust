<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/5
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<div class="cont_small_nav" style="margin-top:0.5em; background:#fff;">
    <img src="${pageContext.request.contextPath}/statics/images/cont_nav1.png" class="img-bg"/>
    <img src="${pageContext.request.contextPath}/statics/images/small_nav1.jpg" class="small_img1"/>
    <ul class="small_ul">
        <li><a href='/'>主页</a>  > <a href="${pageContext.request.contextPath}/catalog.html/case/0">康复案例</a>  </li>
    </ul>
</div>
<%@ include file="common/catalog.jsp" %>
<%@ include file="common/foot.jsp" %>
