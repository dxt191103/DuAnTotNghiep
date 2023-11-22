<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- Slideshow -->
<section class="page-wrapper">
	<!-- service section -->
	<div class="services-section container" id="services">
	<section style="background-color: #eee;">
		
  <div class="container py-5">

    <div class="row justify-content-center mb-3">
    
      <div class="col-md-12 col-xl-10">
      
        <div class="card shadow-0 border rounded-3">
        <c:forEach var="item" items="${page.content}">
          <div class="card-body">
            <div class="row">
            
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
                <p class="text-truncate mb-4 mb-md-0">
                  ${item.descripsion}
                </p>
              </div>
              <div class="col-md-6 col-lg-3 col-xl-3 border-sm-start-none border-start">
                <div class="d-flex flex-row align-items-center mb-1">
                  <h4 class="mb-1 me-1">${item.price}</h4>
                </div>
                <div class="d-flex flex-column mt-4">
                  <button class="btn btn-primary btn-sm" type="button">Details</button>
                  <button class="btn btn-outline-primary btn-sm mt-2" type="button">
                    <a href="/home/add/${item.id}">Add to wishlist</a>            
                  </button>
                </div>
              </div>
            </div>
          </div>
           </c:forEach>
        </div>
      </div>
      <div class="text-center">
					<a href="/home/services?p=0" class="btn btn-primary 10">First</a>
					<a href="/home/services?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/home/services?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/home/services?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
    </div>
    </div>
    
  </div>
</section>
	</div>

	<!-- appointment & form section -->
	<div class="appointment-section container-fluid">
		<div class="container">
			<div class="row">
				<div class="spacer-clearfix" style="height: 90px;"></div>
				<div class="heading col-12">
					<div class="pre-heading">Make an appointment</div>
					<div class="main-heading">
						premium<br>Collection
					</div>
					<div class="sub-heading">Up to 50% Off Sale</div>
				</div>
				<div class="spacer-clearfix" style="height: 60px;"></div>
				<div class="appointment-form col-12">
					<form action="/action_page.php">
						<div class="row">
							<div class="form-input col-lg-4 col-md-6 col-sm-12 your-name">
								<input type="text" name="name" id="name" placeholder="Full Name">
								<div class="error">
									( <span>*</span> )
								</div>
							</div>
							<div class="form-input col-lg-4 col-md-6 col-sm-12 your-email">
								<input type="text" name="email" id="email" placeholder="E-mail">
								<div class="error">
									( <span>*</span> )
								</div>
							</div>
							<div
								class="form-input col-lg-4 col-md-6 col-sm-12 your-phone-number">
								<input type="text" name="phone-number" id="phone-number"
									placeholder="Phone Number">
								<div class="error">
									( <span>*</span> )
								</div>
							</div>
							<div
								class="form-input col-lg-4 col-md-6 col-sm-12 preferred-date">
								<input type="text" name="preferred-date" id="datepicker"
									placeholder="Preferred Date" autocomplete="off">
								<div class="error">
									( <span>*</span> )
								</div>
							</div>
							<div class="form-input col-lg-4 col-md-6 col-sm-12 your-service">
								<div class="current-option" data-value="0">Type Of
									Services</div>
								<div class="error">
									( <span>*</span> )
								</div>
								<span class="dropdown-icon"><i
									class="fal fa-chevron-down down"></i></span>
								<ul class="option-menu">
									<li class="option" data-value="0">Type Of Services</li>
									<li class="option" data-value="1">Natural Waxing</li>
									<li class="option" data-value="1">Signature Massage</li>
									<li class="option" data-value="1">Natural Nails Care</li>
									<li class="option" data-value="1">Body Treatments</li>
									<li class="option" data-value="1">Derm Young Facial</li>
								</ul>
							</div>
							<div class="form-input col-lg-4 col-md-6 col-sm-12 submit-btn">
								<input value="APPOINTMENT NOW" id="appointment-submit"
									name="submit" class="btn book-now-btn" disabled="disabled"
									style="opacity: 1;">
							</div>
						</div>
					</form>
				</div>
				<div class="spacer-clearfix" style="height: 80px;"></div>
			</div>
		</div>
	</div>

	<!-- team section -->
	<div class="team container">
		<div class="spacer-clearfix" style="height: 70px;"></div>
		<div class="heading">
			<h2 class="section-title">our happy team</h2>
			<div class="sub-heading">
				<p>Natuspa is a full service salon with experts in body
					services, nail care, massage, waxing, skin care, and other
					treatments.</p>
			</div>
		</div>
		<div class="spacer-clearfix" style="height: 65px;"></div>
		<div class="team-slider">
			<div class="team-item">
				<img src="/forUser/imgs/team/person-1-370x450.jpg" alt="Person-1">
				<div class="infomation">
					<h4 class="name">Emille Jenifer</h4>
					<div class="position">Massagist</div>
				</div>
				<ul class="social-media-icons">
					<li class="social-media"><a class="social-popup-icon"
						target="_blank"> <i class="fab fa-linkedin-in"></i>
					</a></li>
					<li class="social-media"><a
						href="https://fb.com/tuannguyentn2504" class="social-popup-icon"
						target="_blank"> <i class="fab fa-facebook-f"></i>
					</a></li>
					<li class="social-media"><a class="social-popup-icon"
						target="_blank"> <i class="fab fa-twitter"></i>
					</a></li>
				</ul>
			</div>
			<div class="team-item">
				<img src="/forUser/imgs/team/person-2-370x450.jpg" alt="Person-2">
				<div class="infomation">
					<h4 class="name">Marsha Hoffman</h4>
					<div class="position">makeup expert</div>
				</div>
				<ul class="social-media-icons">
					<li class="social-media"><a class="social-popup-icon"
						target="_blank"> <i class="fab fa-linkedin-in"></i>
					</a></li>
					<li class="social-media"><a
						href="https://fb.com/tuannguyentn2504" class="social-popup-icon"
						target="_blank"> <i class="fab fa-facebook-f"></i>
					</a></li>
					<li class="social-media"><a class="social-popup-icon"
						target="_blank"> <i class="fab fa-twitter"></i>
					</a></li>
				</ul>
			</div>
			<div class="team-item">
				<img src="/forUser/imgs/team/person-3-370x450.jpg" alt="Person-3">
				<div class="infomation">
					<h4 class="name">Emille Jenifer</h4>
					<div class="position">Massagist</div>
				</div>
				<ul class="social-media-icons">
					<li class="social-media"><a class="social-popup-icon"
						target="_blank"> <i class="fab fa-linkedin-in"></i>
					</a></li>
					<li class="social-media"><a
						href="https://fb.com/tuannguyentn2504" class="social-popup-icon"
						target="_blank"> <i class="fab fa-facebook-f"></i>
					</a></li>
					<li class="social-media"><a class="social-popup-icon"
						target="_blank"> <i class="fab fa-twitter"></i>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="spacer-clearfix" style="height: 90px;"></div>
	</div>
</section>


