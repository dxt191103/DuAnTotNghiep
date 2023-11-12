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
				<form:form name="qryform" id="qryform" action="/admin/staff"
					class="px-3" modelAttribute="item" method="post">
					<div class="card">
						<div class="card-header">
							<h3 class="alert alert-info">
								Staff Control <a href="/admin/staff"
									class="btn btn-success float-right">Staff List</a>
							</h3>
							<div class="bg-success text-light px-3">${message}</div>
						</div>
						<div class="card-body">
							<div class="col row">
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="id" path="id"
											 aria-describedby="usHid"
											placeholder="Product ID" />
										<small id="usHid" class="form-text text-muted">Product
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="name" class="form-control" id="name"
											path="name" aria-describedby="nameHid"
											placeholder="Product Name" />
										<small id="nameHid" class="form-text text-muted">Product
											Name is invalid</small>
									</div>
									
									<div class="form-group">
										<form:input type="date" class="form-control" id="birthday"
											 path="birthday" 
											aria-describedby="birthdayHid" placeholder="birthday" />
										<small id="createDateHid" class="form-text text-muted">Create
											birthday is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="name" class="form-control" id="address"
											path="Address" aria-describedby="addHid" placeholder="Address" />
										<small id="addHid" class="form-text text-muted">Address
											is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="name" class="form-control" id="phone"
											path="Phone" aria-describedby="phoneHid" placeholder="Phone" />
										<small id="phoneHid" class="form-text text-muted">Phone
											is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="file" class="form-control" id="image"
											path="image" aria-describedby="imageHid" placeholder="image" />
										<small id="imageHid" class="form-text text-muted">Image
											is invalid</small>
									</div>
									<!--  div class="form-group">
										<form:input type="text" class="form-control" id="image" path="image"
											 aria-describedby="usHid"
											placeholder="image ID" />
										<small id="usHid" class="form-text text-muted">image
											ID is invalid</small>
									</div>-->
									<div class="form-group">
										<form:input type="text" class="form-control" id="experience" path="experience"
											 aria-describedby="usHid"
											placeholder="experience ID" />
										<small id="usHid" class="form-text text-muted">experience
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="text" class="form-control" id="role" path="role.id"
											disabled="false" aria-describedby="usHid"
											placeholder="role ID" />
										<small id="usHid" class="form-text text-muted">Role
											is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="text" class="form-control" id="status" path="status"
											 aria-describedby="usHid"
											placeholder="status ID" />
										<small id="usHid" class="form-text text-muted">status
											ID is invalid</small>
									</div>
								</div>
							</div>







						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-primary "
								formaction="/admin/staff/create">Insert</button>
							<button type="submit" class="btn btn-warning"
								formaction="/admin/staff/update">Update</button>
							<button type="submit" class="btn btn-danger"
								formaction="/admin/staff/delete/${items.id}">Delete</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/staffControl">Reset</button>
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


