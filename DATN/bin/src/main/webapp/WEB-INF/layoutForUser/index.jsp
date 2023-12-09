<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Natuspa - Beauty Salon & Spa Template</title>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/forUser/resource/css/style.css">
    <link rel="stylesheet" href="/forUser/resource/css/queries.css">
    <link rel="stylesheet" href="/forUser/resource/css/home-two.css">
    <link rel="stylesheet" href="/forUser/resource/css/queries-home-two.css">
    <link rel="stylesheet" href="/forUser/resource/css/page-blog-details.css">
    <link rel="stylesheet" href="/forUser/resource/css/animation.css">
    <!-- bootstrap 4 -->
    <link rel="stylesheet" href="/forUser/vendor/css/bootstrap.min.css">
    
    <!-- fontawesome -->
    <link rel="stylesheet" href="/forUser/vendor/fonts/fontawesome-5.0.13/css/all.css">
    <link rel="stylesheet" href="/forUser/vendor/fonts/natuspa-font/css/natuspa-icons.css">
    <!-- slick -->
    <link rel="stylesheet" href="/forUser/vendor/js/slick/slick.css">
    <link rel="stylesheet" href="/forUser/vendor/js/slick/slick-theme.css">
    <!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" /> -->
    <link rel="stylesheet" href="/forUser/vendor/js/datetimepicker-master/jquery.datetimepicker.css">
    <!-- magnific popup -->
    <link rel="stylesheet" href="/forUser/vendor/js/Magnific-Popup-master/magnific-popup.css">
    <!-- favicons -->
    <link rel="apple-touch-icon" sizes="76x76" href="/forUser/resource/favicons-2/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/forUser/resource/favicons-2/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/forUser/resource/favicons-2/favicon-16x16.png">
    <link rel="manifest" href="/forUser/resource/favicons-2/site.webmanifest">
    <link rel="mask-icon" href="/forUser/resource/favicons-2/safari-pinned-tab.svg" color="#5bbad5">
    <link rel="shortcut icon" href="/forUser/resource/favicons-2/favicon.ico">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-config" content="/forUser/resource/favicons-2/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <script>
	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 200,
			values : [0, 0],
			slide : function(event, ui) {
				$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
				$("#amount_start").val(ui.values[0]);
				$("#amount_end").val(ui.values[1]);
			}
		});
		/* $("#amount").val(
				"$" + $("#slider-range").slider("values", 0) + " - $"
						+ $("#slider-range").slider("values", 1)); */
	});
	
	function readURL(input) {
		  if (input.files && input.files[0]) {

		    var reader = new FileReader();

		    reader.onload = function(e) {
		      $('.image-upload-wrap').hide();

		      $('.file-upload-image').attr('src', e.target.result);
		      $('.file-upload-content').show();

		      $('.image-title').html(input.files[0].name);
		    };

		    reader.readAsDataURL(input.files[0]);

		  } else {
		    removeUpload();
		  }
		}

		function removeUpload() {
		  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
		  $('.file-upload-content').hide();
		  $('.image-upload-wrap').show();
		}
		$('.image-upload-wrap').bind('dragover', function () {
		        $('.image-upload-wrap').addClass('image-dropping');
		    });
		    $('.image-upload-wrap').bind('dragleave', function () {
		        $('.image-upload-wrap').removeClass('image-dropping');
		});
	</script>
    
</head><!--/head-->

<body class="preload">
	<tiles:insertAttribute name="header"/>
	<!-- HOME/ -->
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>
	
	
	<div class="modal-dialog-box" style="display: none;">
        <div class="inner">
            <div class="dialog-img"><img src="/forUser/imgs/popup-img.jpg" alt="Dialog Img" style="height: 410px;"></div>
            <span class="close-icon"><i class="fal fa-times"></i></span>
            <div class="content">
                <h5 class="pre-heading">Get Our Most</h5>
                <h3 class="heading">Exclusive Offers</h3>
                <p class="sub-heading">Get up to 60% Extra Off Your First Deal Use code WELCOME at checkout for 20%
                    Extra
                    Off Local & Getaways, or 10% Extra Off Goods.
                </p>
            </div>
        </div>
    </div>

    <!-- Js Plugins -->
    <script src="/forUser/vendor/js/jquery-v3.4.1.min.js"></script>
    <script src="/forUser/vendor/js/bootstrap.min.js"></script>
    <script src="/forUser/vendor/js/jquery.waypoints.min.js"></script>
    <!-- <script src="https://kit.fontawesome.com/7534282567.js" crossorigin="anonymous"></script> -->
    <script src="/forUser/vendor/js/slick/slick.min.js"></script>
    <!-- <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> -->
    <script src="/forUser/vendor/js/datetimepicker-master/build/jquery.datetimepicker.full.js"></script>
    <script src="/forUser/vendor/js/Magnific-Popup-master/jquery.magnific-popup.min.js"></script>

    <script src="/forUser/resource/js/script.js"></script>
</body>
</html>