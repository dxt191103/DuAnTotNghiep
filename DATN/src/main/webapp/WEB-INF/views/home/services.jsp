<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- Slideshow -->
    <section class="page-wrapper">
     <!-- service section -->
        <div class="services-section container" id="services">
            <div class="row">
                <div class="spacer-clearfix" style="height: 80px;"></div>
                <div class="services-info col-md-12">
                    <h2 class="section-title">our best services</h2>
                    <p class="services-main-text">Natuspa is a full service salon with experts in body services, nail
                        care,
                        massage, waxing, skin care, and other treatments.
                    </p>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-facial-treatment"></i>
                    </div>
                    <div class="heading text-linear-effect">Derm Young Facial</div>
                    <div class="description">This facial addresses most of the common skin concerns for both men and
                        women
                        including dehydration, wrinkles, and loss of firmness.
                    </div>
                    <div class="spacer-clearfix" style="height: 50px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-depilation"></i>
                    </div>
                    <div class="heading text-linear-effect">Natural Waxing</div>
                    <div class="description">This drastically reduces the occurrence of hair breakage, painful in-grown
                        hairs, and also allows us to remove smaller, harder to grab hairs.
                    </div>
                    <div class="spacer-clearfix" style="height: 50px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-massage-1"></i>
                    </div>
                    <div class="heading text-linear-effect">Signature Massage</div>
                    <div class="description">invite Natuspa to travel to your office or place of business and help your
                        team
                        relax! great for team recognition, a reward for meeting goals.
                    </div>
                    <div class="spacer-clearfix" style="height: 50px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-herbal"></i>
                    </div>
                    <div class="heading text-linear-effect">Body Treatments</div>
                    <div class="description">This treatment begins with a gentle lavender sugar scrub, followed by the
                        Vichy
                        shower to exfoliate and remove bacteria from our pores.
                    </div>
                    <div class="spacer-clearfix" style="height: 0px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-polish"></i>
                    </div>
                    <div class="heading text-linear-effect">Natural Nails Care</div>
                    <div class="description">Natuspa has highly trained professionals when it comes manicures and
                        pedicures.
                        If you have any questions, please don't hesitate to contact us.
                    </div>
                    <div class="spacer-clearfix" style="height: 0px;"></div>
                </div>
                <div class="service col-lg-4 col-md-6 col-sm-12">
                    <div class="services-icon-wrap">
                        <i class="natuspa-icon-stone"></i>
                    </div>
                    <div class="heading text-linear-effect">Hot Stone Massage</div>
                    <div class="description">Hot stone massage is a therapeutic massage treatment during which warmed
                        stones
                        are placed on certain areas of the body.
                    </div>
                    <div class="spacer-clearfix" style="height: 0px;"></div>
                </div>
                <div class="spacer-clearfix" style="height: 80px;"></div>
            </div>
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
    
    
 