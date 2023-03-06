<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 취소</title>
<!-- Bootstrap core CSS -->
<link href="resources/assets/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-white">
<div class="container">
<h3>결제가 취소되었습니다.</h3>
<table>
<tr>
<td>결제자 : </td>
</tr>
<tr>
<td>상품명 : </td>
</tr>
<tr>
<td>취소금액 : 원</td>
</tr>
<tr>
<td><button class="btn btn-primary btn-sm" name="mybook" onclick="location.href='/mybook'">예약내역</button>
<button class="btn btn-secondary btn-sm" name="main" onclick="location.href='/'">확인</button></td>
</tr>
</table>
</div>
</body>
</html>