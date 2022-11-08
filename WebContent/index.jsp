<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<%@ include file="head.jsp" %>
</head>
<body>
<%@ include file="header.jsp" %>
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="./img/main1.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="./img/main2.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="./img/main3.jpg" class="d-block w-100" alt="...">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	<div class="container" id="content" >
	
		<div class="row featurette" style="margin-top:100px;" >
	      <div class="col-md-7" style="float:right;">
	        <h2 class="featurette-heading fw-normal lh-1" >Solutions & Resources</h2>
	        <p class="lead" style="float:right;">업계 최초로 개발된 배달전용<br>프라이 특수코팅 사용으로 신기술 구현<br>겉은 바삭하고 속은 촉촉하게!</p>
	      </div>
	      <div class="col-md-5">
	        <img src="./img/main4.jpg" class="d-block w-100" alt="...">
	      </div>
	    </div>
	    
	    <div class="row featurette" style="margin-top:100px;" >
	      <div class="col-md-5">
	        <img src="./img/main5.jpg" class="d-block w-100" alt="...">
	      </div>
	      <div class="col-md-7">
	        <h2 class="featurette-heading fw-normal lh-1">Solutions & Resources</h2>
	        <p class="lead">업계 최초로 개발된 배달전용<br>프라이 특수코팅 사용으로 신기술 구현<br>겉은 바삭하고 속은 촉촉하게!</p>
	      </div>
	    </div>
	    
	    <h1 style="text-align:center;">Our Products</h1>
	    
		<div class="album py-5 bg-light">
		    <div class="container">
		      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
		        <div class="col">
		          <div class="card shadow-sm">
		            <img src="./img/main6.png" class="d-block w-100" alt="...">
		            <div class="card-body">
		              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
		                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
		                </div>
		                <small class="text-muted">9 mins</small>
		              </div>
		            </div>
		          </div>
		        </div>
		        <div class="col">
		          <div class="card shadow-sm">
		            <img src="./img/main7.png" class="d-block w-100" alt="...">
		            <div class="card-body">
		              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
		                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
		                </div>
		                <small class="text-muted">9 mins</small>
		              </div>
		            </div>
		          </div>
		        </div>
		        <div class="col">
		          <div class="card shadow-sm">
		            <img src="./img/main8.png" class="d-block w-100" alt="...">
		            <div class="card-body">
		              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
		                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
		                </div>
		                <small class="text-muted">9 mins</small>
		              </div>
		            </div>
		          </div>
		        </div>
		
		        <div class="col">
		          <div class="card shadow-sm">
		            <img src="./img/main9.png" class="d-block w-100" alt="...">
		            <div class="card-body">
		              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
		                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
		                </div>
		                <small class="text-muted">9 mins</small>
		              </div>
		            </div>
		          </div>
		        </div>
		        <div class="col">
		          <div class="card shadow-sm">
		            <img src="./img/main10.png" class="d-block w-100" alt="...">
		            <div class="card-body">
		              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
		                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
		                </div>
		                <small class="text-muted">9 mins</small>
		              </div>
		            </div>
		          </div>
		        </div>
		        <div class="col">
		          <div class="card shadow-sm">
		            <img src="./img/main11.png" class="d-block w-100" alt="...">
		            <div class="card-body">
		              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
		                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
		                </div>
		                <small class="text-muted">9 mins</small>
		              </div>
		            </div>
		          </div>
		        </div>
		       </div>
		      </div>
		     </div>
	  
	  		<div class="container marketing">	  		

		    <!-- Three columns of text below the carousel -->
		    <h1 style="text-align:center;">Recommend</h1>
		    
		    
		    <div class="row">
		      <div class="col-lg-4">
		        <img src="./img/main12.jpg" class="d-block w-100" alt="...">
		        <h2 class="fw-normal">Heading</h2>
		        <p>Some representative placeholder content for the three columns of text below the carousel. This is the first column.</p>
		      </div><!-- /.col-lg-4 -->
		      <div class="col-lg-4">
		        <img src="./img/main13.jpg" class="d-block w-100" alt="...">
		        <h2 class="fw-normal">Heading</h2>
		        <p>Another exciting bit of representative placeholder content. This time, we've moved on to the second column.</p>
		      </div><!-- /.col-lg-4 -->
		      
		    </div><!-- /.row -->
			
			<h1 style="text-align:center;">Simplot Video</h1>
			
<!-- 			<iframe width="1280" height="600" src="https://www.youtube.com/embed/926q8cMLaKk" title="J.R. Simplot Company: Cultivating a World of Possibilities" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
 -->			
			
		    <!-- START THE FEATURETTES -->
		    <h1 style="text-align:center;">News & Event</h1>
		
		    <hr class="featurette-divider">
		
		    <div class="row featurette">
		      <div class="col-md-7">
		        <h2 class="featurette-heading fw-normal lh-1">심플로트 블루리본 슈스트링 출시</h2>
		        <p class="lead">
		        	블루리본(Blue Ribbon)은 감자 본연의 맛은 살리고 PXLF(Premium Extra Long Fancy)의 긴 길이감을 자랑하는  프리미엄 라인의 프렌치프라이입니다.<br>
					정통 감자튀김인 블루리본 슈스트링을 다양한 메뉴에 활용해보세요.<br>
					제품이 궁금하시거나 샘플을 받고자 하신다면 지금 바로 게시판에 신청 해주세요.
				</p>
		      </div>
		      <div class="col-md-5">
		        <img src="./img/main14.png" class="d-block w-100" alt="...">
		      </div>
		    </div>
		
		    <hr class="featurette-divider">
		
		    <div class="row featurette">
		      <div class="col-md-7 order-md-2">
		        <h2 class="featurette-heading fw-normal lh-1">해피 프렌치프라이데이!</h2>
		        <p class="lead">내셔널프렌치프라이데이(National French Fry Day)를 아시나요?

미국에서는 매년 7월 13일을 프렌치프라이데이로 지정하여 감자튀김을 마음껏 먹고 즐기고 있습니다.

이날은 어느 레스토랑이나 QSR을 가든 감자튀김을 무료로 먹거나 시식 해 볼 수 있습니다. 

그만큼 프렌치 프라이의 인기는 독보적입니다. 



심플로트도 미국의 NO.1 냉동감자 브랜드인 만큼 프렌치프라이 데이 행사를 같이 축하하고 있습니다.

지금 바로 심플로트를 통해 다양한 감자메뉴를 만나보실 수 있습니다. 

무료 샘플이 필요하시다면 고객센터나 게시판을 통해 연락 주세요. 

</p>
		      </div>
		      <div class="col-md-5 order-md-1">
		        <img src="./img/main15.jpg" class="d-block w-100" alt="...">
		      </div>
		    </div>
		
		    <hr class="featurette-divider">
		
		    <div class="row featurette">
		      <div class="col-md-7">
		        <h2 class="featurette-heading fw-normal lh-1">공식 홈페이지 리뉴얼 오픈</h2>
		        <p class="lead">
					심플로트 코리아의 공식 홈페이지가 새롭게 단장하였습니다.

제품 뿐만 아니라 신제품 출시, 프로모션, 레서피 등 

보다 다양한 정보를 만나보실 수 있습니다. 

앞으로 심플로트 코리아에 많은 성원과 응원 부탁 드립니다!



Let's Make Something Great Together!!

심플로트는 항상 고객과 함께 합니다. 
				</p>
		      </div>
		      <div class="col-md-5">
		        <img src="./img/main16.jpg" class="d-block w-100" alt="...">
		      </div>
		    </div>
		
		    <hr class="featurette-divider">
		
		  </div>
	  
	</div>
<%@ include file="footer.jsp" %>
</body>
</html>