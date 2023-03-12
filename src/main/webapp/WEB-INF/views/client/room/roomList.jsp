<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room1 리스트</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/client/header.jsp" />
	<br>
			<div class="row featurette row_list">
			<div class="col-md-5 order-md-1">
				<h2 class="featurette-heading">${room}</h2>
			</div>
		</div>
	<hr class="featurette-divider">
	<div class="container">
	<main role="main">
	<c:forEach items="${roomList}" var="room">

		<div class="row featurette row_list">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">
					<a href="GetRoom?Room_name=${room.room_name}"><span class="text-muted">${room.room_name}</span></a>
				</h2>
				<br>
				<p class="lead">
					<a href="GetRoom?Room_name=${room.room_name}">${room.room_Desc}</a>
				</p>
			</div>
			<div class="col-md-5 order-md-1">
				<img src=${room.room_Image }>
			</div>
		</div>
	<hr class="featurette-divider">
	</c:forEach>
	
		<jsp:include page="/WEB-INF/views/client/footer.jsp" />
	</main>
	</div>
</body>
</html>