<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/client/header.jsp" />
<!-- <script src="/resources/js/payForm.js"></script> -->
<script type="text/javascript">
function pay() {
	if(confirm("결제하시겠습니까?")) {
		$.ajax({
			type: "POST",
			url: "/kakaopay",
			dataType: "text",
			data: { "cid": "TC0ONETIME", "partner_order_id": "${payinfo.book_id}", "partner_user_id": "${payinfo.user_id}",
					"item_name": "${payinfo.room_name} ${payinfo.room_type}", "quantity": "1", "total_amount": "${payinfo.book_price}",
					"tax_free_amount": "0", "approval_url": "http://localhost:8080/kakaopaysuccess",
					"cancel_url": "http://localhost:8080/paycancel", "fail_url": "http://localhost:8080/payerror" },
			success: function(data) {
				console.log(data);
			},
			error: {
			}
		});
	} else {
		return false;
	}
}
</script>
<body class="bg-light">
	<div class="container mt-5 mb-5">
		<div class="py-5 text-center">
			<h2>결제하기</h2>
		</div>

		<div class="row">
			<div class="col-md-12">
				<form class="needs-validation" novalidate method="POST" action="/kakaopay">
				<h4 class="mb-3">
					${payinfo.room_name} ${payinfo.room_type}<span class="text-muted">${payinfo.book_id}</span>
				</h4>
				<input type="hidden" name="room_id" value="${payinfo.room_id}" id="room_id" />
				<input type="hidden" name="book_id" value="${payinfo.book_id}" id="book_id" />
				<input type="hidden" name="user_id" value="${payinfo.user_id}" id="user_id" />
				<input type="hidden" name="room_name" value="${payinfo.room_name}" id="room_name" />
				<input type="hidden" name="room_type" value="${payinfo.room_type}" id="room_type" />
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="userName">결제자</label> <input type="text" name="user_name"
								class="form-control" id="userName" placeholder="" value="${payinfo.user_name}"
								required readonly />
						</div>
					</div>

					<h4 class="mb-3">예약 날짜</h4>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="checkin">체크인 시간 <span class="text-muted">(check-in)</span></label>
							<input type="date" class="form-control" id="checkin" name="book_checkIn"
								value="${payinfo.book_checkIn}" readonly>
						</div>
						<div class="col-md-6 mb-3">
							<label for="checkout">체크아웃 시간 <span class="text-muted">(check-out)</span></label>
							<input type="date" class="form-control" id="checkout" name="book_checkOut"
								value="${payinfo.book_checkOut}" readonly>
						</div>
					</div>

					<hr class="mb-4">

					<h4 class="mb-3">결제수단</h4>

					<div class="d-block my-3">
						<div class="custom-control custom-radio">
							<input id="credit" name="pay_payment" type="radio" value="0"
								class="custom-control-input payment" checked required onclick="$('#creditcard').removeClass('d-none');"> <label
								class="custom-control-label" for="credit">신용 카드</label>
						</div>
						<div class="custom-control custom-radio">
							<input id="kakao" name="pay_payment" type="radio" value="1"
								class="custom-control-input payment" required onclick="$('#creditcard').addClass('d-none');"> <label
								class="custom-control-label" for="kakao">카카오 페이</label>
						</div>
					</div>
					<div id="creditcard">
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="cc-name">카드사</label> <input type="text"
									class="form-control" id="cc-name" placeholder="xx카드" required>
							</div>
							<div class="col-md-6 mb-3">
								<label for="cc-number">카드 번호</label> <input type="text"
									class="form-control" id="cc-number" placeholder="(16자리)" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 mb-3">
								<label for="cc-expiration">카드 유효기간</label> <input type="text"
									class="form-control" id="cc-expiration" placeholder="연도/월" required>
							</div>
							<div class="col-md-3 mb-3">
								<label for="cc-cvv">CVC</label> <input type="password"
									class="form-control" id="cc-cvv" placeholder="" required>
							</div>
						</div>
					</div>
					<hr class="mb-4">
					<h4 class="mb-3">결제금액</h4>
					<div class="row">
						<div class="col-md-6 mb-3">
							<input type="text" class="form-control" placeholder="0" value="${payinfo.book_price}" name="book_price" id="book_price"
								required readonly>
						</div>
						<div class="col-md-6 mb-3">
							<span class="text-muted">원</span>
						</div>
					</div>
					<div class="mb-3">
						<span class="text-muted"> - 한복 대여 옵션 : ${payinfo.book_hanbok}벌</span>
					</div>
					<div class="mb-3">
						<span class="text-muted"> - 조식 옵션 : ${payinfo.book_breakfast}명</span>
					</div>
					<div class="mb-3">
						<span class="text-muted"> - 추가 인원 : ${payinfo.book_plusperson}명</span>
					</div>
					<span class="text-danger">※환불 시 주의사항 : 예약된 체크인 날짜의 1일 전까지만 환불이 가능합니다.</span>
					<hr class="mb-4">
					<div class="row">
						<div class="col-md-4 m-auto mb-5">
						<button class="btn btn-primary btn-lg btn-block" type="submit" id="btn-kakaopay"
							onclick="return pay()" >결제하기</button></div>
						<div class="col-md-4 m-auto mb-5">
						<button class="btn btn-secondary btn-lg btn-block" type="button" onclick="javascript:history.back();">취소하기</button></div>
					</div>
				</form>
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/views/client/footer.jsp" />