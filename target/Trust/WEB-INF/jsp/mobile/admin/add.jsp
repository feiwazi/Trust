<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/9
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/kindeditor.jsp" %>
<script>
<c:if test="${ret=='true'}">alert("添加成功!")</c:if>
<c:if test="${ret=='false'}">alert("添加失败!")</c:if>
</script>
<form method="post">
<ul>
    <li>&boxvr;团队<ul>
        <c:forEach items="${team}" var="i">
        <li>&boxvr;&boxh;<input type="radio" style="-webkit-appearance: radio" name="type" value="team-${i.id}">${i.name}</li>
        </c:forEach>
    </ul></li>
    <li>&boxvr;病种<ul>
    <c:forEach items="${illness}" var="i">
        <li>&boxvr;&boxh;${i.name}<ul>
            <c:forEach items="${i.illnesses}" var="ii">
                <li>&emsp;&boxvr;&boxh;<input type="radio" style="-webkit-appearance: radio" name="type" value="illness-${ii.id}">${ii.name}</li>
            </c:forEach>
        </ul></li>
    </c:forEach>
    </ul></li>
</ul>
    标题：<input type="text" name="title">
    内容:<textarea class="kindeditor" name="content" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;border: 1px solid #000"><%=htmlspecialchars(htmlData)%></textarea>
    <input type="submit" value="提交">
</form>
<a href="${pageContext.request.contextPath }/admin/query.html">返回主页</a>
<%@ include file="../common/foot.jsp" %>
