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
                <h2 class="pageTitle">Portfolio</h2>
            </div>
        </div>
    </div>
</section>
<section id="content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <h3>What we do?</h3>
                    <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                    <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="portfolio-categ filter">
                    <li class="all active"><a href="#">All</a></li>
                    <li class="web"><a href="#" title="">category 1</a></li>
                    <li class="icon"><a href="#" title="">category 2</a></li>
                    <li class="graphic"><a href="#" title="">category 3</a></li>
                </ul>
                <div class="clearfix">
                </div>
                <div class="row">
                    <section id="projects">
                        <ul id="thumbs" class="portfolio">
                            <!-- Item Project and Filter Name -->
                            <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="${pageContext.request.contextPath }/statics/images/works/1.jpg">
                                    <span class="overlay-img"></span>
                                    <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-search"></i></span>
                                </a>
                                <!-- Thumb Image and Description -->
                                <img src="${pageContext.request.contextPath }/statics/images/works/1.jpg" alt="">
                            </li>
                            <!-- End Item Project -->
                            <!-- Item Project and Filter Name -->
                            <li class="item-thumbs col-lg-3 design" data-id="id-1" data-type="icon">
                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img/works/2.jpg">
                                    <span class="overlay-img"></span>
                                    <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-search"></i></span>
                                </a>
                                <!-- Thumb Image and Description -->
                                <img src="${pageContext.request.contextPath }/statics/images/works/2.jpg" alt="">
                            </li>
                            <!-- End Item Project -->
                            <!-- Item Project and Filter Name -->
                            <li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="graphic">
                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img/works/3.jpg">
                                    <span class="overlay-img"></span>
                                    <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-search"></i></span>
                                </a>
                                <!-- Thumb Image and Description -->
                                <img src="${pageContext.request.contextPath }/statics/images/works/3.jpg" alt="">
                            </li>
                            <!-- End Item Project -->
                            <!-- Item Project and Filter Name -->
                            <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img/works/4.jpg">
                                    <span class="overlay-img"></span>
                                    <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-search"></i></span>
                                </a>
                                <!-- Thumb Image and Description -->
                                <img src="${pageContext.request.contextPath }/statics/images/works/4.jpg" alt="">
                            </li>
                            <!-- End Item Project -->
                            <!-- Item Project and Filter Name -->
                            <li class="item-thumbs col-lg-3 photography" data-id="id-4" data-type="web">
                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img/works/5.jpg">
                                    <span class="overlay-img"></span>
                                    <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-search"></i></span>
                                </a>
                                <!-- Thumb Image and Description -->
                                <img src="${pageContext.request.contextPath }/statics/images/works/5.jpg" alt="">
                            </li>
                            <!-- End Item Project -->
                            <!-- Item Project and Filter Name -->
                            <li class="item-thumbs col-lg-3 photography" data-id="id-5" data-type="icon">
                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img/works/6.jpg">
                                    <span class="overlay-img"></span>
                                    <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-search"></i></span>
                                </a>
                                <!-- Thumb Image and Description -->
                                <img src="${pageContext.request.contextPath }/statics/images/works/6.jpg" alt="">
                            </li>
                            <!-- End Item Project -->
                            <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img/works/7.jpg">
                                    <span class="overlay-img"></span>
                                    <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-search"></i></span>
                                </a>
                                <!-- Thumb Image and Description -->
                                <img src="${pageContext.request.contextPath }/statics/images/works/7.jpg" alt="">
                            </li>
                            <!-- End Item Project -->
                            <!-- Item Project and Filter Name -->
                            <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="graphic">
                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img/works/8.jpg">
                                    <span class="overlay-img"></span>
                                    <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-search"></i></span>
                                </a>
                                <!-- Thumb Image and Description -->
                                <img src="${pageContext.request.contextPath }/statics/images/works/8.jpg" alt="">
                            </li>
                            <!-- End Item Project -->
                        </ul>
                    </section>
                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="common/foot.jsp" %>
