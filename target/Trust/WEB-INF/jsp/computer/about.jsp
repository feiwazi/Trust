<%--
  Created by IntelliJ IDEA.
  User: women
  Date: 2018/8/26
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jsp" %>
<section id="inner-headline">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="pageTitle">About Us</h2>
            </div>
        </div>
    </div>
</section>
<section id="content">
    <div class="container">

        <div class="about">

            <div class="row">
                <div class="col-md-12">
                    <div class="about-logo">
                        <h3>We are awesome <span class="color">TEAM</span></h3>
                        <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                        <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                    </div>
                    <a href="#" class="btn btn-color">Read more</a>
                </div>
            </div>

            <hr>
            <br>

            <div class="row">
                <div class="col-md-4">
                    <!-- Heading and para -->
                    <div class="block-heading-two">
                        <h3><span>Why Choose Us?</span></h3>
                    </div>
                    <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur. <br/><br/>Sed ut perspiciaatis iste natus error sit voluptatem probably haven't heard of them accusamus.</p>
                </div>
                <div class="col-md-4">
                    <div class="block-heading-two">
                        <h3><span>Our Solution</span></h3>
                    </div>
                    <strong>2016</strong>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, accusantium iusto nihil nesciunt unde veniam magnam repudiandae sapiente. consptates placeat consectetur quam aliquam!</p>
                    <strong>2013</strong>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, unde veniam magnam repudiandae sapiente. consequuntur eius repellendus eos aliquid molestiae ea laboctetur quam aliquam!</p>

                </div>

                <div class="col-md-4">

                    <h3>Molestie consequat</h3>
                    <ul class="list2">
                        <li><a href="#">Eriure dolor in hendrerit in vulpu</a></li>
                        <li><a href="#">Otate velit esse molestie con</a></li>
                        <li><a href="#">Bequat, vel illum dolore eu feugiat</a></li>
                        <li><a href="#">Nulla facilisis at vero eros et</a></li>
                        <li><a href="#">Bumsan et iusto odio dignissim</a></li>
                        <li><a href="#">Equi blandit praesent lup</a></li>
                    </ul>
                </div>

            </div>



            <br>
            <!-- Our Team starts -->

            <!-- Heading -->
            <div class="block-heading-six">
                <h4 class="bg-color">Our Team</h4>
            </div>
            <br>

            <!-- Our team starts -->

            <div>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <!-- Team Member -->
                        <div class="team-member">
                            <!-- Image -->
                            <img class="img-responsive" src="${pageContext.request.contextPath }/statics/images/team1.jpg" alt="">
                            <!-- Name -->
                            <h4>Johne Doe</h4>
                            <span class="deg"><strong>Sr.Doctor</strong></span>
                            <p>Perspiciaatis unde omnis iste natus error sit voluptatem accusantium.</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <!-- Team Member -->
                        <div class="team-member">
                            <!-- Image -->
                            <img class="img-responsive" src="${pageContext.request.contextPath }/statics/images/team2.jpg" alt="">
                            <!-- Name -->
                            <h4>Jennifer</h4>
                            <span class="deg"><strong>Sr.Surgeon</strong></span>
                            <p>Perspiciaatis unde omnis iste natus error sit voluptatem accusantium.</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <!-- Team Member -->
                        <div class="team-member">
                            <!-- Image -->
                            <img class="img-responsive" src="${pageContext.request.contextPath }/statics/images/team3.jpg" alt="">
                            <!-- Name -->
                            <h4>Christean</h4>
                            <span class="deg"><strong>Manager</strong></span>
                            <p>Perspiciaatis unde omnis iste natus error sit voluptatem accusantium.</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <!-- Team Member -->
                        <div class="team-member">
                            <!-- Image -->
                            <img class="img-responsive" src="${pageContext.request.contextPath }/statics/images/team4.jpg" alt="">
                            <!-- Name -->
                            <h4>Kerinele rase</h4>
                            <span class="deg"><strong>Chairman</strong></span>
                            <p>Perspiciaatis unde omnis iste natus error sit voluptatem accusantium.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Our team ends -->


        </div>

    </div>
</section>
<%@ include file="common/foot.jsp" %>
