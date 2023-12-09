<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- Slideshow -->
    <section class="page-wrapper">
      <div class="register-login-section spad">

        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>Login</h2>
                        
                        <form action="login" method="post">
                        <h4 class="text-danger">${message}</h4>
                            <div class="group-input">
                                <label for="username">Username *</label>
                                <input type="text" id="username" name="username">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input type="password" id="password" name="password">
                            </div>
                            <div class="group-input gi-check">
                                <div class="gi-more">
                                   <label for="save-pass">
                                        Save Password
                                        <input type="checkbox" name="remember" id="save-pass">
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="forgot-password" class="forget-pass">Forget your Password</a>
                                </div>
                                
                            </div>
                          <!-- Button trigger modal -->
						<button type="submit" class="site-btn login-btn">Sign In</button>
					</form>
                        <div class="switch-login">
                            <a href="/home/register" class="or-login">Or Create An Account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    </section>
    
    <!-- Register Form Section End -->

