<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>haon 홈페이지</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/carousel/">


<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
<link href="resources/css/carousel.css" rel="stylesheet">
<link href="resources/css/custom.css" rel="stylesheet">

</head>
<body class="d-flex flex-column min-vh-100  p-0">

	<header>
		<nav
		class="navbar navbar-expand-lg navbar-dark bg-dark navbar fixed-top">
		<a class="navbar-brand" href="/">haon</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample04" aria-controls="navbarsExample04"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample04">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item ml-5" id="nav1"><a class="nav-link"
					href="/roomList1">무궁화(2인)</a></li>
				<li class="nav-item ml-5" id="nav2"><a class="nav-link"
					href="/roomList2">소나무(4인)</a></li>
				<li class="nav-item ml-5" id="nav3"><a class="nav-link"
					href="/roomList3">사랑채(스위트룸)</a></li>
				<li class="nav-item ml-5" id="nav4"><a class="nav-link"
					href="/roomList4">단체예약</a></li>
				<c:choose>
					<c:when test="${login_info != null }">
						<li class="nav-item ml-5" id="nav5"><a class="nav-link"	href="/client/mypage">${login_info.user_name}님의 MyPage</a></li>
						<li class="nav-item ml-5" id="nav5"><a class="nav-link"	href="/client/user/logout">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item ml-5" id="nav5"><a class="nav-link"	href="/client/user/login">로그인</a></li>			
						<li class="nav-item ml-5"><a class="nav-link" href="/client/user/join">회원가입</a></li>
					</c:otherwise>
				</c:choose>	
				
			</ul>
		</div>
	</nav>
	</header>