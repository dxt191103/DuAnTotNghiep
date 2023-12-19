<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
.textContainer {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	max-width: 300px;
}

body {
	margin: 0;
	font-family: Arial, sans-serif;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 400px;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.login-container input[type=text], .login-container input[type=password]
	{
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.login-container button {
	background-color: #333;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

.login-container button:hover {
	background-color: #ddd;
	color: black;
}
</style>
<!-- Slideshow -->
<section class="page-wrapper">
	<!-- pricing plan -->

	<div class="pricing-plan container">
		<div class="spacer-clearfix" style="height: 80px;"></div>
		<div class="row">
			<div class="heading col-12">
				<div class="main-heading section-title" style="color: black;">pricing
					plan</div>
				<div class="sub-heading" style="color: black;">
					<p>Welcome to the Natuspa Day Med Spa! A wellness luxury spa
						centerdedicatedto inspiring Life in Balance.</p>
				</div>
			</div>
			<div class="spacer-clearfix" style="height: 40px;"></div>
			<ul class="pricing-menu col-12">
				<c:forEach var="item" items="${page.content}">
					<li class="pricing-item all facial massage"><span class="logo"><a
							style="color: #4da92e;"
							onclick="openModal()"><i class="natuspa-icon-oil"></i> </a></span>
						<div class="heading">
							<h4 id="name">${item.name}</h4>
							<div class="description textContainer">
								${item.descripsion}</div>
						</div> <span class="price">$${item.price}</span></li>
				</c:forEach>

				<div id="myModal" class="modal">
					<!-- Modal content -->
					<div class="modal-content">
						<span class="close" onclick="closeModal()">&times;</span>
						<div class="login-container">

							<form>
								<div class="col-md-6 col-lg-6 col-xl-6">
									<h5 id="nameModel"></h5>
									<div id="descripModel" class="mb-4 mb-md-0" style="width: 400px">
										</div>
								</div>
								<button class="btn btn-outline-primary btn-sm mt-2"
									type="button">
									<a href="/home/add/${item.id}">Add to wishlist</a>
								</button>
							</form>
						</div>
					</div>

				</div>
				<!-- <li class="pricing-item all massage treatments">
                        <span class=" logo"><i class="natuspa-icon-stone"></i></span>
                        <div class="heading">
                            <h4>Massage Stone</h4>
                            <div class="description">Lorem ipsum dolor sit amet ...</div>
                        </div>
                        <span class="price">$99.99</span>
                    </li>
                    <li class="pricing-item all nail treatments waxing">
                        <span class="logo"><i class="natuspa-icon-polish"></i></span>
                        <div class="heading">
                            <h4>Nail Care</h4>
                            <div class="description">Lorem ipsum dolor sit amet ...</div>
                        </div>
                        <span class="price">$25.95</span>
                    </li>
                    <li class="pricing-item all treatments massage">
                        <span class="logo"><i class="natuspa-icon-massage-1"></i></span>
                        <div class="heading">
                            <h4>Body Treatments</h4>
                            <div class="description">Lorem ipsum dolor sit amet ...</div>
                        </div>
                        <span class="price">$105.5</span>
                    </li>
                    <li class="pricing-item all facial waxing nail">
                        <span class="logo"><i class="natuspa-icon-cramp"></i></span>
                        <div class="heading">
                            <h4>Vein Sclerotherapy</h4>
                            <div class="description">Lorem ipsum dolor sit amet ...</div>
                        </div>
                        <span class="price">$73.95</span>
                    </li>
                    <li class="pricing-item all facial massage">
                        <span class="logo"><i class="natuspa-icon-facial-treatment"></i></span>
                        <div class="heading">
                            <h4>Derm Young Facial</h4>
                            <div class="description">Lorem ipsum dolor sit amet ...</div>
                        </div>
                        <span class="price">$63.35</span>
                    </li>
                    <li class="pricing-item all waxing"><span class="logo"><i class="natuspa-icon-depilation"></i></span>
                        <div class="heading">
                            <h4>Natural Waxing</h4>
                            <div class="description">Lorem ipsum dolor sit amet ...</div>
                        </div>
                        <span class="price">$55.95</span>
                    </li>
                    <li class="pricing-item all treatments">
                        <span class="logo"><i class="natuspa-icon-spa-1"></i></span>
                        <div class="heading">
                            <h4>Express Treatments</h4>
                            <div class="description">Lorem ipsum dolor sit amet ...</div>
                        </div>
                        <span class="price">$83.55</span>
                    </li> -->
			</ul>
			<span id="filter-option"></span>
		</div>
		<div class="spacer-clearfix" style="height: 60px;"></div>
	</div>
	<!-- appointment & form section -->
	<div class="appointment-section container-fluid">
		<div class="services-section container" id="services">
		
  <div class="container p-3">

    <div class="row justify-content-center" >
    
      <div class="col-md-12 col-xl-10 " >
      <c:forEach var="item" items="${page.content}">
        <div class="card shadow-0 border rounded-3 " >
        
          <div class="card-body p-4" >
            <div class="row ">
            
              <div class="col-md-12 col-lg-3 col-xl-3 mb-4 mb-lg-0">
                <div class="bg-image hover-zoom ripple rounded ripple-surface">
                  <img src="/forUser/imgs/Service/${item.image}" alt="" width=200px>
                  <a href="#!">
                    <div class="hover-overlay">
                      <div class="mask" style="background-color: rgba(253, 253, 253, 0.15);"></div>
                    </div>
                  </a>
                </div>
              </div>
              <div class="col-md-6 col-lg-6 col-xl-6">
                <h5>${item.name}</h5>
                <div class="mb-4 mb-md-0" style="width: 400px">
                  ${item.descripsion}
                </div>
              </div>
              <div class="col-md-6 col-lg-3 col-xl-3 border-sm-start-none border-start">
                <div class="d-flex flex-row align-items-center mb-1">
                  <h4 class="mb-1 me-1">${item.price}$</h4>
                </div>
                <div class="d-flex flex-column mt-4">
                <c:if test="${!isLogin}">
								<a href="/home/login" class="proceed-btn">Add to wishlist</a>
							</c:if>
							<c:if test="${isLogin}">
								<a href="/home/cart/add/${item.id}">Add to wishlist</a>
							</c:if>                             
                </div>
              </div>
            </div>
          </div>
          
        </div>
         </c:forEach>
      </div>
      <div class="text-center p-2">
			<a href="/home/services?p=0" class="btn btn-info btn-circle btn-lg" style="width: 50px;"><i class="bi bi-skip-backward-fill"></i></a>
			<a href="/home/services?p=${page.number-1}" class="btn btn-info btn-circle btn-lg"><i class="bi bi-skip-start-fill"></i></a>
			<a href="/home/services?p=${page.number+1}" class="btn btn-info btn-circle btn-lg"><i class="bi bi-skip-end-fill"></i></a>
			<a href="/home/services?p=${page.totalPages-1}" class="btn btn-info btn-circle btn-lg" style="width: 50px"><i class="bi bi-skip-forward-fill"></i></a>

	<!-- day spa packages -->
	<div class="spa-packages container-fluid">
		<div class="spacer-clearfix" style="height: 70px;"></div>
		<div class="container">
			<div class="row">
				<div class="heading col-12">
					<h2 class="main-heading section-title">Day Spa Packages</h2>
					<div class="sub-heading">
						<p>Welcome to the Natuspa Day Med Spa! A wellness luxury spa
							centerdedicatedto inspiring Life in Balance.</p>
					</div>
				</div>
				<div class="package-box col-lg-4 col-md-6 col-sm-12">
					<h2 class="section-title name-price-package">
						basic package<br> <span class="price">$369</span>
					</h2>
					<ul class="features">
						<li class="feature-item">Deep Tissue Massage</li>
						<li class="feature-item">Sandy Beach Scrub</li>
						<li class="feature-item">Essential Treatment Facial</li>
						<li class="feature-item"><del>Spa Manicure & Pedicure</del></li>
						<li class="feature-item"><del>Complimentary lunch</del></li>
					</ul>
					<a class="link-text text-linear-effect purchase-btn">purchase</a>
				</div>
				<div class="package-box center col-lg-4 col-md-6 col-sm-12">
					<h2 class="section-title name-price-package">
						COUPLE'S PACKAGE<br> <span class="price">$595</span>
					</h2>
					<ul class="features">
						<li class="feature-item">Deep Tissue Massage</li>
						<li class="feature-item">Sandy Beach Scrub</li>
						<li class="feature-item">Essential Treatment Facial</li>
						<li class="feature-item">Complimentary lunch</li>
						<li class="feature-item"><del>Spa Manicure & Pedicure</del></li>
						<li class="feature-item">Epsom Salt float therapy</li>
					</ul>
					<a class="link-text text-linear-effect purchase-btn">purchase</a>
				</div>
				<div class="package-box col-lg-4 col-md-6 col-sm-12">
					<h2 class="section-title name-price-package">
						special package<br> <span class="price">$769</span>
					</h2>
					<ul class="features">
						<li class="feature-item">Deep Tissue Massage</li>
						<li class="feature-item">Sandy Beach Scrub</li>
						<li class="feature-item">Essential Treatment Facial</li>
						<li class="feature-item">Spa Manicure & Pedicure</li>
						<li class="feature-item">Complimentary lunch</li>
					</ul>
					<a class="link-text text-linear-effect purchase-btn">purchase</a>
				</div>
			</div>
		</div>
		<div class="spacer-clearfix" style="height: 80px;"></div>
	</div>

</section>


<script>
	// Open the modal
	function openModal() {	
		document.getElementById('myModal').style.display = 'block';
	}

	// Close the modal
	function closeModal() {
		document.getElementById('myModal').style.display = 'none';
	}

	// Close the modal if the user clicks outside of it
	window.onclick = function(event) {
		var modal = document.getElementById('myModal');
		if (event.target == modal) {
			closeModal();
		}
	}
	
	const textContainers = document.querySelectorAll('.textContainer');

	textContainer.addEventListener('click', function() {
	  textContainer.style.maxWidth = '600px'; // Thay đổi giá trị mới ở đây
	});


</script>