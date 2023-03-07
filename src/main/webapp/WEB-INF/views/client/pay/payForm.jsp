<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/client/header.jsp" />
<body class="bg-light">
	<div class="container">
		<div class="py-5">
			<h2>결제하기</h2>
		</div>

		<div class="row">
			<div class="col-md-12">
				<h4 class="mb-3">
					객실명 <span class="text-muted">(예약코드)</span>
				</h4>
				<form class="needs-validation" novalidate method="POST" action="/paysuccess">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="firstName">결제자</label> <input type="text"
								class="form-control" id="firstName" placeholder="" value=""
								required readonly>
						</div>
					</div>

					<h4 class="mb-3">예약 날짜</h4>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="checkin">체크인 시간 <span class="text-muted">(check-in)</span></label>
							<input type="date" class="form-control" id="checkin"
								value="(체크인 날짜)" readonly>
						</div>
						<div class="col-md-6 mb-3">
							<label for="checkout">체크아웃 시간 <span class="text-muted">(check-out)</span></label>
							<input type="date" class="form-control" id="checkout"
								value="(체크아웃 날짜)" readonly>
						</div>
					</div>

					<hr class="mb-4">

					<h4 class="mb-3">결제수단</h4>

					<div class="d-block my-3">
						<div class="custom-control custom-radio">
							<input id="credit" name="payment" type="radio" value="c"
								class="custom-control-input payment" checked required> <label
								class="custom-control-label" for="credit">신용 카드</label>
						</div>
						<div class="custom-control custom-radio">
							<input id="kakao" name="payment" type="radio" value="k"
								class="custom-control-input payment" required> <label
								class="custom-control-label" for="kakao">카카오 페이</label>
						</div>
					</div>
					<div id="creditcard">
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="cc-name">카드사</label> <input type="text"
									class="form-control" id="cc-name" placeholder="">
							</div>
							<div class="col-md-6 mb-3">
								<label for="cc-number">카드 번호</label> <input type="text"
									class="form-control" id="cc-number" placeholder="">
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 mb-3">
								<label for="cc-expiration">카드 유효기간</label> <input type="text"
									class="form-control" id="cc-expiration" placeholder="">
							</div>
							<div class="col-md-3 mb-3">
								<label for="cc-cvv">CVC</label> <input type="text"
									class="form-control" id="cc-cvv" placeholder="">
							</div>
						</div>
					</div>
					<hr class="mb-4">
					<h4 class="mb-3">결제금액</h4>
					<div class="row">
						<div class="col-md-6 mb-3">
							<input type="text" class="form-control" placeholder="0" value=""
								required readonly>
						</div>
						<div class="col-md-6 mb-3">
							<span class="text-muted">원</span>
						</div>
					</div>
					<div class="mb-3">
						<span class="text-muted"> - 옵션1</span>
					</div>
					<div class="mb-3">
						<span class="text-muted"> - 옵션2</span>
					</div>
					<div class="mb-3">
						<span class="text-muted"> - 옵션3</span>
					</div>
					<span class="text-danger">※환불 시 주의사항 : 예약된 체크인 날짜의 1일 전까지만 환불이 가능합니다.</span>
					<hr class="mb-4">
					<div class="row">&nbsp;&nbsp;
						<button class="btn btn-outline-success" type="submit"
							onclick="return paycheck()">결제하기</button>&nbsp;&nbsp;
						<button class="btn btn-outline-secondary" type="button" onclick="location.href='/'">취소하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<script>
	function paycheck() {
		if (!confirm("결제하시겠습니까?")) {
			return false;
		} else {
			alert("결제 완료");
		}
	}
</script>
<jsp:include page="/WEB-INF/views/client/footer.jsp" />