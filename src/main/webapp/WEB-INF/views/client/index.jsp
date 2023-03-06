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
				<svg class="" width="100%" height="100%"
					xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  "
					preserveAspectRatio="xMidYMid slice" focusable="false"
					cursor="pointer">
					<title>1번째 슬라이드</title><rect width="100%" height="100%" fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>

				<div class="container">
					<div class="carousel-caption text-left">
						<h1>Example headline.</h1>
						<p>Some representative placeholder content for the first slide
							of the ca dsfdsfdsfffffffffffffffffrousel.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#">Sign up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%"
					xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  "
					preserveAspectRatio="xMidYMid slice" focusable="false"
					cursor="pointer">
					<title>2번째 슬라이드</title><rect width="100%" height="100%" fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>

				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>
						<p>Some representative placeholder content for the second
							slide of the carousel.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#">Learn more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%"
					xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  "
					preserveAspectRatio="xMidYMid slice" focusable="false"
					cursor="pointer">
					<title>3번째 슬라이드</title><rect width="100%" height="100%" fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>

				<div class="container">
					<div class="carousel-caption">
						<h1>Another.</h1>
						<p>Some representative placeholder content for the second
							slide of the carousel.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#">Learn more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<svg class="bd-placeholder-img" width="100%" height="100%"
					xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  "
					preserveAspectRatio="xMidYMid slice" focusable="false"
					cursor="pointer">
					<title>4번째 슬라이드</title><rect width="100%" height="100%" fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>
				<div class="container">
					<div class="carousel-caption text-right">
						<h1>One more for good measure.</h1>
						<p>Some representative placeholder content for the third slide
							of this carousel.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#">Browse gallery</a>
						</p>
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
        <a href="Room1List.do"></a>
        </svg>

				<h2>
					<a href="Room1List.do" cursor="pointer">Heading
				</h2>
				<p class='main_list'>
					<a href="/Room1List.do" cursor="pointer">Some representative
						placeholder content for the three columns of text below the
						carousel. This is the first column.
				</p>
				<p>
					<a class="btn btn-secondary" href="/Room1List.do"
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
        <a href="Room2List.do"></a>
        </svg>

				<h2>
					<a href="Room2List.do" cursor="pointer">Heading
				</h2>
				<p class='main_list'>Another exciting bit of representative
					placeholder content. This time, we've moved on to the second
					column.</p>
				<p>
					<a class="btn btn-secondary" href="/Room2List.do"
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
        <a href="Room3List.do"></a>
        </svg>

				<h2>
					<a href="/Room3List.do" cursor="pointer">Heading</a>
				</h2>
				<p class='main_list'>
					<a href="/Room3List.do" cursor="pointer">And lastly this, the
						third column of representative placeholder content.</a>
				</p>
				<p>
					<a class="btn btn-secondary" href="/Room3List.do"
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
        <a href="Room4List.do"></a>
        </svg>

				<h2>
					<a href="Room4List.do" cursor="pointer">Heading
				</h2>
				<p class='main_list'>Some representative placeholder content for
					the three columns of text below the carousel. This is the first
					column.</p>
				<p>
					<a class="btn btn-secondary" href="/Room4List.do"
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