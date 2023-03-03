<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>관리자 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<script>
$(document).ready(function(){
	$('nav-item').addClass('active');
})
</script>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar fixed-top">
    <a class="navbar-brand" href="#">haon</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
      
	<div class="collapse navbar-collapse" id="navbarsExample04">
	    <ul class="navbar-nav ml-auto">
	        <li class="nav-item ml-5">
	          <a class="nav-link" href="#">통계 <span class="sr-only">(current)</span></a>
	        </li>
	        <li class="nav-item ml-5">
	          <a class="nav-link" href="#">회원관리</a>
	        </li>
	        <li class="nav-item ml-5">
	          <a class="nav-link" href="#">예약관리</a>
	        </li>
	        <li class="nav-item ml-5">
	          <a class="nav-link" href="#">객실관리</a>
	        </li>
	        <li class="nav-item ml-5">
	          <a class="nav-link" href="#">결제관리</a>
	        </li>
	        <li class="nav-item ml-5">
	          <a class="nav-link" href="#">로그아웃</a>
	        </li>
	    </ul>
	</div>
</nav>
