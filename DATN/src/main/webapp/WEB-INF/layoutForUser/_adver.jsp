<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn" style="color: red;">
						<i class="ti-menu"></i> <span>All departments</span>
						<ul class="depart-hover" th:each="category : ${categories}">
							<li class="active"><a href="/home/brand?field1=1000">DELL</a></li>
								<li><a href="/home/brand?field1=1001">MACKBOOK</a></li>
								<li><a href="/home/brand?field1=1002">ACER</a></li>
								<li><a href="/home/brand?field1=1003">ASUS</a></li>
								<li><a href="/home/brand?field1=1004">HP</a></li>
								<li><a href="/home/brand?field1=1005">MSI</a></li>
								<li><a href="/home/brand?field1=1006">LENOVO</a></li>
								<li><a href="/home/brand?field1=1007">MICROSOFT</a></li>
								<li><a href="/home/brand?field1=1008">LG</a></li>
								<li><a href="/home/brand?field1=1009">CHUWI</a></li>
								<li><a href="/home/brand?field1=1010">MASSTEL</a></li>
								<li><a href="/home/brand?field1=1011">GIGABYTE</a></li>
						</ul>
					</div>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						<li class="active" style="color: red;"><a href="index">Home</a></li>
						<li><a href="shop" style="color: red;">Shop</a></li>
						<li><a href="shop" style="color: red;">Collection</a>
                            <ul class="dropdown">
                                <li><a href="/home/brand?field1=1000">DELL</a></li>
								<li><a href="/home/brand?field1=1001">MACKBOOK</a></li>
								<li><a href="/home/brand?field1=1002">ACER</a></li>
								<li><a href="/home/brand?field1=1003">ASUS</a></li>
								<li><a href="/home/brand?field1=1004">HP</a></li>
								<li><a href="/home/brand?field1=1005">MSI</a></li>
								<li><a href="/home/brand?field1=1006">LENOVO</a></li>
								<li><a href="/home/brand?field1=1007">MICROSOFT</a></li>
								<li><a href="/home/brand?field1=1008">LG</a></li>
								<li><a href="/home/brand?field1=1009">CHUWI</a></li>
								<li><a href="/home/brand?field1=1010">MASSTEL</a></li>
								<li><a href="/home/brand?field1=1011">GIGABYTE</a></li>
                            </ul>
                        </li>
						<li><a href="contact" style="color: red;">Contact</a></li>
						<li><a href="#" style="color: red;">Acc</a>
							<ul class="dropdown">
							<c:if test="${!isLogin}">
								<li><a href="login">Login</a></li>
								<li><a href="register">Register</a></li>
							</c:if>
							<c:if test="${isLogin}">
								<li><a href="change-password">Change Password</a></li>
								<li><a href="profile">My Profile</a></li>
							</c:if>
							</ul>
						</li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>