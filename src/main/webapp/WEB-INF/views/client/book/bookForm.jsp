<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/client/header.jsp" />
<body class="bg-light">
<div class="container my-5">
  <div class="py-5 text-center">
    <h2>예약 하기</h2>
  </div>

  <div class="row">
    <div class="col-md-12 order-md-1">
      <h4 class="mb-3">Reservation</h4>
        <div class="row">
          <div class="col-md-12 mb-3">
            <label for="name">성함</label>
            <input type="text" class="form-control" id="name" value="홍길동" readonly>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <h6>생년월일</h6>
            <input type="text" class="test1 form-control" id="birth1" value="2023" readonly> 년
            <input type="text" class="test1 form-control" id="birth2" value="03" readonly> 월
            <input type="text" class="test1 form-control" id="birth3" value="27" readonly> 일
          </div>
          <div class="col-md-6 mb-3">
            <h6>연락처</h6>
           <input type="text" class="form-control test1" id="phone1" value="010" readonly> -
            <input type="text" class="form-control test1" id="phone2" value="1234" readonly> -
            <input type="text" class="form-control test1" id="phone3" value="5678" readonly> 
          </div>
        </div>

        <div class="mb-3">
          <label for="email">이메일</label>
          <input type="text" class="form-control" id="email" value="haon@naver.com" readonly>
        </div>

      <hr class="mb-4">
      <div class="mb-3">
         <label for="room">방이름</label>
         <input type="text" class="form-control" id="room" name="room" value="디럭스 더블 온돌" readonly>
      </div>
      
      <div class="mb-3">
      <label for="adress">날짜 선택</label>
         <div class="row">
            <div class="col-md-6 checkIn">
               <label for="checkIn">체크인</label>
                   <input type="date" class="form-control" id="checkIn" required>
                   <div class="invalid-feedback">
                     체크인 날짜를 선택해 주세요
                   </div>
                </div>
                <div class="col-md-6">
                   <label for="checkOut">체크아웃</label>
                   <input type="date" class="form-control" id="checkOut" required>
                   <div class="invalid-feedback">
                     체크아웃 날짜를 선택해 주세요
                   </div>
                </div>
             </div>
          
        </div>
      
        <div class="mb-3">
          <label for="more">추가 사항</label>
          <textarea rows="10"  class="form-control" id="more" name="more" placeholder="추가사항이 있으시면 입력 해주세요"></textarea>
        </div>
      
      <hr class="mb-4">
      
      <h4 class="mb-3">Option</h4>
      <div class="mb-3">
          <label for="plusPerson">추가인원</label>
          <input type="number" class="form-control" id="plusPerson" name="plusPerson" value="0" min="0" onchange="optionChange()" >
          <div class="hanbokPrice">추가 금액 : <span id="pp">0</span> </div>
        </div>
        <div class="mb-3">
          <label for="hanbok">한복 대여 여부</label>
          <input type="number" class="form-control" id="hanbok" name="hanbok" value="0" min="0" onchange="optionChange()" >
          <div class="hanbokPrice">추가 금액 : <span id="hp">0</span> </div>
        </div>

        <div class="row">
          <div class="col-md-12 mb-3">
            <label for="breakfast">조식 여부</label>
            <input type="number" class="form-control" id="breakfast" name="breakfast" value="0" min="0" required onchange="optionChange()">
             <div class="hanbokPrice">추가 금액 : <span id="bp">0</span> </div>
            </div>
        </div>
        <hr class="mb-4">
      <h4 class="mb-3">Price</h4>
      <table class="table col-xs">
          <tbody>
            <tr>
              <td>객실가격</td>
              <td><span id="roomPrice">990000</span>원</td>
              <td rowspan="3" style="text-align: center; vertical-align: middle; background-color: red">
                 <h4 style="color: white;">최종금액</h4>
                 <h5 style="color: white;"><span id="totalPrice"></span>원</h5>
              </td>
            </tr>
            <tr>
              <td>추가금액</td>
              <td><span id="optionPrice">0</span>원</td>
            </tr>
            <tr>
              <td>부가세</td>
              <td><span id="taxPrice">0</span>원</td>
            </tr>
          </tbody>
      </table>
       <hr class="mb-4">    
        <div class="row">
           <div class="col-md-4 m-auto mb-5">
              <button class="btn btn-primary btn-lg btn-block testtest" type="button" onclick="Checkform(); modalFunction();">확인</button>
           </div>
           <div class="col-md-4 m-auto mt-5">
              <button class="btn btn-primary btn-lg btn-block" type="reset">이전으로</button>
           </div>
        </div>
    </div>
  </div>
</div>
<!-- Button trigger modal-->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCart">Launch modal</button> -->

<!-- Modal: modalCart -->
<div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
  <form action="/book.do" method="get">
     <input type="hidden" id="book_checkIn" name="book_checkIn">
     <input type="hidden" id="book_checkOut" name="book_checkOut">
     <input type="hidden" id="user_Id" name="user_Id">
     <input type="hidden" id="book_price" name="book_price">
     <input type="hidden" id="book_more" name="book_more">
     <input type="hidden" id="room_Id" name="room_Id" >
     <input type="hidden" id="book_capacity" name="book_capacity" >
     <input type="hidden" id="option_hanbok" name="option_hanbok" >
     <input type="hidden" id="option_breakfast" name="option_breakfast" >
     <input type="hidden" id="option_plusperson" name="option_plusperson" >
  
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header" >
        <h4 class="modal-title" id="myModalLabel">예약 확인</h4>
      </div>
      <!--Body-->
      <div class="modal-body">
        <table class="table table-hover modal-table">
          <thead>
            <tr align="center">
              <th colspan="4">객실 정보</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">객실</th>
              <td colspan="3" id="modalRoom"></td>
            </tr>
            <tr>
              <th scope="row">투숙 기간</th>
              <td colspan="3"> <span id="modalCheckIn"></span> - <span id="modalCheckOut"></span> (<span id="modalBak"></span>박)</td>
            </tr>
            <tr>
              <th scope="row">투숙자 정보</th>
              <td colspan="3">
                 <span id="modalName"></span><br/>
                 <span>0</span>명<br/>
                 <span id="modalBirth"></span><br/>
                 <span id="modalPhone"></span><br/>
                 <span id="modalEmail"></span>
              </td>
            </tr>
            <tr>
              <th scope="row">옵션사항</th>
              <td colspan="3">
                 추가인원 <span id="modalpp"></span><br/>
                 한복대여 <span id="modalhp"></span> <br/>
                 조식 <span id="modalbp"></span>
              </td>
            </tr>
            <tr>
              <th scope="row">추가사항</th>
              <td colspan="3" id="modalMore"></td>
            </tr>
            <tr >
               <th>금액</th>
               <td>
                  객실<br/>
                  옵션<br/>
                  부가세<br/>
                  <strong><span>총 금액</span></strong>
               </td>
               <td colspan="2">
                  <span id="modalrp"></span><br/>
                  <span id="modalop"></span><br/>
                  <span id="modaltax"></span><br/>
                  <strong><span id="modalTP" ></span></strong>
               </td>
            </tr>
          </tbody>
        </table>

      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-primary" data-dismiss="modal">닫기</button>
        <button class="btn btn-primary" type="submit">예약하기</button>
      </div>
    </div>
    </form>
  </div>
</div>
<jsp:include page="/WEB-INF/views/client/footer.jsp" />