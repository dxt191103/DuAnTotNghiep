<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="/forAdmin/assets/images/favicon.png">
<title>Matrix Template - The Ultimate Multipurpose admin
	template</title>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- Custom CSS -->
<link href="/forAdmin/assets/libs/flot/css/float-chart.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="/forAdmin/dist/css/style.min.css" rel="stylesheet">


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>

<body>
	<!-- Main wrapper - style you can find in pages.scss -->
	<div id="main-wrapper">
		<tiles:insertAttribute name="headerAdmin" />
		<tiles:insertAttribute name="sidebarAdmin" />
		<tiles:insertAttribute name="bodyAdmin" />
	</div>
	<!-- End Wrapper -->



	<!-- All Jquery -->

	<script src="/forAdmin/assets/libs/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="/forAdmin/assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="/forAdmin/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="/forAdmin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="/forAdmin/assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="/forAdmin/dist/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="/forAdmin/dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="/forAdmin/dist/js/custom.min.js"></script>
	<!--This page JavaScript -->
	<!-- <script src="dist/js/pages/dashboards/dashboard1.js"></script> -->
	<!-- Charts js Files -->
	<script src="/forAdmin/assets/libs/flot/excanvas.js"></script>
	<script src="/forAdmin/assets/libs/flot/jquery.flot.js"></script>
	<script src="/forAdmin/assets/libs/flot/jquery.flot.pie.js"></script>
	<script src="/forAdmin/assets/libs/flot/jquery.flot.time.js"></script>
	<script src="/forAdmin/assets/libs/flot/jquery.flot.stack.js"></script>
	<script src="/forAdmin/assets/libs/flot/jquery.flot.crosshair.js"></script>
	<script
		src="/forAdmin/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
	<script src="/forAdmin/dist/js/pages/chart/chart-page-init.js"></script>
</body>

</html>