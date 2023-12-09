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
				<form:form name="qryform" id="qryform" action="/admin/sale"
					class="px-3" modelAttribute="item" method="post">
					<div class="card">
						<div class="card-header">
							<h3 class="alert alert-info">
								Sale Control <a href="/admin/sale"
									class="btn btn-success float-right">Sale List</a>
							</h3>
							<div class="bg-success text-light px-3">${message}</div>
						</div>
						<div class="card-body">
							<div class="col row">
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="code" path="code"
											aria-describedby="usHid" placeholder="Sale ID" />
										<small id="usHid" class="form-text text-muted">Sale
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="number" class="form-control" id="percentPrice"
											path="percentPrice" aria-describedby="percentPriceHid"
											placeholder="Sale percentPrice"  />
										<small id="percentPriceHid" class="form-text text-muted">Sale
											Percent Price is invalid</small>
									</div>
							</div>

						</div>
						
						<div class="card-footer text-muted">
							<button type="button" class="btn btn-primary "
								data-toggle="modal" data-target="#insertModal">Insert</button>
							<button type="button" class="btn btn-warning" data-toggle="modal"
								data-target="#updateModal">Update</button>
							<button type="button" class="btn btn-danger" data-toggle="modal"
								data-target="#deleteModal">Delete</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/saleControl">Reset</button>
						</div>
						<div class="modal fade" id="insertModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Sale
											insert title</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">Are you sure about that ???</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">No</button>
										<button type="submit" formaction="/admin/sale/create"
											class="btn btn-primary">Yes</button>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="updateModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Sale
											update title</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">Are you sure about that ???</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">No</button>
										<button type="submit" formaction="/admin/sale/update"
											class="btn btn-primary">Yes</button>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="deleteModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Sale
											delete title</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">Are you sure about that ???</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">No</button>
										<button type="submit"
											formaction="/admin/sale/delete/${items.id}"
											class="btn btn-primary">Yes</button>
									</div>
								</div>
							</div>
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


		

		<!-- End footer -->

	</div>
</div>
<!-- End Page wrapper  -->


