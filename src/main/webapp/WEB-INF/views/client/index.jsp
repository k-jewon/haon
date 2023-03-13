<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<jsp:include page="/WEB-INF/views/client/header.jsp" />
<main role="main">

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/img/1.jpg" width="100%" height="100%"
					title="1번째 슬라이드">
				<div class="container">
					<div class="carousel-caption"
						style="background: #000000; background: rgba(0, 0, 0, 0.4);">
						<h1>haon 홈페이지에 방문해주셔서 감사합니다.</h1>
						<p>아늑하고 편안한 시설에서 특별함을 즐겨보세요.</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/img/2.jpg" width="100%" height="100%"
					title="2번째 슬라이드" />
				<div class="container">
					<div class="carousel-caption"
						style="background: #000000; background: rgba(0, 0, 0, 0.4);">
						<h1>한옥 감성으로 입혀진 haon</h1>
						<p>가끔은 어디론가 훌쩍 떠나고 싶은 마음이 드신다면 힐링을 느껴보세요.</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/img/3.jpg" width="100%" height="100%"
					title="3번째 슬라이드" />
				<div class="container">
					<div class="carousel-caption"
						style="background: #000000; background: rgba(0, 0, 0, 0.4);">
						<h1>바쁜 일상을 벗어나 잔잔한 곳을 찾고 계시지는 않나요?</h1>
						<p>한옥만이 줄 수 있는 평온함을 만끽해보세요.</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/img/4.jpg" width="100%" height="100%"
					title="4번째 슬라이드" />
				<div class="container">
					<div class="carousel-caption"
						style="background: #000000; background: rgba(0, 0, 0, 0.4);">
						<h1>잠시 쉬고싶을때, 그럴때 있잖아요.</h1>
						<p>haon에서 행복한 추억을 담아가세요.</p>
					</div>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-target="#myCarousel" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-target="#myCarousel" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
		</button>
	</div>
	<!-- Marketing messaging and featurettes
  ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">
		<br>
		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-3">
				<a href="/roomList1"> <img class="img-thumbnail"
					src="resources/img/indexList1.jpg" width="250" height="250"
					title="무궁화 객실 사진" cursor="pointer" />
					<title>무궁화 자세히 보기</title>
				<rect width="100%" height="100%" fill="#777" /> <text x="50%"
						y="50%" fill="#777" dy=".3em"></text>
				</a>
				</svg>

				<h2>
					<a href="/roomList1" cursor="pointer">무궁화 
				</h2>
				<p class='main_list'>
					<a href="/roomList1" cursor="pointer"> 2인실로 적합하며, 욕실에는 전통
						느낌의 대형 편백나무 욕조가 있어 아늑하고 편안한 휴식을 즐기실 수 있습니다. </a>
				</p>
				<p>
					<a class="btn btn-secondary" href="/roomList1" title="무궁화 자세히 보기">자세히
						보기 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-3">
				<a href="/roomList2"> <img class="img-thumbnail"
					src="resources/img/indexList2.jpg" width="250" height="250"
					title="소나무 객실 사진" cursor="pointer" />
					<title>소나무 자세히 보기</title>
				<rect width="100%" height="100%" fill="#777" /> <text x="50%"
						y="50%" fill="#777" dy=".3em"></text>
				</a>
				</svg>

				<h2>
					<a href="/roomList2" cursor="pointer">소나무 
				</h2>
				<p class='main_list'>
					<a href="/roomList2" cursor="pointer"> 4인실로 적합하며, 일반 더블
						사이즈 보다 큰 더블 베드와 선택가능한 베개, 그리고 포근한 침구가 준비되어 있습니다. </a>
				</p>
				<p>
					<a class="btn btn-secondary" href="/roomList2" title="소나무 자세히 보기">자세히
						보기 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-3">
				<a href="/haon/roomList3"> <img class="img-thumbnail"
					src="resources/img/indexList3.jpg" width="250" height="250"
					title="사랑채 객실 사진" cursor="pointer" />
					<title>사랑채 자세히 보기</title>
				<rect width="100%" height="100%" fill="#777" /> <text x="50%"
						y="50%" fill="#777" dy=".3em"></text>
				</a>
				</svg>

				<h2>
					<a href="/roomList3" cursor="pointer">사랑채</a>
				</h2>
				<p class='main_list'>
					<a href="/roomList3" cursor="pointer"> 스위트룸으로 구성되어있으며, 한옥의
						운치를 더하여 특별히 모셔야 할 분이나 가족단위 고객에게 적합합니다. </a>
				</p>
				<p>
					<a class="btn btn-secondary" href="/roomList3" title="사랑채 자세히 보기"
						cursor="pointer">자세히 보기 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-3">
				<a href="/roomList4"> <img class="img-thumbnail"
					src="resources/img/indexList4.jpg" width="250" height="250"
					title="백두산 객실 사진" cursor="pointer" />
					<title>백두산 자세히 보기</title>
				<rect width="100%" height="100%" fill="#777" /> <text x="50%"
						y="50%" fill="#777" dy=".3em"></text>
				</a>
				</svg>

				<h2>
					<a href="/roomList4" cursor="pointer">백두산 
				</h2>
				<p class='main_list'>
					<a href="/roomList4" cursor="pointer"> 단체예약 전용객실이며, 2개의
						침실과 탁 트인 대청마루 그리고 앞, 뒤 마당까지 갖춰 넓은 한옥집을 연상케합니다. 서까래와 대들보가 보이는 천장은
						안정감을 줍니다. </a>
				</p>
				<p>
					<a class="btn btn-secondary" href="/roomList4" title="백두산 자세히 보기">자세히
						보기 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-3 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->
		<hr class="featurette-divider">
		<!-- /END THE FEATURETTES -->
		<h2>오시는 길</h2>
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">네비게이션</h4>
				<p class="card-text" title="네비게이션 확인하기">서울특별시 종로구 인사동12길 12 대일빌딩 7층, 15층 &nbsp;<a href="https://map.naver.com/v5/entry/place/13322326?c=15,0,0,0,dh" class="card-link">자세히 보기</a></p>
				<hr class="featurette-divider">
				<h4 class="card-title">지하철</h4>
				<p class="card-text" title="종로3가역부터 길찾기">종로3가역 5번출구 (도보 4분) &nbsp; <a href="https://map.naver.com/v5/directions/14136497.156949583,4519220.590502566,%EC%A2%85%EB%A1%9C3%EA%B0%80%EC%97%AD%205%ED%98%B8%EC%84%A0,534,SUBWAY_STATION/14136153.702924635,4519125.294401206,%ED%95%98%EC%9D%B4%EB%AF%B8%EB%94%94%EC%96%B4%EC%BB%B4%ED%93%A8%ED%84%B0%ED%95%99%EC%9B%90%20%EC%A2%85%EB%A1%9C%EC%BA%A0%ED%8D%BC%EC%8A%A4,13322326,PLACE_POI/-/walk/0?c=16,0,0,0,dh" class="card-link">자세히 보기</a></p>
				<p class="card-text" title="종각역부터 길찾기">종각역 3번출구 (도보 7분) &nbsp; <a href="https://map.naver.com/v5/directions/14135705.118772592,4518882.907728966,%EC%A2%85%EA%B0%81%EC%97%AD%201%ED%98%B8%EC%84%A0,131,SUBWAY_STATION/14136153.702924635,4519125.294401206,%ED%95%98%EC%9D%B4%EB%AF%B8%EB%94%94%EC%96%B4%EC%BB%B4%ED%93%A8%ED%84%B0%ED%95%99%EC%9B%90%20%EC%A2%85%EB%A1%9C%EC%BA%A0%ED%8D%BC%EC%8A%A4,13322326,PLACE_POI/-/walk/0?c=16,0,0,0,dh" class="card-link">자세히 보기</a></p>
				<p class="card-text" title="안국역부터 길찾기">안국역 5번출구 (도보 8분) &nbsp; <a href="https://map.naver.com/v5/directions/14135962.255664375,4519776.485345036,%EC%95%88%EA%B5%AD%EC%97%AD%203%ED%98%B8%EC%84%A0,328,SUBWAY_STATION/14136153.702924635,4519125.294401206,%ED%95%98%EC%9D%B4%EB%AF%B8%EB%94%94%EC%96%B4%EC%BB%B4%ED%93%A8%ED%84%B0%ED%95%99%EC%9B%90%20%EC%A2%85%EB%A1%9C%EC%BA%A0%ED%8D%BC%EC%8A%A4,13322326,PLACE_POI/-/walk/0?c=16,0,0,0,dh&isCorrectAnswer=true" class="card-link">자세히 보기</a></p>
				<hr class="featurette-divider">
				<h4 class="card-title">김포 국제 공항</h4>
				<p class="card-text" title="김포 국제 공항에서부터 대중교통 이용 시 길찾기">대중교통 이용시 : 5호선 김포공항역 승차 후 종로 3가역에서 하차 후 도보 &nbsp; <a href="https://map.naver.com/v5/directions/14115450.68213809,4518422.672215279,%EA%B9%80%ED%8F%AC%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD,11540232,PLACE_POI/14136153.702924635,4519125.294401206,%ED%95%98%EC%9D%B4%EB%AF%B8%EB%94%94%EC%96%B4%EC%BB%B4%ED%93%A8%ED%84%B0%ED%95%99%EC%9B%90%20%EC%A2%85%EB%A1%9C%EC%BA%A0%ED%8D%BC%EC%8A%A4,13322326,PLACE_POI/-/transit/0?c=15,0,0,0,dh&isCorrectAnswer=true" class="card-link">자세히 보기</a></p>
				<p class="card-text" title="김포 국제 공항에서부터 자가용/택시 이용시 길찾기">자가용/택시 이용시 : 자유로->강변북로->성산로 &nbsp; <a href="https://map.naver.com/v5/directions/14115450.68213809,4518422.672215279,%EA%B9%80%ED%8F%AC%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD,11540232,PLACE_POI/14136153.702924635,4519125.294401206,%ED%95%98%EC%9D%B4%EB%AF%B8%EB%94%94%EC%96%B4%EC%BB%B4%ED%93%A8%ED%84%B0%ED%95%99%EC%9B%90%20%EC%A2%85%EB%A1%9C%EC%BA%A0%ED%8D%BC%EC%8A%A4,13322326,PLACE_POI/-/car?c=15,0,0,0,dh&isCorrectAnswer=true" class="card-link">자세히 보기</a></p>
				<h4 class="card-title">인천 국제 공항</h4>
				<p class="card-text" title="인천 국제 공항에서부터 대중교통 이용 시 길찾기">대중교통 이용시 : 공항철도 인천공항 1터미널역 승차 후 5호선 공덕역에서 하차 후 5호선 종로3가역에서 하차 후 도보 &nbsp; <a href="https://map.naver.com/v5/directions/14076441.54957686,4501924.245193055,%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%20%EC%A0%9C1%EC%97%AC%EA%B0%9D%ED%84%B0%EB%AF%B8%EB%84%90,11577227,PLACE_POI/14136153.702924635,4519125.294401206,%ED%95%98%EC%9D%B4%EB%AF%B8%EB%94%94%EC%96%B4%EC%BB%B4%ED%93%A8%ED%84%B0%ED%95%99%EC%9B%90%20%EC%A2%85%EB%A1%9C%EC%BA%A0%ED%8D%BC%EC%8A%A4,13322326,PLACE_POI/-/transit/1?c=9,0,0,0,dh&isCorrectAnswer=true" class="card-link">자세히 보기</a></p>
				<p class="card-text" title="인천 국제 공항에서부터 자가용/택시 이용시 길찾기">자가용/택시 이용시 : 인천 국제공항 고속도로->강변북로->성산로 &nbsp; <a href="https://map.naver.com/v5/directions/14076441.54957686,4501924.245193055,%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%20%EC%A0%9C1%EC%97%AC%EA%B0%9D%ED%84%B0%EB%AF%B8%EB%84%90,11577227,PLACE_POI/14136153.702924635,4519125.294401206,%ED%95%98%EC%9D%B4%EB%AF%B8%EB%94%94%EC%96%B4%EC%BB%B4%ED%93%A8%ED%84%B0%ED%95%99%EC%9B%90%20%EC%A2%85%EB%A1%9C%EC%BA%A0%ED%8D%BC%EC%8A%A4,13322326,PLACE_POI/-/car?c=10,0,0,0,dh&isCorrectAnswer=true" class="card-link">자세히 보기</a></p>
			</div>
		</div>
		<br>
	</div>
	<!-- /.container -->

	<jsp:include page="/WEB-INF/views/client/footer.jsp" />
</main>


<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="/docs/4.6/assets/js/vendor/jquery.slim.min.js"><\/script>')
</script>
<script src="/docs/4.6/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>


</body>
</html>