<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- Slideshow -->
    <section class="page-wrapper">
       <!-- about-section -->
        <div class="about-section container-fluid" id="about">
            <div class="row">
                <div class="video-box col-lg-6 col-md-12">
                    <div class="play-btn">
                        <i class="fas fa-play"></i>
                    </div>
                </div>
                <div class="about-main-text col-lg-6 col-md-12">
                    <h2 class="section-title">Our Story !</h2>
                    <div class="sub-heading">
                        <em>Natuspa opened its doors with a mission and vision of making a positive difference in the
                            world.</em>
                    </div>
                    <p class="text-box">September 25, 2005, Natuspa opened its doors with a mission and vision of making
                        a
                        positive difference in the world one guest at a time and delivering an exceptional our guests
                        couldnât live without. for us, itâs been about a journey, not a race to build a legacy and
                        reputation of being the best, delivering the best and creating a Natuspa culture that we are
                        proud
                        of each and every day. we are humbled and grateful for the opportunity to open our doors each
                        day,
                        create exceptional experiences and give back to our communities.
                    </p>
                    <a class="link-text text-linear-effect">Read More</a>
                </div>
            </div>
            <iframe src="https://www.youtube.com/embed/zHCyHodIlCY" frameborder="0"
                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen
                class="video-embed">
            </iframe>
            <span class="close-btn"><i class="fal fa-times"></i></span>
            <div class="spacer-clearfix" style="height: 80px;"></div>
        </div>

        <!-- testimonial section -->
        <div class="testimonial-section container" id="testimonial">
            <div class="section-title">Our Client Say</div>
            <div class="spacer-clearfix" style="height: 35px;"></div>
            <blockquote>
                <div class="slick-slide-cite">
                    <p>
                        Iâve been coming here for over 10 years and the service is on point. The staff is very
                        professional and know what theyâre doing. If you want to go somewhere that is actually relaxing,
                        come
                        here!
                    </p>
                    <p>
                        Iâve been coming here for over 10 years and the service is on point. The staff is very
                        professional and know what theyâre doing. If you want to go somewhere that is actually relaxing,
                        come
                        here!
                    </p>
                    <p>
                        Iâve been coming here for over 10 years and the service is on point. The staff is very
                        professional and know what theyâre doing. If you want to go somewhere that is actually relaxing,
                        come
                        here!
                    </p>
                    <p>
                        Iâve been coming here for over 10 years and the service is on point. The staff is very
                        professional and know what theyâre doing. If you want to go somewhere that is actually relaxing,
                        come
                        here!
                    </p>
                    <p>
                        Iâve been coming here for over 10 years and the service is on point. The staff is very
                        professional and know what theyâre doing. If you want to go somewhere that is actually relaxing,
                        come
                        here!
                    </p>
                </div>
                <div class="slick-slide-figure-img">
                    <div><img src="/forUser/imgs/testimonials/1.png" alt="customer"></div>
                    <div><img src="/forUser/imgs/testimonials/2.png" alt="customer"></div>
                    <div><img src="/forUser/imgs/testimonials/3.png" alt="customer"></div>
                    <div><img src="/forUser/imgs/testimonials/1.png" alt="customer"></div>
                    <div><img src="/forUser/imgs/testimonials/5.png" alt="customer"></div>
                    <div><img src="/forUser/imgs/testimonials/4.png" alt="customer"></div>
                </div>
                <div class="slick-slide-figure-info">
                    <div class="infomation">
                        <div class="name">jessica Speckert</div>
                        <div class="position">Customer</div>
                    </div>
                    <div class="infomation">
                        <div class="name">Maria Green</div>
                        <div class="position">Customer</div>
                    </div>
                    <div class="infomation">
                        <div class="name">Fiona Speckert</div>
                        <div class="position">Customer</div>
                    </div>
                    <div class="infomation">
                        <div class="name">jessica Speckert</div>
                        <div class="position">Customer</div>
                    </div>
                    <div class="infomation">
                        <div class="name">Michelle Martin</div>
                        <div class="position">Customer</div>
                    </div>
                    <div class="infomation">
                        <div class="name">Margie Edwards</div>
                        <div class="position">Customer</div>
                    </div>
                </div>
            </blockquote>
            <div class="spacer-clearfix" style="height: 80px;"></div>
        </div>

        <!-- appointment & form section -->
        <div class="appointment-section container-fluid">
            <div class="container">
                <div class="row">
                    <div class="spacer-clearfix" style="height: 90px;"></div>
                    <div class="heading col-12">
                        <div class="pre-heading">Make an appointment</div>
                        <div class="main-heading">premium<br>Collection</div>
                        <div class="sub-heading">Up to 50% Off Sale</div>
                    </div>
                    <div class="spacer-clearfix" style="height: 60px;"></div>
                    <div class="appointment-form col-12">
                        <form action="/action_page.php">
                            <div class="row">
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 your-name">
                                    <input type="text" name="name" id="name" placeholder="Full Name">
                                    <div class="error">( <span>*</span> )</div>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 your-email">
                                    <input type="text" name="email" id="email" placeholder="E-mail">
                                    <div class="error">( <span>*</span> )</div>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 your-phone-number">
                                    <input type="text" name="phone-number" id="phone-number" placeholder="Phone Number">
                                    <div class="error">( <span>*</span> )</div>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 preferred-date">
                                    <input type="text" name="preferred-date" id="datepicker"
                                        placeholder="Preferred Date" autocomplete="off">
                                    <div class="error">( <span>*</span> )</div>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 your-service">
                                    <div class="current-option" data-value="0">Type Of Services</div>
                                    <div class="error">( <span>*</span> )</div>
                                    <span class="dropdown-icon"><i class="fal fa-chevron-down down"></i></span>
                                    <ul class="option-menu">
                                        <li class="option" data-value="0">Type Of Services</li>
                                        <li class="option" data-value="1">Natural Waxing</li>
                                        <li class="option" data-value="1">Signature Massage</li>
                                        <li class="option" data-value="1">Natural Nails Care</li>
                                        <li class="option" data-value="1">Body Treatments</li>
                                        <li class="option" data-value="1">Derm Young Facial</li>
                                    </ul>
                                </div>
                                <div class="form-input col-lg-4 col-md-6 col-sm-12 submit-btn">
                                    <input value="APPOINTMENT NOW" id="appointment-submit" name="submit"
                                        class="btn book-now-btn" disabled="disabled" style="opacity: 1;">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="spacer-clearfix" style="height: 80px;"></div>
                </div>
            </div>
        </div>

        <!-- team section -->
        <div class="team container">
            <div class="spacer-clearfix" style="height: 70px;"></div>
            <div class="heading">
                <h2 class="section-title">our happy team</h2>
                <div class="sub-heading">
                    <p>Natuspa is a full service salon with experts in body services, nail care, massage, waxing, skin
                        care,
                        and other treatments.
                    </p>
                </div>
            </div>
            <div class="spacer-clearfix" style="height: 65px;"></div>
            <div class="team-slider">
                <div class="team-item">
                    <img src="/forUser/imgs/team/person-1-370x450.jpg" alt="Person-1">
                    <div class="infomation">
                        <h4 class="name">Emille Jenifer</h4>
                        <div class="position">Massagist</div>
                    </div>
                    <ul class="social-media-icons">
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a href="https://fb.com/tuannguyentn2504" class="social-popup-icon" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="team-item">
                    <img src="/forUser/imgs/team/person-2-370x450.jpg" alt="Person-2">
                    <div class="infomation">
                        <h4 class="name">Marsha Hoffman</h4>
                        <div class="position">makeup expert</div>
                    </div>
                    <ul class="social-media-icons">
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a href="https://fb.com/tuannguyentn2504" class="social-popup-icon" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="team-item">
                    <img src="/forUser/imgs/team/person-3-370x450.jpg" alt="Person-3">
                    <div class="infomation">
                        <h4 class="name">Emille Jenifer</h4>
                        <div class="position">Massagist</div>
                    </div>
                    <ul class="social-media-icons">
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a href="https://fb.com/tuannguyentn2504" class="social-popup-icon" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="social-media">
                            <a class="social-popup-icon" target="_blank">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="spacer-clearfix" style="height: 90px;"></div>
        </div>
    </section>
    
    
 