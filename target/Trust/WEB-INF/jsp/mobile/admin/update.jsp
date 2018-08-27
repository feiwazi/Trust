<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/11
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/kindeditor.jsp" %>
<script>
    <c:if test="${ret=='true'}">alert("修改成功!")</c:if>
    <c:if test="${ret=='false'}">alert("修改失败!")</c:if>
</script>
<form method="post" action="/mobile/admin/update.html">
    <input type="hidden" name="id" value="${article.id}">
标题：<input type="text" name="title" value="${article.title}">
内容:<textarea class="kindeditor" name="content" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;border: 1px solid #000">${article.content}</textarea>
<input type="submit" value="提交">
</form>
<a href="${pageContext.request.contextPath }/admin/query.html">返回主页</a>
<%@ include file="../common/foot.jsp" %>
