<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 리스트</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/client/header.jsp" />
	<div class="container">
		<main role="main">
		<div class="row featurette row_list">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">${room}</h2>			
			</div>
		</div>
		<hr class="featurette-divider">
			<c:forEach items="${roomList}" var="room">

				<div class="row featurette row_list">
					<div class="col-md-7 order-md-2">
						<h2 class="featurette-heading" style="margin-top: 30px">
							<a href="getRoom/${room.room_name}/${room.room_type}"><span
								class="text-muted">${room.room_name}&nbsp;${room.room_type}</span></a>
						</h2>
						<br>
						<p class="lead">
							<a href="getRoom/${room.room_name}/${room.room_type}"
								style="margin-bottom: 25px">${room.room_desc}</a>
						</p>
					</div>
					<div class="col-md-5 order-md-1">
						<a href="getRoom/${room.room_name}/${room.room_type}"> <img
							class="img-thumbnail"
							src="resources/img/${room.room_name}/${room.room_type}/main.jpg"
							href="getRoom/${room.room_name}/${room.room_type}" width="300"
							height="400">
						</a>
					</div>
				</div>
				<hr class="featurette-divider">
			</c:forEach>
		</main>
	</div>
	<jsp:include page="/WEB-INF/views/client/footer.jsp" />