<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>      
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/admin/admin_header.jsp" />
<body class="bg-light">
   <div class="container my-5" id="content">
      <div class="py-5 text-center">
         <h2>객실 등록</h2>
      </div>


      <form action="/admin/adminRoomInsert" method="post" enctype="multipart/form-data">
         <div class="row">
            <div class="col-lg-12 mb-3">
               <label for="room_name">객실명</label> <input type="text"
                  class="form-control" id="room_name" name="room_name" placeholder="무궁화" required>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-12 mb-3">
               <label for="room_type">객실 타입</label> <input type="text"
                  class="form-control" id="room_type" name="room_type" placeholder="온돌" required>
            </div>
         </div>
         <div class="row">
            <div class="col-md-12 mb-3">
               <label for="room_price">객실 가격</label> <input type="text"
                  class="form-control" id="room_price" name="room_price" placeholder="숫자만 입력해 주세요." required>
            </div>
         </div>
         <div class="row">
            <div class="col-md-12 mb-3">
               <label for="room_desc">객실 설명</label> <input type="text"
                  class="form-control" id="room_desc" name="room_desc" placeholder="객실 설명을 입력해 주세요." required>
            </div>
         </div>
         <div class="row">
            <div class="col-md-12 mb-3">
               <label for="room_image">객실 이미지</label> <input type="file"
                  class="form-control" id="room_image" name="room_image" required>
            </div>
         </div>
         <br>
         <button class="col-md-4 mb-3 btn btn-primary float-right" type="submit">등록하기</button>      
   </form>
   </div>
   <jsp:include page="/WEB-INF/views/admin/admin_footer.jsp" />