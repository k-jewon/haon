<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.101.0">
<title>내 예약 내역</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/checkout/">
<!-- Bootstrap core CSS -->
<link href="resources/assets/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/form-validation.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body class="bg-light">
	<div class="p-3 bg-white rounded shadow-sm">
		<input type="hidden" value="${msg }" id="hiddenInput">
		<c:forEach var="bookList" items="${list }">
			<form method="post" name="frmbookcheck" action="bookUpdate" onsubmit="return confirm('정말 예약을 취소하시겠습니까?');">
				<input type="hidden" value="${bookList.book_id }" name="book_id">
				<hr class="mb-6">
				<div class="row">
					<div class="col-md-6 mb-3">
						<span class="text-muted">${bookList.room_id }</span>
					</div>
					<h5 class="col-md-6 mb-3 text-right">
						<c:choose>
							<c:when test="${bookList.book_status == 0}"><span class="badge badge-dark">예약취소 완료</span></c:when>
							<c:when test="${bookList.book_status == 1}"><span class="badge badge-warning">예약완료(결제대기)</span></c:when>
							<c:when test="${bookList.book_status == 2}"><span class="badge badge-success">결제완료</span></c:when>
						</c:choose>
					</h5>
				</div>
				<div class="row">
					<div class="col-md-4 mb-3">
						<span class="text-muted">${login_info.user_name }</span>
					</div>
					<div class="col-md-4 mb-3">
						<span class="text-muted">예약일 : ${bookList.book_reserveDate }</span>
					</div>
					<div class="col-md-4 mb-3">
						<span class="text-muted">숙박 기간 : ${bookList.book_checkIn } - ${bookList.book_checkOut }</span>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-3">
						<span class="text-muted">
							<fmt:formatNumber type="number" maxFractionDigits="3" value="${bookList.book_price }"></fmt:formatNumber>
							<span>원</span>
						</span>
					</div>
					<div class="col-md-6 mb-3 text-right">
						<c:if test="${bookList.book_status == 1}">
							<button name="resetpay" class="btn btn-success" type="button" onclick="location.href='/payform/${bookList.book_id}'">결제하기</button>
							<button type="submit" class="btn btn-danger">예약취소</button>
						</c:if>
						<!-- <button type="submit" name="resetpay" class="btn btn-info">예약확인</button> -->
					</div>
				</div>
			</form>
		</c:forEach>
		
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="resources/assets/js/vendor/jquery.slim.min.js"><\/script>')
	</script>
	<script src="resources/assets/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		window.onload = function(){
			var message = '<c:out value="${msg}"/>';
			
			if(message!="" )
		  		alert(message);
			else
				return false;
		}
	</script>
</body>
</html>