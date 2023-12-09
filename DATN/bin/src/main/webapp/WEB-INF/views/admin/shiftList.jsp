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
					Shift List
					<!--  <a href="/admin/staff/serviceControl"
									class="btn btn-success float-right">Add new staff</a>-->
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">ID</th>
							<th style="font-weight: bolder; font-size: 18px">Timeline</th>
							<th style="font-weight: bolder; font-size: 18px">Slot</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td>${item.timeline}</td>
								<td>${item.slot}</td>
								<td> 
									<a class='btn btn-warning btn-xs' style="font-size: 14px" href="shift/edit/${item.id}"> 
									<span class="glyphicon glyphicon-edit"></span> <i class="bi bi-pencil-square"></i></a> 
								<a href="shift/delete/${item.id}"
									style="font-size: 14px" class="btn btn-danger btn-xs"> <span
										class="glyphicon glyphicon-remove"></span> Delete
								</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/shift?p=0" class="btn btn-primary"><i class="bi bi-skip-backward-fill"></i></a>
					<a href="/admin/shift?p=${page.number-1}" class="btn btn-primary"><i class="bi bi-skip-start-fill"></i></a>
					<a href="/admin/shift?p=${page.number+1}" class="btn btn-primary"><i class="bi bi-skip-end-fill"></i></a>
					<a href="/admin/shift?p=${page.totalPages-1}"class="btn btn-primary"><i class="bi bi-skip-forward-fill"></i></a>
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