<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!-- Breadcrumb Section Begin -->

<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="h-100 h-custom" style="background-color: #eee;">
	<div class="row">
		
			<div class="col-6 offset-3">

				<div class="card">
					<div class="card-header">
						<h3 class="alert alert-info">
							Your Order <a href="/home/services"
								class="btn btn-success float-right">Services List</a>
						</h3>

					</div>
					<h5>${message}</h5>
					<div class="card-body">
						<div class="col row">

							<form method="post" action="checkout">
								<div class="group-input">
								<label for="username">Username</label> <input type="text"
									id="username" name="username" value="${item.name}">
							</div>
							</div>
								<button type="submit" class="site-btn login-btn">Sign In</button>
							</form>


						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-danger">
								<a href="/home/cart/clear">Clear Cart</a>
							</button>
							

						</div>
					</div>
				</div>
			</div>
		
	</div>
</section>
<!-- Shopping Cart Section End -->