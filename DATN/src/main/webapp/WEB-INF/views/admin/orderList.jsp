<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Order List
					<!-- <a href="orderControl" class="btn btn-success float-right">Add
						New Order</a> -->
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">Order ID</th>
							<th style="font-weight: bolder; font-size: 18px">Username</th>
							<th style="font-weight: bolder; font-size: 18px">Create Date</th>
							<th style="font-weight: bolder; font-size: 18px">Address</th>
							<th style="font-weight: bolder; font-size: 18px">Order
								Detail</th>
							<th style="font-weight: bolder; font-size: 18px">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td>${item.account.username}</td>
								<td>${item.createDate}</td>
								<td>${item.address}</td>
								<td><a href="/admin/orderDetail?id=${item.id }"
									style="font-size: 14px">Order Detail</a></td>
								<td><a class='btn btn-danger btn-xs'
									style="font-size: 14px" href="order/delete/${item.id}"> <span
										class="glyphicon glyphicon-edit"></span> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/order?p=0" class="btn btn-primary">First</a> <a
						href="/admin/order?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/admin/order?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/admin/order?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS 19944 - Nguyễn Quốc Huy  </footer>

	<!-- End footer -->

</div>