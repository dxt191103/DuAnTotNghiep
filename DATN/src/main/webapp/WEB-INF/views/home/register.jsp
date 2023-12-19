<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12"></div>
		</div>
	</div>
</div>
<!-- Breadcrumb Form Section Begin -->

<!-- Register Section Begin -->
<div class="register-login-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 offset-lg-3">
				<div class="register-form">
					<h2 class="section-title">Register</h2>
					<p class="text-danger">${message}</p>
					<form:form method="get" action="/home/register"
						modelAttribute="item">
						<div class="form-input col-sm-18">
							<form:input path="username" type="text" id="username"
								placeholder="User Name" />
						</div>
						<div class="form-input col-sm-18">
							<form:input type="password" id="password" path="password"
								placeholder="Password" />
						</div>
						<div class="form-input col-sm-18">
							<form:input type="text" id="fullname" path="fullname"
								placeholder="Fullname" />
						</div>
						<div class="form-input col-sm-18">
							<form:input type="text" id="phone" path="phone"
								placeholder="Phone" />
						</div>
						<div class="form-input col-sm-18">
							<form:input type="text" id="email" path="email"
								placeholder="Email" />
						</div>

						<!-- button type="submit" class="site-btn register-btn" formaction="/home/register/create">REGISTER</button>-->
						<button type="submit" style="width: 540px; align-content: center;"
							class="btn book-now-btn" data-toggle="modal"
							data-target="#exampleModal" formaction="/home/register/create">REGISTER</button>
				</div>
			</div>
			</form:form>

		</div>
	</div>
</div>
</div>
</div>
<!-- Register Form Section End -->