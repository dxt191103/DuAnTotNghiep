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
					Sale List
					<a href="/admin/saleControl"
									class="btn btn-success float-right">Add new Sale</a>
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">Code</th>
							<th style="font-weight: bolder; font-size: 18px">Percent Price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.code}</td>
								<td>${item.percentPrice}</td>
								<td><a class='btn btn-warning btn-xs'
									style="font-size: 14px" href="/admin/sale/edit/${item.code}"> <span
										class="glyphicon glyphicon-edit"></span> <i
										class="bi bi-pencil-square"></i>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/sale?p=0" class="btn btn-primary 10"><i class="bi bi-skip-backward-fill"></i></a>
					<a href="/admin/sale?p=${page.number-1}" class="btn btn-primary"><i class="bi bi-skip-start-fill"></i></a>
					<a href="/admin/sale?p=${page.number+1}" class="btn btn-primary"><i class="bi bi-skip-end-fill"></i></a>
					<a href="/admin/sale?p=${page.totalPages-1}" class="btn btn-primary"><i class="bi bi-skip-forward-fill"></i></a>
				</div>
				
				<hr />
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS 19944 - Nguyễn
		Quốc Huy </footer>

	<!-- End footer -->

</div>