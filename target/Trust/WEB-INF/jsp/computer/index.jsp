<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/26
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<section id="banner">
    <!-- Slider -->
    <div id="main-slider" class="flexslider">
        <ul class="slides">
            <li>
                <img src="${pageContext.request.contextPath }/statics/images/slides/1.jpg" alt="" />
                <div class="flex-caption container">
                    <h3>关心您的健康</h3>
                    <p>没有什么比健康最重要</p>
                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/statics/images/slides/2.jpg" alt="" />
                <div class="flex-caption container">
                    <h3>最好的设备</h3>
                    <p>用世界上最顶先的设备来治疗您的伤痛</p>
                </div>
            </li>
        </ul>
    </div>
    <!-- end slider -->

</section>
<section class="txt-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="aligncenter"><h1 class="aligncenter">我们的特色疗法</h1>以特色"攻勉消散"疗法(中西药结核、纯中药)应诊各种顽固结核病，使许多大城市三甲医院久治无好转的患者获得痊愈。</div>
            </div>
        </div>
    </div>
</section>
<section id="services">
    <div class="container">
        <div class="row">
            <div class="features">
                <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="0ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 0ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="${pageContext.request.contextPath }/statics/images/1.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">不手术</h4>
                            <p>中西医结合，避免做手术</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="100ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 100ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="${pageContext.request.contextPath }/statics/images/2.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">无痛苦</h4>
                            <p>以中医为主要治疗方式，毫无痛苦</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="200ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 200ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="${pageContext.request.contextPath }/statics/images/3.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">疗效好</h4>
                            <p>中西医结合，西药用于杀菌，中药用于修复伤损组织</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="300ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 300ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="${pageContext.request.contextPath }/statics/images/4.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">不耐药</h4>
                            <p>主要治疗方式为中医,康复后不会反复发作,不耐药</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="400ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 400ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="${pageContext.request.contextPath }/statics/images/5.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">零遗症</h4>
                            <p>使用《明宫秘方》为医治方案，零后遗症</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="500ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 500ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="${pageContext.request.contextPath }/statics/images/7.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">中草药</h4>
                            <p>中草药，天然的，更放心</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->
            </div>
        </div>
    </div>
</section>

<section class="aboutUs">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aligncenter"><h2 class="aligncenter">守信中医结核病专科医院竭诚为您服务！</h2>中医“共勉消散”疗法，治愈率99.91%</div>
                <br/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath }/statics/images/img1.png" alt="">
                <div class="space"></div>
            </div>
            <div class="col-md-6">
                <p><h5>世界卫生组织警告说，肺结核已成为世界成年人的主要致命疾病，在我国防治结核病第一线上，涌现出了许多医德良好，医术精湛的白衣天使，本院的李守信，仝丽芳夫妇就是其中之一，他们把现代医学科学理论与祖传中医理论结合制出“抗痨散”系列药物和治疗方法，在抗痨战线上取得了辉煌成就。</h5></p>
                <p>展望医院的前景,李守信、仝丽芳夫妇满怀信心地说不断加大科研开发力度，积极接受全国结核病科研协作组布置的科研力度，诚心实意地与全国各兄弟医院合作,为全国广大的结核病患者拓展一条充满阳光的“爱心路”。</p>
                <ul class="list-unstyled">
                    <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> “共勉消散”疗法,疗效好</li>
                    <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> 中医医结合，无副作用</li>
                    <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> 设备齐全，绿树成荫，有益于患者痊愈</li>
                    <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> 省政府颁发科技进步二等奖</li>
                    <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> 治愈患者2000+例</li>
                </ul>
            </div>
        </div>

    </div>
</section>
<section id="events">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aligncenter"><h2 class="aligncenter">设备</h2>运城市守信中医结核病专科医院占地10亩，建筑面积4700平方米，门诊楼、宿舍楼及其他附属设备一应俱全，拥有300 毫安X光机,系列化验设备、手束器械、理疗机、制剂设备、污物焚烧炉、污水净化机等，一座集制剂、住院等功能于一体的四层综合大楼</div>
                <br>
            </div>
        </div>
        <div class="row" class="eventsLink">
            <div class="col-md-4">
                <div class="post3">
                    <img src="${pageContext.request.contextPath }/statics/images/e1.png" alt="">
                    <a href="#">
                        <time datetime="1953-03-01">
                            <span class="year">1953年</span>
                            <span class="month">2月</span>
                        </time>
                        <p>根据《明宫遗书》研制“共勉消散”疗法</p>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="post3">
                    <img src="${pageContext.request.contextPath }/statics/images/e2.png" alt="">
                    <a href="#">
                        <time datetime="1986-06-01">
                            <span class="year">1986年</span>
                            <span class="month">6月</span>
                        </time>
                        <p>建立结核病菌实验室</p>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="post3">
                    <img src="${pageContext.request.contextPath }/statics/images/e3.png" alt="">
                    <a href="#">
                        <time datetime="2003-08-01">
                            <span class="year">2003</span>
                            <span class="month">8月</span>
                        </time>
                        <p>引进 “罗德费电子嗅探器”</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="common/foot.jsp" %>
