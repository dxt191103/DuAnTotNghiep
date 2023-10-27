<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text product-more">
						<a href="./home.html"><i class="fa fa-home"></i> Home</a> <a
							href="./shop.html">Shop</a> <span>Detail</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->

	<!-- Product Shop Section Begin -->
	<section class="product-shop spad page-details">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="filter-widget">
						<h4 class="fw-title">Categories</h4>
						<ul class="filter-catagories">
							<li><a href="/home/brand?field1=1000">DELL</a></li>
							<li><a href="/home/brand?field1=1001">MACKBOOK</a></li>
							<li><a href="/home/brand?field1=1002">ACER</a></li>
							<li><a href="/home/brand?field1=1003">ASUS</a></li>
							<li><a href="/home/brand?field1=1004">HP</a></li>
							<li><a href="/home/brand?field1=1005">MSI</a></li>
							<li><a href="/home/brand?field1=1006">LENOVO</a></li>
							<li><a href="/home/brand?field1=1007">MICROSOFT</a></li>
							<li><a href="/home/brand?field1=1008">LG</a></li>
							<li><a href="/home/brand?field1=1009">CHUWI</a></li>
							<li><a href="/home/brand?field1=1010">MASSTEL</a></li>
							<li><a href="/home/brand?field1=1011">GIGABYTE</a></li>
						</ul>
					</div>

					<div class="filter-widget">
					<h4 class="fw-title">Price</h4>
					<form action="/home/price" method="post">
						<div class="filter-range-wrap">
							<div class="range-slider">
								<div class="price-input">

									<input type="text" id="minamount" name="min"> <input
										type="text" id="maxamount" name="max">
								</div>
							</div>
							<div
								class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
								data-min="0" data-max="200">
								<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
							</div>
						</div>
						<button class="filter-btn" style="border: none">Filter</button>
					</form>
				</div>
				</div>


				<div class="col-lg-9">
					<div class="row">
						<div class="offset-lg-1 col-lg-5">
							<div >
								<img class="product-big-img img-fluid"
									src="${pr.image}" alt="">
							</div>
						</div>


						<div class="col-lg-6">
							<div class="product-details">
								<div class="pd-title">
									<h3>${pr.name}</h3>
								</div>
								<div class="pd-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<div class="pd-desc">
									<h4>
										Price: $${pr.price}
									</h4>
								</div>
								<div class="quantity">
									<a href="/home/cart/add/${pr.id }" class="primary-btn pd-cart">Add To Cart</a>
								</div>

								<div class="pd-share">
									<div class="p-code">SKU: ${pr.id}</div>
									<div class="pd-social">
										<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
											class="ti-twitter-alt"></i></a> <a href="#"><i
											class="ti-linkedin"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Shop Section End -->

<!-- Related Products Section End -->
    <div class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Related Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-slider owl-carousel">
	                    <c:forEach var="item" items="${WMitems}">
	                        <div class="product-item">
	                            <div class="pi-pic">
	                                <img src="/forUser/img/products/${item.image}" alt="">
	                                <div class="sale">Sale</div>
	                                <ul>
	                                    <li class="w-icon active"><a href="/home/cart/add/${item.id}"><i class="icon_cart_alt"></i></a></li>
	                                    <li class="quick-view"><a href="product/detail/${item.id}"">+ Quick View</a></li>
	                                </ul>
	                            </div>
	                            <div class="pi-text">
	                                <a href="#">
	                                    <h5>${item.name}</h5>
	                                </a>
	                                <div class="product-price">
	                                    ${item.price}$
	                                </div>
	                            </div>
	                        </div>
	                    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Related Products Section End -->


	