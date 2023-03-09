<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room 상세정보 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/client/header.jsp" />
	<br>
	<main role="main">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner container">
				<div class="carousel-item active">
					<svg class="bd-placeholder-img" width="100%" height="100%"
						xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  "
						preserveAspectRatio="xMidYMid slice" focusable="false"
						cursor="pointer">
						<title>1번째 슬라이드</title><rect width="100%" height="100%"
							fill="#777" />
						<text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>

					<div class="container">
						<div class="carousel-caption text-left">
							<h1>Example headline.</h1>
							<p>Some representative placeholder content for the first
								slide of the ca dsfdsfdsfffffffffffffffffrousel.</p>
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
						<title>2번째 슬라이드</title><rect width="100%" height="100%"
							fill="#777" />
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
						<title>3번째 슬라이드</title><rect width="100%" height="100%"
							fill="#777" />
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
						<title>4번째 슬라이드</title><rect width="100%" height="100%"
							fill="#777" />
						<text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>
					<div class="container">
						<div class="carousel-caption text-right">
							<h1>One more for good measure.</h1>
							<p>Some representative placeholder content for the third
								slide of this carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">Browse gallery</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--
    <button class="carousel-control-prev" type="button" data-target="#myCarousel" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-target="#myCarousel" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </button>
    -->
		</div>
		<br>
		<div class="container">
			<div class="row">
				<h2 class="col-lg col-md-12 detail_menu">${room.room_name}</h2>
				<div class="col-lg col-md-12 detail_menu">
					<a class="btn btn-lg col-md-12 btn-primary"
						href="javascript:history.back();" title="이전 화면으로">목록</a>
				</div>
				<div class="col-lg col-md-12 detail_menu">
					<a class="btn btn-lg col-md-12 btn-primary" href="Book"
						title="예약 페이지로 이동">예약하기</a>
				</div>
			</div>
			<br>
			<div>
				<p>${room.room_Desc}</p>
			</div>
			<table class="table">
				<tbody>
					<tr>
						<td>기본 가격</td>
						<td>${room.room_Price}원</td>
					</tr>
					<tr>
						<td>인원 </td>
						<td>최대 인원에서 2명까지 초과 가능</td>
					</tr>
					<tr>
						<td>인원초과가격</td>
						<td>인당 : 10000원</td>
					</tr>
					<tr>
						<td>이용 안내</td>
						<td>기준인원 초과시 1인에 1만원이 추가됩니다.</td>
					</tr>
					<tr>
						<td>편의 시설</td>
						<td>화장실, TV, 에어컨, 취사도구, 선풍기, 냉장고</td>
					</tr>
				</tbody>
			</table>
			
			
		</div>
	</main>

	<hr class="featurette-divider">
	<jsp:include page="/WEB-INF/views/client/footer.jsp" />
</body>
</html>