<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<!-- Slideshow -->
<section class="page-wrapper">
	<!-- service section -->
<style>
.btn-circle {
  width: 30px;
  height: 30px;
  text-align: center;
  padding: 6px 0;
  font-size: 12px;
  line-height: 1.428571429;
  border-radius: 15px;
}

.btn-circle.btn-lg {
  width: 50px;
  height: 50px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.33;
  border-radius: 25px;
}

.btn-circle.btn-xl {
  width: 70px;
  height: 70px;
  padding: 10px 16px;
  font-size: 24px;
  line-height: 1.33;
  border-radius: 35px;
}
.btn-circle span {
  margin: 0 -2rem;
}
</style>
</section>
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
                  <button class="btn btn-outline-primary btn-sm mt-2" type="button" name="id" id="id">
                    <a href="/home/cart/add/${item.id}">Add to wishlist</a>            
                  </button>
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
		</div>
    </div>
    </div>
    
  </div>
  </div>
	</div>

</section>


