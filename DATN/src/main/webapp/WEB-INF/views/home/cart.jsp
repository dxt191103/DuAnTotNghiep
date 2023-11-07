<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text product-more">
					<a href="/home/index"><i class="fa fa-home"></i> Home</a> <a
						href="/home/shop">Shop</a> <span>Shopping Cart</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="cart-table">
					<table>
						<thead>
							<tr>
								<th>Image</th>
								<th class="p-name">Product Name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${cart.items}">
								<form action="/home/cart/update" method="post">
									<input type="hidden" name="id" value="${item.id}">
									<tr>
										<td class="cart-pic first-row"><img style="width: 80%; height: 8rem;" src="${item.image}" alt="" width=50%></td>
										<td class="cart-title first-row">
											<h5>${item.name }</h5>
										</td>
										<td class="p-price first-row"><fmt:formatNumber value="${item.price}" pattern="#,##0" /></td>
										<td style="width: 38px;">
											<div class="pt-4"">
												<a	class='btn btn-warning text-light btn-xs' style="width: 38px;" href="/home/cart/add/${item.id}">+ </a>
												<input name="qty" value="${item.qty}" min="0" onblur="this.form.submit()" class="text-center text-warning" style="width: 50px; height: 30px; font-size:18px; font-weight: bolder; border: none"> 
												<a class='btn btn-warning btn-xs text-light' style="width: 38px;" href="/home/cart/sub/${item.id}"> - </a> 
											</div>
										</td>
										<td class="total-price first-row"><fmt:formatNumber value="${item.price * item.qty}" pattern="#,##0" /></td>
										<td class="close-td first-row"><a
											class='btn btn-xs text-danger' style="font-weight: bolder"
											href="/home/cart/remove/${item.id}"><span
												class="glyphicon glyphicon-trash"></span> Remove</a></td>
									</tr>
								</form>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<div class="cart-buttons">
							<a href="shop" class="primary-btn continue-shop">Continue
								shopping</a> <a href="/home/cart/clear" class="primary-btn up-cart">Clear
								cart</a>
						</div>
					</div>
					<div class="col-lg-4 offset-lg-4">
						<div class="proceed-checkout">
							<ul>
								<li class="cart-total">Total <span><td><fmt:formatNumber value="${cart.total}" pattern="#,##0" /></td></span></li>
							</ul>
							<c:if test="${!isLogin}">
								<a href="/home/login" class="proceed-btn">PROCEED TO CHECK OUT</a>
							</c:if>
							<c:if test="${isLogin}">
								<a href="/home/checkout" class="proceed-btn">PROCEED TO CHECK OUT</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->