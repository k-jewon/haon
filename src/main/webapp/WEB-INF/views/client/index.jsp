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
		<div style="background: #000000; background : rgba(0, 0, 0, 0.2);">
			<div class="carousel-item active">
				<img src="resources/img/1.jpg" width="100%" height="100%" title="1번째 슬라이드">
				<div class="container">
					<div class="carousel-caption">
						<h1>haon 홈페이지에 방문해주셔서 감사합니다.</h1>
						<p>아늑하고 편안한 시설에서 특별함을 즐겨보세요.</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/img/2.jpg" width="100%" height="100%" title="2번째 슬라이드"/>
				<div class="container">
					<div class="carousel-caption">
						<h1>한옥 감성으로 입혀진 haon</h1>
						<p>가끔은 어디론가 훌쩍 떠나고 싶은 마음이 드신다면 힐링을 느껴보세요.</p>
					</div>
				</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/img/3.jpg" width="100%" height="100%" title="1번째 슬라이드"/>
				<div class="container">
					<div class="carousel-caption">
						<h1>바쁜 일상을 벗어나 잔잔한 곳을 찾고 계시지는 않나요?</h1>
						<p>한옥만이 줄 수 있는 평온함을 만끽해보세요.</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/img/4.jpg" width="100%" height="100%" title="4번째 슬라이드"/>
					<text x="50%" y="50%" fill="#777" dy=".3em"> </text>
				<div class="container">
					<div class="carousel-caption">
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

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-3">
				<svg class="bd-placeholder-img rounded-rectangle" width="250"
					height="250" xmlns="http://www.w3.org/2000/svg" role="img"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false"
					cursor="pointer">
					<title>무궁화 자세히 보기</title><rect width="100%" height="100%"
						fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
        <a href="/RoomList1"></a>
        </svg>

				<h2>
					<a href="/RoomList1" cursor="pointer">무궁화
				</h2>
				<p class='main_list'>
					<a href="/RoomList1" cursor="pointer">
					2인실로 적합합니다.
					</a>
				</p>
				<p>
					<a class="btn btn-secondary" href="/RoomList1"
						title="무궁화 자세히 보기">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-3">
				<svg class="bd-placeholder-img rounded-rectangle" width="250"
					height="250" xmlns="http://www.w3.org/2000/svg" role="img"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false"
					cursor="pointer">
					<title>소나무 자세히 보기</title><rect width="100%" height="100%"
						fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
        <a href="/RoomList2"></a>
        </svg>

				<h2>
					<a href="/RoomList2" cursor="pointer">소나무
				</h2>
				<p class='main_list'>
				<a href="/RoomList2" cursor="pointer">
					4인실로 적합합니다.
					</a></p>
				<p>
					<a class="btn btn-secondary" href="/RoomList2"
						title="Room2 자세히 보기">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-3">
				<svg class="bd-placeholder-img rounded-rectangle" width="250"
					height="250" xmlns="http://www.w3.org/2000/svg" role="img"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false"
					cursor="pointer">
					<title>사랑채 자세히 보기</title><rect width="100%" height="100%"
						fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
        <a href="/RoomList3"></a>
        </svg>

				<h2>
					<a href="/RoomList3" cursor="pointer">사랑채</a>
				</h2>
				<p class='main_list'>
					<a href="/RoomList3" cursor="pointer">
					스위트룸 입니다.
						</a>
				</p>
				<p>
					<a class="btn btn-secondary" href="/RoomList3"
						title="Room3 자세히 보기" cursor="pointer">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-3">
				<svg class="bd-placeholder-img rounded-rectangle" width="250"
					height="250" xmlns="http://www.w3.org/2000/svg" role="img"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false"
					cursor="pointer">
					<title>백두산 자세히 보기</title><rect width="100%" height="100%"
						fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
        <a href="/RoomList4"></a>
        </svg>

				<h2>
					<a href="/RoomList4" cursor="pointer">백두산
				</h2>
				<p class='main_list'>
				<a href="/RoomList4" cursor="pointer">
					단체예약 전용입니다.
						</a></p>
				<p>
					<a class="btn btn-secondary" href="/RoomList4"
						title="Room4 자세히 보기">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-3 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->
		<hr class="featurette-divider">
		<!-- /END THE FEATURETTES -->

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