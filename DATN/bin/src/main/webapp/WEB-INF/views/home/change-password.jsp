<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="home/index"><i class="fa fa-home"></i> Home</a>
                        <span>Change Password</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>Change Password</h2>
                        <form action="change-password" method="post">
                        <h5 class="text-danger">${message}</h5>
                            <div class="group-input">
                                <label for="username">Username *</label>
                                <input type="text" id="username" name="username">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input type="password" id="password" name="password">
                            </div>

                            <div class="group-input">
                                <label for="pass">New Password *</label>
                                <input type="password" id="newpassword" name="newpassword">
                            </div>

                            <div class="group-input">
                                <label for="pass">Confirm New Password *</label>
                                <input type="password" id="confirmpassword" name="confirmpassword">
                            </div>

                            <button type="submit" class="site-btn login-btn">Confirm</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->