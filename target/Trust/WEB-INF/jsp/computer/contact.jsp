<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/26
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<section id="inner-headline">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="pageTitle">联系我们</h2>
            </div>
        </div>
    </div>
</section>
<section id="content">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="about-logo">
                    <h3>保持联系！</h3>
                    <p>运城市守信中医结核病专科医院占地10亩，建筑面积4700平方米，门诊楼、宿舍楼及其他附属设备一应俱全，拥有300 毫安X光机,系列化验设备、手束器械、理疗机、制剂设备、污物焚烧炉、污水净化机等，一座集制剂、住院等功能于一体的四层综合大楼拔地而起，走进医院，绿树成茵,鸟语花香,如同一座花园。在注重研件建设的同时,该医院更注重临床疗法、药品研究与开发力度,不断地提高医院的整体素质，业务范围已扩展到肺结核、体表淋巴结核、其他器宫性结核、外科感染伤口的治疗及其他学科顽固病的治疗，并已开发出骨痹康、壮肌灵、风痰宁、力克瘤等一系列中药制剂，受到同行业的普遍赞誉。</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <p>医院地址：山西省运城市盐湖区黄河大道1098号</p>
                <p>门诊时间：(无假日医院) 08:00 - 23:00</p>
                <div class="done">
                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        Your message has been sent. Thank you!
                    </div>
                </div>
                <div class="contact-form">

                    <form method="post" action="contact.php" id="contactform" class="contact">
                        <div class="form-group has-feedback">
                            <label for="name">姓名*</label>
                            <input type="text" class="form-control" name="name" placeholder="">
                            <i class="fa fa-user form-control-feedback"></i>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="email">邮箱*</label>
                            <input type="email" class="form-control" name="email" placeholder="">
                            <i class="fa fa-envelope form-control-feedback"></i>
                        </div>

                        <div class="form-group has-feedback">
                            <label for="message">描述*</label>
                            <textarea class="form-control" rows="6" name="comment" placeholder=""></textarea>
                            <i class="fa fa-pencil form-control-feedback"></i>
                        </div>
                        <input type="submit" value="提交" id="submit" class="submit btn btn-default">
                    </form>


                </div>
            </div>
            <div class="col-md-6">
                <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.trivoo.net" id="get-map-data">trivoo</a></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(40.805478,-73.96522499999998),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(40.805478, -73.96522499999998)});infowindow = new google.maps.InfoWindow({content:"<b>The Breslin</b><br/>2880 Broadway<br/> New York" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
                    <%--<div class="category-zj-hide" style="overflow:hidden;height:500px;width:600px;"><a href="https://map.baidu.com/mobile/webapp/place/detail/qt=inf&uid=96b672aa84ba7c74ce04ef3b/vt=map&detail_from=11"><img src="${pageContext.request.contextPath }/statics/images/map_pc.png" class="category-zj-thumb"></a></div>--%>
            </div>
        </div>
    </div>

</section>
<%@ include file="common/foot.jsp" %>
