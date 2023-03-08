<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/admin/admin_header.jsp" />
<body class="bg-light">
	<div class="container my-5" id="content">
		<div class="py-5 text-center">
			<h2>객실 등록</h2>
		</div>


		<form action="/roomInsert" method="post">
			<div class="row">
				<div class="col-lg-12 mb-3">
					<label for="name">객실명</label> <input type="text"
						class="form-control" id="room_name" name="room_name"
						value="디럭스 더블 온돌" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mb-3">
					<label for="name">객실 가격</label> <input type="text"
						class="form-control" id="room_price" name="room_price"
						value="100,000" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mb-3">
					<label for="name">객실 설명</label> <input type="text"
						class="form-control" id="room_desc" name="room_desc" value="객실 설명"
						readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mb-3">
					<label for="name">객실 이미지</label> <input type="file"
						class="form-control" id="room_image" name="room_image" readonly>
				</div>
			</div>
			<br>
			<button class="col-md-4 mb-3 btn btn-primary float-right" type="submit">예약하기</button>		
	</form>
	</div>
	<jsp:include page="/WEB-INF/views/admin/admin_footer.jsp" />