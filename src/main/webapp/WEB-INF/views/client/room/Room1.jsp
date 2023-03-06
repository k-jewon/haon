<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room1 리스트</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/client/header.jsp" />
	<br>
	<main role="main">
		<div class="row featurette row_list">
			<div class="col-md-5 order-md-1">
				<h2 class="featurette-heading">Room1</h2>
			</div>
		</div>

		<hr class="featurette-divider">
		<div class="row featurette row_list">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">
					<a href="RoomDetail.do"><span class="text-muted">Room1 온돌</span></a>
				</h2>
				<br>
				<p class="lead"><a href="RoomDetail.do">Room1 온돌에 대한 설명...</a></p>
			</div>
			<div class="col-md-5 order-md-1">
				<svg
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="300" height="300" xmlns="http://www.w3.org/2000/svg"
					role="img" aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Room1 온돌</title><rect width="100%" height="100%" fill="#eee" />
					<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette row_list">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">
					<a href="RoomDetail.do"><span class="text-muted">Room1 침대</span></a>
				</h2>
				<br>
				<a href="RoomDetail.do"><p class="lead">Room1 침대에 대한 설명...</p></a>
			</div>
			<div class="col-md-5 order-md-1">
				<svg
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="300" height="300" xmlns="http://www.w3.org/2000/svg"
					role="img" aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Room1 온돌</title><rect width="100%" height="100%" fill="#eee" />
					<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

			</div>
		</div>
		<hr class="featurette-divider">

		<jsp:include page="/WEB-INF/views/client/footer.jsp" />
	</main>
</body>
</html>