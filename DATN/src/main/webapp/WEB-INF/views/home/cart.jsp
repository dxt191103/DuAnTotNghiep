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
					<div class="bg-success text-light px-3">${message}</div>
				</div>
				<div class="card-body">
					<div class="col row">
						<c:forEach var="item" items="${CART_ITEMS}">
							<div class="col-6">
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
									<input type="date" id="orderday">

								</div>
								<div class="form-group">
									<label for="exampleFormControlSelect1">Oder-Time Select</label>
									<select class="form-control" id="exampleFormControlSelect1">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
										<option>8</option>
									</select>
								</div>
								<div class="form-group">
									<p>ToTal Price</p>
									<p>${item.price*item.qty} $$</p>

								</div>

							</div>
						</c:forEach>


					</div>
					<div class="card-footer text-muted">
						<button type="submit" class="btn btn-danger">
							<a href="/home/cart/clear">Clear Cart</a>
						</button>
						<button type="submit" class="btn btn-danger">
							<a href="/home/checkout">Checkout</a>
						</button>

					</div>
				</div>
			</div>
		</div>
</section>
<!-- Shopping Cart Section End -->