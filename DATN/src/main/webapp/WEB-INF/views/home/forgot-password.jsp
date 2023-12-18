<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


		
    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2 class="section-title">Forget Password</h2>
                        <h5 class="text-danger">${message }</h5>
                        <form action="forgot-password" method="post"  modelAttribute="ac">
                        <div class="form-input col-sm-18">
								<input type="text" id="varify" name="username"
									placeholder="User Name">
							</div>
                            <div class="form-input col-sm-18">
								<input type="email" id="email" name="email"
									placeholder="Email">
							</div>
                            
                            <button type="submit" style="width: 540px; align-content: center;"
								class="btn book-now-btn" data-toggle="modal"
								data-target="#exampleModal">Send</button>
                        </form>
                        <div class="switch-login">
                            <a href="register"  class="link-text text-linear-effect">Or Create An Account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->