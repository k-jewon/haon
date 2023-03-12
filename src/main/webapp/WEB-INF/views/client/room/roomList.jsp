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
   <div class="container">
         <div class="row featurette row_list">
         <div class="col-md-5 order-md-1">
            <h2 class="featurette-heading">${room}</h2>
         </div>
      </div>
   <hr class="featurette-divider">
   <main role="main">
   <c:forEach items="${roomList}" var="room">

      <div class="row featurette row_list">
         <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">
               <a href="getRoom/${room.room_name}/${room.room_type}"><span class="text-muted">${room.room_name}&nbsp;${room.room_type}</span></a>
            </h2>
            <br>
            <p class="lead">
               <a href="getRoom/${room.room_name}/${room.room_type}">${room.room_desc}</a>
            </p>
         </div>
         <div class="col-md-5 order-md-1">
            <img src="" href="getRoom/${room.room_name}/${room.room_type}">
         </div>
      </div>
   <hr class="featurette-divider">
   </c:forEach>
   
      <jsp:include page="/WEB-INF/views/client/footer.jsp" />
   </main>
   </div>
</body>
</html>