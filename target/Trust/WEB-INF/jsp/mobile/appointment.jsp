<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/18
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<script>
    <c:if test="${ret=='true'}">alert("预约成功!")</c:if>
    <c:if test="${ret=='false'}">alert("预约失败!")</c:if>
</script>
<div class="common-box" >
    <div style="text-align: center">
    <div style="margin: 0.6em 0">
    <h2 style="color: #0099a9;">网上预约挂号服务中心</h2>
    <h5>当天预约挂号成功，当天可优先就诊</h5>
    </div>
  <%--  <form method="post" style="margin: 0 3em;font-size: 24px">
        <table>
            <tr class="form-group">
            <td><span>姓名：</span></td><td><input type="text" name="name" class="form-control" placeholder="填写姓名" ></td>
            </tr>
        <tr class="form-group">
            <td><span>手机：</span></td><td><input type="phone" name="phone" class="form-control"placeholder="手机号码"></td>
        </tr>
        <tr class="form-group">
            <td><span>病情：</span></td><td><select class="form-control" name="illness">
                <option value="0">请选择就诊病情</option>
                <c:forEach items="${illness}" var="i">
                    <option value="${i.id}">${i.name}</option>
                </c:forEach>
            </select></td>
        </tr>
        <tr class="form-group">
            <td><span>时间：</span></td><td><input type="datetime-local" name="time"  class="form-control"></td>
        </tr>
        <tr class="form-group"  >
            <td><span>描述：</span></td><td><textarea class="form-control" name="message" cols="30" rows="10" placeholder="病情描述[200字]" style="resize:none"></textarea></td>
        </tr>
        </table>
        <table>
            <tr>
        <td><button type="submit" class="form-btn">提交</button></td>
        <td><button type="reset" class="form-btn">重置</button></td>
            </tr>
        </table>
    </form>--%>
    <form method="post">
        <div class="unit">姓名：<input type="text" name="name" class="form-control" placeholder="填写姓名" ></div>
        <div class="unit">手机：<input type="phone" name="phone" class="form-control"placeholder="手机号码"></div>
        <div class="unit">病情：<select class="form-control" name="illness">
            <option value="0">请选择就诊病情</option>
            <c:forEach items="${illness}" var="i">
                <option value="${i.id}">${i.name}</option>
            </c:forEach>
        </select></div>
        <div class="unit">时间：<input type="datetime-local" name="time"  class="form-control"></div>
        <div class="unit"><span style="float: left;margin: 0 0 0 15.8%">描述：</span><textarea class="form-control" name="message" cols="10" rows="10" placeholder="病情描述[200字]" style="height: 10%;position: relative;left: -7.5%"></textarea></div>
    </form>
    </div>
</div>
<%@ include file="common/foot.jsp" %>
