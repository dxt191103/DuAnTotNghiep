<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<header class="header-section">
	<div class="header-top">
		<div class="container" >
			<div class="ht-left">
				<div class="mail-service">
					<i class=" fa fa-envelope"></i> hello.huyenthoaipro63@gmail.com
				</div>
				<div class="phone-service">
					<i class=" fa fa-phone"></i> +84 344.636.779
				</div>
			</div>
			<div class="ht-right">
				<!-- <a href="/home/login" class="login-panel"><i class="fa fa-user"></i>Login</a> -->

				<c:if test="${!isLogin}">
					<a href="/home/login" class="login-panel"><i class="fa fa-user"></i>Login</a>
					<div class="top-social">
						<a href="/home/register"><i class="fa fa-plus pr-1"></i>Register</a>
					</div>
				</c:if>
				<c:if test="${isLogin}">
					<c:if test="${admin}">
						<a href="/admin/index" class="login-panel" ><i
							class="fa fa-user"></i>Administration</a>
					</c:if>
					<div class="top-social">
						<a href="profile" class="text-primary"
							style="font-weight: bolder;">${fullname}</a> <a
							class="text-danger" id="btnLogOff" href="/logout" title="">[Logout]</a>
					</div>
				</c:if>

			</div>
		</div>
	</div>

	<!--Logo-->
	<div class="container">
		<div class="inner-header">
			<div class="row">
				<div class="col-lg-3 col-md-2">
					<div class="logo">
						<h3><a href="/home/index"> LAPTTSHOP
						</a></h3>
						
					</div>
				</div>
				<div class="col-lg-5 col-md-7">
					<div class="advanced-search">
					<button type="button" class="category-btn" style="color: orange;">
									<i class="ti-search"></i>
								</button>
						<!-- <button >All Categories</button> -->
						<div class="input-group">
							<form action="search" method="post" >
								<input type="text" placeholder="What do you need?" name="keywords" value="">
								
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3 text-right col-md-3">
					<ul class="nav-right">
						<li class="cart-icon"><a href="/home/cart"> <i
								class="icon_cart_alt"></i>
						</a></li>
						<li class="cart-price">My Cart</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</header>