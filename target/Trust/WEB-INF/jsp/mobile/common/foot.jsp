<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/1
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="tel_rx"><a href="tel:03592513939"><img src="${pageContext.request.contextPath }/statics/images/tel_rx.png"></a>
</div>
<div class="map">
            <div class="category-zj-hide" style="width:40%"><a href="https://map.baidu.com/mobile/webapp/place/detail/qt=inf&uid=96b672aa84ba7c74ce04ef3b/vt=map&detail_from=11"><img src="${pageContext.request.contextPath }/statics/images/map.png" class="category-zj-thumb"></a></div>
            <div class="category-zj-hide01" style="width: 50%">
                <p>门诊时间：(无假日医院)<br />08:00 - 23:00</p>
                <p>医院地址：山西省运城市盐湖区黄河大道1098号</p>
                <p></p>
            </div>
</div>
<div class="footer-dz">
    运城守信中医结核病专科医院版权所有 <br>
    <p>Yuncheng Shouxin Zhongyi Jiehebing  specialty  hospital. All rights reserved</p>
</div>
<div class="BottomNav">
    <ul>
        <li><a href="${pageContext.request.contextPath }/"><i class="n1"></i><span>医院首页</span></a></li>
        <li><a href="${pageContext.request.contextPath }/chat.html"><i class="n2"></i><span>在线咨询</span></a></li>
        <li><a href="tel:03592513939"><i class="n3"></i><span>电话咨询</span></a></li>
           <%-- <li><a href="${pageContext.request.contextPath }/menu/appointment.html"><i class="n4"></i><span>预约挂号</span></a></li>--%>
    </ul>
</div>
<style>
    .BottomNav {
        width: 100%;
        height: 80px;
        position: fixed;
        bottom: 0;
        left: 0;
        z-index: 2014;
        _position: absolute;
    }

    .BottomNav ul {
        height: 80px;
        background: #0099a9;
        overflow: hidden;
    }

    .BottomNav ul li {
        width: 33%;
        height: 80px;
        float: left;
        text-align: center;
        position: relative;
        box-shadow: 5px 2px 10px #0099a9;
        position: relative;
        top: 15px;
    }

    .BottomNav ul li i {
        width: 25px;
        height: 25px;
        background: url(${pageContext.request.contextPath}/statics/images/btmnav.png);
        background-repeat: no-repeat;
        display: block;
        margin: 2px auto 0;
        vertical-align: middle;
    }

    .BottomNav ul li i.n1 {
        background-position: 0 2px;
        background-size: 200px auto;
    }

    .BottomNav ul li i.n2 {
        background-position: -45px 3px;
        background-size: 170px auto;
    }

    .BottomNav ul li i.n3 {
        background-position: -112px 1px;
        background-size: 190px auto;
    }

    .BottomNav ul li i.n4 {
        background-position: -155px 2px;
        background-size: 180px auto;
    }

    .BottomNav ul li span {
        font-size: 20px;
        padding: 2px 0 0;
        display: block;
        color: #fff;
    }
</style>
<script language="javascript" src="https://dht.zoosnet.net/JS/LsJS.aspx?siteid=DHT49780692&float=1&lng=cn"></script>
<%@ include file="../../jump.jsp" %>
</html>