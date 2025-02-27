<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- Breadcrumb Section Begin -->

<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="h-100 h-custom" style="background-color: #eee;">
	<div class="container py-5 h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100"
			style="background-color: #eee;"></div>
		<div class="col">
			<div class="card">
				<div class="card-body p-4">

					<div class="row">

						<div class="col-lg-7">
							<hr>

							<div
								class="d-flex justify-content-between align-items-center mb-4">
								<div>
									<p class="mb-1">Your cart</p>
								</div>
								<div>
									<p class="mb-0">
										<span class="text-muted">Sort by:</span> <a href="#!"
											class="text-body">price <i class="fas fa-angle-down mt-1"></i></a>
									</p>
								</div>
							</div>

							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">Name</th>
										<th scope="col">Price</th>
										<th scope="col">Qty</th>
										<th scope="col">Total</th>
									</tr>
								</thead>
								<tbody>
								<form action="/cart/update" medthot="post">
									
									<c:forEach var="item" items = "${CART_ITEMS}">
										<tr>
										<td name="id">${item.name}</td>
										<td>${item.price}</td>
										<td name="qty">${item.qty}</td>
										<td>${item.qty * item.price}</td>
										<td><a class="btn btn-primary btn-sm" href="/home/cart/remove/${item.id}"> <i class="bi bi-x-circle"></i></a></td>
										</tr>
										
										
									
									</c:forEach>
								</form>
									
								</tbody>
							</table>
							<hr/>
							<a class="btn btn-primary btn-sm" href="/home/cart/clear"> <i class="bi bi-x-circle"></i> Clear Cart</a>
							<a href="/home/services" class="text-body"><i
									class="fas fa-long-arrow-alt-left me-2"></i>Continue shopping</a>
							

						</div>
						<div class="col-lg-5">

							<div class="card  text-white rounded-3"
								style="background-color: #4da92e;">
								<div class="card-body">
									<div
										class="d-flex justify-content-between align-items-center mb-4">
										<h5 class="mb-0">Card details</h5>
										<img
											src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-6.webp"
											class="img-fluid rounded-3" style="width: 45px;" alt="Avatar">
									</div>

									<p class="small mb-2">Card type</p>
									<a href="#!" type="submit" class="text-white"><i
										class="fab fa-cc-mastercard fa-2x me-2"></i></a> <a href="#!"
										type="submit" class="text-white"><i
										class="fab fa-cc-visa fa-2x me-2"></i></a> <a href="#!"
										type="submit" class="text-white"><i
										class="fab fa-cc-amex fa-2x me-2"></i></a> <a href="#!"
										type="submit" class="text-white"><i
										class="fab fa-cc-paypal fa-2x"></i></a>

									<form class="mt-4">
										<div class="form-outline form-white mb-4">
											<input type="text" id="typeName"
												class="form-control form-control-lg" siez="17"
												placeholder="Cardholder's Name" /> <label
												class="form-label" for="typeName">Cardholder's Name</label>
										</div>

										<div class="form-outline form-white mb-4">
											<input type="text" id="typeText"
												class="form-control form-control-lg" siez="17"
												placeholder="1234 5678 9012 3457" minlength="19"
												maxlength="19" /> <label class="form-label" for="typeText">Card
												Number</label>
										</div>

										<div class="row mb-4">
											<div class="col-md-6">
												<div class="form-outline form-white">
													<input type="text" id="typeExp"
														class="form-control form-control-lg" placeholder="MM/YYYY"
														size="7" id="exp" minlength="7" maxlength="7" /> <label
														class="form-label" for="typeExp">Expiration</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-outline form-white">
													<input type="password" id="typeText"
														class="form-control form-control-lg"
														placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3"
														maxlength="3" /> <label class="form-label" for="typeText">Cvv</label>
												</div>
											</div>
										</div>

									</form>

									<hr class="my-4">

									<div class="d-flex justify-content-between">
										<p class="mb-2">Subtotal</p>
										<p class="mb-2">$4798.00</p>
									</div>


									<div class="d-flex justify-content-between mb-4">
										<p class="mb-2">Total(Incl. taxes)</p>
										<p class="mb-2">${total}</p>
									</div>

									<button type="button" class="btn btn-info btn-block btn-lg">
										<div class="d-flex justify-content-between">
											<span>${total}</span><span>Checkout <i
												class="fas fa-long-arrow-alt-right ms-2"></i></span>
										</div>
									</button>

								</div>

							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->