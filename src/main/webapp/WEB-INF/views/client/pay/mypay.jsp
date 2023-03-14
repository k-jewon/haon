<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/client/header.jsp" />
<body class="bg-light">
	<div class="bg-white rounded shadow-sm p-3">
	<c:forEach var="pl" items="${mypayList}" begin="0" end="2">
		<form method="post" action="/cancelpay">
		<input type="hidden" name="tid" value="${pl.pay_id}"/>
		<hr class="mb-6 mt-2">
		<c:choose>
		<c:when test="${pl.pay_status=='SUCCESS_PAYMENT'}">
		<div class="row">
		<div class="col-md-6 mb-3"><span class="text-muted">객실 : <c:out value="${pl.room_name} ${pl.room_type}"/></span></div>
		<h5 class="col-md-6 mb-3 text-right"><span class="badge badge-primary">결제됨</span></h5>
		</div>
		</c:when>
		<c:when test="${pl.pay_status=='CANCEL_PAYMENT'}">
		<div class="row">
		<div class="col-md-6 mb-3"><span class="text-muted"><c:out value="${pl.room_name}${pl.room_type}"/></span></div>
		<h5 class="col-md-6 mb-3 text-right"><span class="badge badge-primary">취소됨</span></h5>
		</div>
		</c:when>
		</c:choose>
		<div class="row">
		<div class="col-md-6 mb-3"><span class="text-muted">결제일시 : <c:out value="${pl.pay_date}"/></span></div>
		<div class="col-md-6 mb-3 text-right"><span class="text-muted">숙박 기간 : <c:out value="${pl.book_checkIn}"/> - <c:out value="${pl.book_checkOut}"/></span></div>
		</div>
		<div class="row">
		<div class="col-md-6 mb-3"><span class="text-muted"><c:out value="${pl.book_price}"/> 원</span></div>
		<div class="col-md-6 mb-3 text-right">
		<button type="submit" name="resetpay" class="btn btn-danger" onclick="return confirm('결제를 취소하시겠습니까?')">결제취소</button>
		</div>
		</div>
		</form>
	</c:forEach>
	</div>