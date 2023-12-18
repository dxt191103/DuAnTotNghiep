<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


    <!-- Breadcrumb Section Begin -->
   
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>Change Profile</h2>
                        <form method="post">
                        <h5 class="text-danger">${message}</h5>
                            <div class="group-input">

                                <input type="text" id="username" name="username" value="${username}" >
                            </div>
                            <div class="group-input">

                                <input type="text" id="password" name="password" value="${password}" >
                            </div>

                            <div class="group-input">
                                <label for="con-pass">Fullname </label>
                                <input type="text" id="fullname" name="fullname" value="${fullname}" >
                            </div>

                            <div class="group-input">
                                <label for="con-pass">Phone </label>
                                <input type="text" id="phone" name="phone" value="${phone}" >
                            </div>
                            <div class="group-input">
                                <label for="con-pass">Email </label>
                                <input type="text" id="email" name="email" value="${email}" >
                            </div>

                             <button type="submit" class="site-btn login-btn">Confirm</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->