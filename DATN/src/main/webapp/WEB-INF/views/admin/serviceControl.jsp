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
				<form:form name="qryform" id="qryform" action="/admin/service"
					class="px-3" modelAttribute="item" method="post">
					<div class="card">
						<div class="card-header">
							<h3 class="alert alert-info">
								Service Control <a href="/admin/service"
									class="btn btn-success float-right">Service List</a>
							</h3>
							<div class="bg-success text-light px-3">${message }</div>
						</div>
						<div class="card-body">
							<div class="col row">
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="id" path="id"
											aria-describedby="usHid"
											placeholder="Service ID" />
										<small id="usHid" class="form-text text-muted">Service
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="name" class="form-control" id="name"
											path="name" aria-describedby="nameHid"
											placeholder="Service Name" />
										<small id="nameHid" class="form-text text-muted">Service
											Name is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="price" class="form-control" id="price"
											path="price" aria-describedby="priceHid"
											placeholder="Price" />
										<small id="priceHid" class="form-text text-muted">Service
											Price is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="time" class="form-control" id="time"
											path="time" aria-describedby="timeHid"
											placeholder="Time" />
										<small id="timeHid" class="form-text text-muted">Service
											Time is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="status" class="form-control" id="status"
											path="status" aria-describedby="statusHid"
											placeholder="Status" />
										<small id="statusHid" class="form-text text-muted">Service
											Status is invalid</small>
									</div>
									<div class="form-group">
										<form:textarea type="descripsion" class="form-control" id="descripsion"
											path="descripsion" aria-describedby="descripsionHid"
											placeholder="descripsion" />
										<small id="descripsionHid" class="form-text text-muted">Service
											Descripsion is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="file" class="form-control" id="image"
											path="image" aria-describedby="imageHid" placeholder="image" />
										<small id="imageHid" class="form-text text-muted">Image
											is invalid</small>
									</div>
									
								</div>
							</div>







						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-primary "
								formaction="/admin/service/create">Insert</button>
							<button type="submit" class="btn btn-warning"
								formaction="/admin/service/update">Update</button>
							<button type="submit" class="btn btn-danger"
								formaction="/admin/service/delete/${items.id}">Delete</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/serviceControl">Reset</button>
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


