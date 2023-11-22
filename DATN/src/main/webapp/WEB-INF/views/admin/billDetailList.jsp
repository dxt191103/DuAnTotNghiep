<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">BillDetail
								ID</th>
							<th style="font-weight: bolder; font-size: 18px">Service ID</th>
							<th style="font-weight: bolder; font-size: 18px">Service
								Name</th>
							<th style="font-weight: bolder; font-size: 18px">Service
								Price</th>
							<th style="font-weight: bolder; font-size: 18px">Bill ID</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td>${item.service.id}</td>
								<td>${item.service.name}</td>
								<td>$${item.service.price}</td>
								<td>${item.bill.id}</td>
							</tr>
						</c:forEach>
					</tbody>
				<%-- <hr />
				<div class="text-center">
					<a href="/admin/orderDetail?p=0" class="btn btn-primary">First</a>
					<a href="/admin/orderDetail?p=${page.number-1}"
						class="btn btn-primary">Previous</a> <a
						href="/admin/orderDetail?p=${page.number+1}"
						class="btn btn-primary">Next</a> <a
						href="/admin/orderDetail?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr /> --%>
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"></footer>

	<!-- End footer -->

</div>