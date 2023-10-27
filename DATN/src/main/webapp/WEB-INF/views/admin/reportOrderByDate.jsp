<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info"> Report Order By Date</h3>
				<div class="row px-3 py-1">
					<div class="col-3 alert alert-primary">
						<form action="/admin/reportOrderByDate" method="post">
							<div class="form-group">
								Form Date:<input type="text" class="form-control" name="firstDate" id="firstDate" aria-describedby="firstDateHid" placeholder="MM-dd-yyyy" />
							</div>
							<div class="form-group">
								To Date: <input type="text" class="form-control" name="lastDate" id="lastDate" aria-describedby="lastDateHid" placeholder="MM-dd-yyyy" />
							</div>
							<button type="submit" class="btn btn-primary ">Search</button>
						</form>
					</div>
					<div class="col-3 alert alert-info offset-6">
						<h3 class="text-center">Order</h3>
						<h5>From: <fmt:formatDate pattern = "MM-dd-yyyy" value = "${firstDate }" /></h5>
						<h5>To: <fmt:formatDate pattern = "MM-dd-yyyy" value = "${lastDate }" /></h5>
						<h5>Total: ${page.totalElements }</h5>
					</div>
				</div>

				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">No.</th>
							<th style="font-weight: bolder; font-size: 18px">Order ID</th>
							<th style="font-weight: bolder; font-size: 18px">Address</th>
							<th style="font-weight: bolder; font-size: 18px">Create Date</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0" />
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${i =i+1}</td>
								<td>${item.id }</td>
								<td>${item.address }</td>
								<td>${item.createDate }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<%-- <hr />
		<div class="text-center">
			<a href="/admin/reportOrderByDate?p=0" class="btn btn-primary">First</a>
			<a href="/admin/reportOrderByDate?p=${page.number-1}"
				class="btn btn-primary">Previous</a> <a
				href="/admin/reportOrderByDate?p=${page.number+1}"
				class="btn btn-primary">Next</a> <a
				href="/admin/reportOrderByDate?p=${page.totalPages-1}"
				class="btn btn-primary">Last</a>
		</div>
		<hr /> --%>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS 19944 - Nguyễn Quốc Huy  </footer>

	<!-- End footer -->

</div>