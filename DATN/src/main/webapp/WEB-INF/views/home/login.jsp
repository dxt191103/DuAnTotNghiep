<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
            span{
                color:red;
                display: block;
                padding: 5px 0px;
            }
        </style>
        
<!-- Slideshow -->
<section class="page-wrapper">
	<div class="register-login-section spad">

		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3" class="section-title">
					<div class="login-form">
						<h2 class="section-title">Login</h2>

						<form action="login" method="post">
							
							<div class="form-input col-sm-18">
								<input type="text" id="username" name="username"
									placeholder="User Name"/>
									<span id="username_error"></span>
							</div>
							
							<div class="form-input col-sm-18">
								<input type="password" id="password" name="password"
									placeholder="Password"/>
									<span id="password_error"></span>
							</div>
							<div class="group-input ">
								<div class="gi-more">
									
									<a href="forgot-password" class="forget-pass">Forget your
										Password</a>
								</div>

							</div>
							<!-- Button trigger modal -->
							<button type="submit"
								style="width: 540px; align-content: center;"
								class="btn book-now-btn" data-toggle="modal"
								data-target="#exampleModal" onclick="return validate();">Sign In</button>
						</form>
						<div class="switch-login">
							<a href="register" class="link-text text-linear-effect">Or
								Create An Account</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</section>

<!-- Register Form Section End -->