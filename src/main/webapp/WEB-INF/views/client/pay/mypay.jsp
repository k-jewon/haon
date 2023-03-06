<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>내 결제 내역</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/checkout/">
<!-- Bootstrap core CSS -->
<link href="resources/assets/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">
<jsp:include page="../../header.jsp" />
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
		<button type="submit" name="resetpay" class="btn btn-danger">결제취소</button>
		</div>
		</div>
		<hr class="mb-6">
		</form>
	</div>
<jsp:include page="../../footer.jsp" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script>
	window.jQuery || document.write('<script src="resources/assets/js/vendor/jquery.slim.min.js"><\/script>')
</script>
<script src="resources/assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>