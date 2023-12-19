<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- Breadcrumb Section Begin -->

<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<!-- Shopping Cart Section Begin -->
<section class="h-100 h-custom" style="background-color: #eee;">
	<div class="row">
		<div class="col-6 offset-3">
		<form action="/home/param" method="post">
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

						<c:forEach var="item" items="${CART_ITEMS}">
							<div class="col-6">
								<div class="form-group">
									<p>Customer Name</p>
									<c:if test="${isLogin}">
										<input type="text" style="border: none;" name="cusname" value="${fullname}" readonly>
										<input type="hidden" style="border: none;" name="name" value="${username}" readonly>
									</c:if>

								</div>
								<div class="form-group">
									<input type="hidden" style="border: none;" name="id" value="${item.id}" readonly>
									<p>Service Name</p>
									<input type="text" style="border: none;" name="sername" value="${item.name}" readonly>

								</div>
								<div class="form-group">
									<p>Service Price</p>
									<input type="text" style="border: none;" name="price" value="${item.price}" readonly>

								</div>
								<div class="form-group">
									<p>Order Day</p>
									<input type="date" id="orderday" name="dayorder">

								</div>
								<div class="form-group">
									<label for="exampleFormControlSelect1">Order-Time
										Select</label> <select class="form-control"
										id="exampleFormControlSelect1" name="timeOrder">
										<option value="01">7:30</option>
										<option value="02">09:00</option>
										<option value="03">10:30</option>
										<option value="04">13:00</option>
										<option value="05">14:30</option>
										<option value="06">16:00</option>
										<option value="07">19:00</option>
										<option value="08">20:00</option>
									</select>
								</div>

								<div class="form-group">
									<p>ToTal Price</p>
									<input type="text" style="border: none;" name="total" value="${item.price}" readonly>

								</div>
								<div class="form-group">
									<p>Sale Code</p>
									<input type="text" id="sale" name="sale">

								</div>

							</div>
						</c:forEach>


					</div>
					<div class="card-footer text-muted">
						<button type="submit" class="btn btn-success">
							<a href="/home/cart/clear">Clear Cart</a>
						</button>
						</button>
						<button type="submit" class="btn btn-success">
							<a >Checkout</a>
						</button>
											
					</div>
				</div>
				</form>
			</div>
			
		</div>
</section>
<!-- Shopping Cart Section End -->