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


<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/resources/css/carousel.css" rel="stylesheet">
<link href="/resources/css/custom.css" rel="stylesheet">

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
					href="/Room1List.do">무궁화</a></li>
				<li class="nav-item ml-5" id="nav2"><a class="nav-link"
					href="/Room2List.do">소나무</a></li>
				<li class="nav-item ml-5" id="nav3"><a class="nav-link"
					href="/Room3List.do">사랑채</a></li>
				<li class="nav-item ml-5" id="nav4"><a class="nav-link"
					href="/Room4List.do">백두산</a></li>
					
				<li class="nav-item ml-5" id="nav5"><a class="nav-link"
					href="/client/user/login">로그인</a></li>
				<li class="nav-item ml-5" id="nav5">
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  				Launch demo modal
				</button></li>					
				<li class="nav-item ml-5"><a class="nav-link" href="/client/user/join">회원가입</a></li>
			</ul>
		</div>
	</nav>
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
	</header>