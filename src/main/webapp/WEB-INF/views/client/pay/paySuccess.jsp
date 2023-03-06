<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 성공</title>
</head>
<body>
<h3>결제가 완료되었습니다.</h3>
<form method="get" action="">
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
<td><button name="mypay" onclick="location.href='/mypay'">결제내역</button>
<button name="main" onclick="location.href='/'">확인</button></td>
</tr>
</table>
</form>
</body>
</html>