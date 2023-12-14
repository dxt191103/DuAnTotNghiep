<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


<!-- Shopping Cart Section Begin -->
<section class="checkout-section spad">
	<div class="container">
		<div class="card-body">
			<div class="col row">
				<h5>${message} </h5>
				<c:forEach var="item" items="${CART_ITEMS}">
					<div class="col-6">
						<div class="form-group">
							<p>Customer Name</p>
							<c:if test="${!isLogin}">
								<a class="nav-link" href="/home/login">Account</a>
							</c:if>
							<c:if test="${isLogin}">
								<p>${fullname}</p>
								<ul class="sub-menu">
									<li><a class="text-danger" id="btnLogOff" href="/logout"
										title="">[Logout]</a></li>
								</ul>
							</c:if>

						</div>
						<div class="form-group">
							<p>Service Name</p>
							<p>${item.name}</p>

						</div>
						<div class="form-group">
							<p>Service Price</p>
							<p>${item.price}</p>

						</div>
						<div class="form-group">
							<p>Order Day</p>
							<p></p>

						</div>
						<div class="form-group">
							<label for="exampleFormControlSelect1">Order-Time Select</label>

						</div>

						<div class="form-group">
							<p>ToTal Price</p>
							<p name="total">${item.total}$$</p>

						</div>

					</div>
				</c:forEach>
				<div class="card-footer text-muted">

					<button type="submit" class="btn btn-danger">
						<a href="/home/pay">Pay</a>
					</button>

				</div>


			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->