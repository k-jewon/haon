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
		<div class="container mt-5 bg-light">
		<img class="img-thumbnail" src="/resources/img/${room.room_name}/${room.room_type}/main.jpg" width="100%" height="100%">
		</div>
		<br>
		<div class="container">
			<form method="get" action="/bookForm/${room.room_id}">
			<div class="row">
				<h2 class="col-lg col-md-12 detail_menu">${room.room_name} ${room.room_type}</h2>
				<div class="col-lg col-md-12 detail_menu">
					<button class="btn btn-lg col-md-12 btn-primary" type="button"
						onclick="javascript:history.back();" title="이전 화면으로">목록</button>
				</div>
				<div class="col-lg col-md-12 detail_menu">
					<button class="btn btn-lg col-md-12 btn-primary" type="submit"
						title="예약 페이지로 이동">예약하기</button>
				</div>
			</div>
			<br>
			<div>
				<p>${room.room_desc}</p>
			</div>
			<table class="table">
				<tbody>
					<tr>
						<td>기본 가격</td>
						<td>${room.room_price}원</td>
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
			</form>
		</div>
	</main>

	<hr class="featurette-divider">
	<jsp:include page="/WEB-INF/views/client/footer.jsp" />
</body>
</html>