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
				<h3 class="alert alert-info">Account List
					
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<!-- <th class ="p-0 m-0"   width="10%" style="font-weight: bolder; font-size: 18px">Photo</th> -->
							<th style="font-weight: bolder; font-size: 18px">Username</th>
						
							<th style="font-weight: bolder; font-size: 18px">Fullname</th>
							<th style="font-weight: bolder; font-size: 18px">Phone</th>
							<th style="font-weight: bolder; font-size: 18px">Email</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<%-- <td class ="px-0 m-0"  width="10%">
									<img src="/forAdmin/assets/images/users/${item.photo}" alt="" width="50%" class="img-fluid">
								</td> --%>
								<td>${item.username}</td>
								<td>${item.fullname}</td>
								<td>${item.phone}</td>
								<td>${item.email}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/account?p=0" class="btn btn-primary"><i class="bi bi-skip-backward-fill"></i></i></a> 
					<a	href="/admin/account?p=${page.number-1}" class="btn btn-primary"><i class="bi bi-skip-start-fill"></i></a>
					<a href="/admin/account?p=${page.number+1}" class="btn btn-primary"><i class="bi bi-skip-end-fill"></i></a>
					<a href="/admin/account?p=${page.totalPages-1}"	class="btn btn-primary"><i class="bi bi-skip-forward-fill"></i></a>
				</div>
				<hr />
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS 19944 - Nguyễn Quốc Huy </footer>

	<!-- End footer -->

</div>