<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>Change Password</h2>
                        <form action="change-password" method="post">
                        <h5 class="text-danger">${message}</h5>
                            <div class="form-input col-sm-18">
								<input type="text" id="username" name="username"
									placeholder="User Name">
							</div>
							<div class="form-input col-sm-18">
								<input type="password" id="password" name="password"
									placeholder="Password">
							</div>
                            <div class="form-input col-sm-18">
								<input type="password" id="password" name="newpassword"
									placeholder="New Password">
							</div>
                            <div class="form-input col-sm-18">
								<input type="password" id="confirmpassword" name="confirmpassword"
									placeholder="Confirm New Password">
							</div>
                            <button type="submit"
								style="width: 540px; align-content: center;"
								class="btn book-now-btn" data-toggle="modal"
								data-target="#exampleModal">Confirm</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->