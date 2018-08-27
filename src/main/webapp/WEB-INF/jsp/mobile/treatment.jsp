<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/1
  Time: 20:10
  To change this template use File | Settings | File Templates. 诊疗项目
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
<%@ include file="common/foot.jsp" %>
