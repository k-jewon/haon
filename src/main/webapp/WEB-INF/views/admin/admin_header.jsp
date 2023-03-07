<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />

<!-- Custom styles for this template-->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
<link href="resources/css/custom.css" rel="stylesheet">

</head>
<body id="page-top">
	<nav
		class="navbar navbar-expand-lg navbar-dark bg-dark navbar fixed-top">
		<a class="navbar-brand" href="/chart">haon</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample04" aria-controls="navbarsExample04"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample04">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item ml-5" id="nav1"><a class="nav-link"
					href="/chart">통계</a></li>
				<li class="nav-item ml-5" id="nav2"><a class="nav-link"
					href="/adminUserList">회원관리</a></li>
				<li class="nav-item ml-5" id="nav3"><a class="nav-link"
					href="/adminBookList">예약관리</a></li>
				<li class="nav-item ml-5" id="nav4"><a class="nav-link"
					href="/adminRoomList">객실관리</a></li>
				<li class="nav-item ml-5" id="nav5"><a class="nav-link"
					href="/adminPayList">결제관리</a></li>
				<li class="nav-item ml-5"><a class="nav-link" href="#">고객페이지로
						이동</a></li>
				<li class="nav-item ml-5"><a class="nav-link" href="#">로그아웃</a></li>
			</ul>
		</div>
	</nav>