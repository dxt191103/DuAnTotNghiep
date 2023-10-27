<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text product-more">
					<a href="/home/index"><i class="fa fa-home"></i> Home</a>
					<a href="/home/shop">Shop</a> <span>My Order Detail</span>
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
								<th>No.</th>
								<th>Product Image</th>
								<th>Product ID</th>
								<th>Product Name</th>
								<th>Product Price</th>
								<th>Quantity</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${page.content}">
								<tr>
									<td class="p-price text-dark">${i=i+1}</td>
									<td><img src="${item.product.image}"
										alt="" width=50% /></td>
									<td>${item.product.id}</td>
									<td>${item.product.name}</td>
									<td>$${item.product.price}</td>
									<td>${item.quantity }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->
