<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./include/header.jsp" %>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	type="text/javascript"></script>
<!-- 위 부트스트랩 코어 입니다. -->

		<section>
			<!-- division디비전이라는 div 영역표시 태그 대신에 사용 -->
			<!-- 본문 슬라이드 영역 시작 -->
			<!-- 이미지를 불러오는 태그 img -->
			<!-- 경로:상대(./img/...),절대경로(/resources/sample/img/...) -->
			<!-- 태그안쪽에 지정한 스타일을 인라인스타일 -->
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="/resources/sample/img/main.jpg" class="d-block w-100"
							alt="메인이미지입니다.">
					</div>
					<div class="carousel-item">
						<img src="/resources/sample/img/chicken.jpg" class="d-block w-100"
							alt="치킨입니다.">
					</div>
					<div class="carousel-item">
						<img src="/resources/sample/img/pizzachicken.jpg"
							class="d-block w-100" alt="피자치킨사진입니다.">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</section>
		
		<%@ include file="./include/footer.jsp" %>