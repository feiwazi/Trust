<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/11
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<div>
    <script>
        <c:if test="${ret=='true'}">alert("删除成功!")</c:if>
        <c:if test="${ret=='false'}">alert("删除失败!")</c:if>
    </script>
    <div><a href="/admin/add.html">增加</a></div>
<table>
     <tr>
        <td>编号</td>
        <td>标题</td>
        <td>时间</td>
         <td>修改</td>
        <td>删除</td>
    </tr>
   <c:forEach items="${article}" var="i">
    <tr>
        <td>${i.id}</td>
        <td>${fn:substring(i.title, 0, 15)}</td>
        <td><fmt:formatDate value="${i.time}" pattern="yyyy-MM-dd HH:mm:ss "></fmt:formatDate></td>
        <td><a href="/mobile/admin/update_${i.id}.html">修改</a></td>
        <td><a href="/mobile/admin/delete.html/${i.id}">删除</a></td>
    </tr>
</c:forEach>
</table>
</div>
<%@ include file="../common/foot.jsp" %>
