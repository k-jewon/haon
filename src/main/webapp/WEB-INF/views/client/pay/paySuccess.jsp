<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 성공</title>
<!-- Bootstrap core CSS -->
<link href="resources/assets/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-white">
<div class="container">
<h3>결제가 완료되었습니다.</h3>
<form method="POST" action="/mypay">
<table>
<tr>
<td>결제자 : </td>
</tr>
<tr>
<td>결제일시 : </td>
</tr>
<tr>
<td>상품명 : </td>
</tr>
<tr>
<td>결제금액 : 원</td>
</tr>
<tr>
<td><button class="btn btn-primary btn-sm" name="mypay" type="submit">결제내역</button>
<button class="btn btn-secondary btn-sm" name="main" onclick="location.href='/'">확인</button></td>
</tr>
</table>
</form>
</div>
</body>
</html>