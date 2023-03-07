<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/client/header.jsp" />
<body class="bg-light">
	<div class="container bg-white rounded">
		<form method="post" action="/resetpay">
		<hr class="mb-6">
		<div class="row">
		<div class="col-md-6 mb-3"><span class="text-muted">(객실명)</span></div>
		<h5 class="col-md-6 mb-3 text-right"><span class="badge badge-primary">결제됨</span></h5>
		</div>
		<div class="row">
		<div class="col-md-6 mb-3"><span class="text-muted">(결제자)</span></div>
		<div class="col-md-6 mb-3 text-right"><span class="text-muted">(예약날짜)</span></div>
		</div>
		<div class="row">
		<div class="col-md-6 mb-3"><span class="text-muted">(금액)원</span></div>
		<div class="col-md-6 mb-3 text-right">
		<button type="submit" name="resetpay" class="btn btn-danger" onclick="resetCheck()">결제취소</button>
		</div>
		</div>
		<hr class="mb-6">
		</form>
	</div>
	<script>
	function resetCheck() {
		if (!confirm("결제를 취소하시겠습니까?")) {
			return false;
		} else {
			alert("취소 완료");
		}
	}
</script>