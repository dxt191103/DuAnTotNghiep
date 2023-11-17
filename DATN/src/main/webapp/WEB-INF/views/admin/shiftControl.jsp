<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-6 offset-3">
				<form:form name="qryform" id="qryform" action="/admin/shift"
					class="px-3" modelAttribute="item" method="post">
					<div class="card">
						<div class="card-header">
							<h3 class="alert alert-info">
								Shift Control <a href="/admin/shift"
									class="btn btn-success float-right">SHift List</a>
							</h3>
							<div class="bg-success text-light px-3">${message}</div>
						</div>
						<div class="card-body">
							<div class="col row">
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="id" path="id" />
										<small id="usHid" class="form-text text-muted">Shift
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="time" class="form-control" id="begintime"
											path="begintime" />
										<small id="timeHid" class="form-text text-muted">Shift Begin
											Time is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="time" class="form-control" id="endtime"
											path="endtime" />
										<small id="timeHid" class="form-text text-muted">Shift End
											Time is invalid</small>
									</div>
									
								</div>
							</div>







						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-primary "
								formaction="/admin/shift/create">Insert</button>
							<button type="submit" class="btn btn-warning"
								formaction="/admin/shift/update">Update</button>
							<button type="submit" class="btn btn-danger"
								formaction="/admin/shift/delete/${items.id}">Delete</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/shiftControl">Reset</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<!-- 
		Search
		<div class="row">
			<form >
				<div class="form-inline float-left">
					<label for="name">Name: &nbsp;</label> <input type="text"
						class="form-control" name="name" id="name"
						aria-describedby="naemHid" placeholder="">
					<button class="btn btn-outline-primary ml-2">Search</button>
				</div>
			</form>
		</div> -->


		<!-- footer -->

		<footer class="footer text-center"> &copy; PS 19944 - Nguyễn Quốc Huy  </footer>

		<!-- End footer -->

	</div>
</div>
<!-- End Page wrapper  -->


