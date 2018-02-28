<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<body class="page no-sidebar header-style-1 menu-has-search menu-has-cart">

<!-- Featured Title -->
<div id="featured-title" class="clearfix featured-title-left">
    <div id="featured-title-inner" class="container clearfix">
        <div class="featured-title-inner-wrap">
            <div class="featured-title-heading-wrap">
                <h1 class="featured-title-heading">Contact Us</h1>
            </div>
            <div id="breadcrumbs">
                <div class="breadcrumbs-inner">
                    <div class="breadcrumb-trail">
                        <a href="#" title="Construction" rel="home" class="trail-begin">Home</a>
                        <span class="sep">/</span>
                        <span class="trail-end">Contact Us</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Main Content -->
<div id="main-content" class="site-main clearfix">
    <div id="content-wrap">
        <div id="site-content" class="site-content clearfix">
            <div id="inner-content" class="inner-content-wrap">
                <div class="page-content">
                    <section class="wprt-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="wprt-spacer" data-desktop="80" data-mobi="60" data-smobi="60"></div>
                                    <div id="gmap" class="wprt-gmap"></div>
                                    <div class="wprt-spacer" data-desktop="50" data-mobi="40" data-smobi="40"></div>
                                </div><!-- /.col-md-12 -->

                                <div class="col-md-4">
                                    <div class="wprt-information">
                                        <h4 class="margin-bottom-15">CALL US</h4>
                                        <p>Cras id justo eget sapien scelerisque lacinia non a eros. In a volutpat magna. Vivamus pretium urna at condimentum porta. Phasellus mollis mauris dolor, a tincidunt mauris fringilla. Phasellus lobortis tortor urna, vitae venenatis dui bibendum at.</p>
                                        <ul class="style-2">
                                            <li class="address">
                                                <span class="hl">Address:</span>
                                                <span class="text">1379 Shoreline Parkway, Mountain View, CA 94043, United States</span>
                                            </li>
                                            <li class="phone">
                                                <span class="hl">Phone:</span> 
                                                <span class="text">+1 718-999-3939</span>
                                            </li>
                                            <li class="email">
                                                <span class="hl">E-mail:</span>
                                                <span class="text">contact@construction.com</span>
                                            </li>
                                        </ul>
                                    </div><!-- /.wprt-information -->

                                    <div class="wprt-spacer" data-desktop="0" data-mobi="30" data-smobi="30"></div>
                                </div><!-- /.col-md-4 -->

			                    <div class="col-md-8">
			                    	<h4 class="margin-bottom-15">GET IN TOUCH WITH US</h4>
									<form action="ContactCtrlr" method="post" class="contact-form wpcf7-form">
										<div class="wprt-contact-form-1">
											<span class="wpcf7-form-control-wrap name">
												<input type="text" tabindex="1" id="name" name="name" value="" class="wpcf7-form-control" placeholder="Nom *" required>
											</span>
											<span class="wpcf7-form-control-wrap email">
												<input type="email" tabindex="2" id="email" name="email" value="" class="wpcf7-form-control" placeholder="E-mail *" required>
											</span>
											<span class="wpcf7-form-control-wrap phone">
												<input type="text" tabindex="3" id="phone" name="phone" value="" class="wpcf7-form-control" placeholder="Télephone">
											</span>
											<span class="wpcf7-form-control-wrap subject">
												<input type="text" tabindex="4" id="subject" name="subject" value="" class="wpcf7-form-control" placeholder="Sujet " required>
											</span>
											<span class="wpcf7-form-control-wrap message">
												<textarea name="message" tabindex="5" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" placeholder="Message" required></textarea>
											</span>
											<div class="wrap-submit">
												<input type="submit" value="SEND MESSAGE" class="submit wpcf7-form-control wpcf7-submit" id="submit" name="submit">
											</div>
										</div>
									</form>
			                    </div><!-- /.col-md-8 -->

                                <div class="col-md-12">
                                    <div class="wprt-spacer" data-desktop="80" data-mobi="60" data-smobi="60"></div>
                                </div><!-- /.col-md-12 -->
                            </div><!-- /.row -->
                        </div><!-- /.container -->
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->


<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBswyJLpoKXqeHRPwvUFx_CtXJkK3DD9Js&callback=initMap"></script>
<script type="text/javascript" src="assets/js/gmap3.min.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>

