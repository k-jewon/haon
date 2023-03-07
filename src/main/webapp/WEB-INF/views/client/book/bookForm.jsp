<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>예약하기</title>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/checkout/">
    <!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .test1{
         width: 25%;
         border: 1px solid #ced4da;
         border-radius: 0.25rem;
         height: 38px;
         display: inline-block;
      }
      #more {
         resize: none;
      }
      /* .breakfast {
         display: none;
      } */
      input[type=number]::-webkit-inner-spin-button {
          opacity: 1;
   }
   .modal-table th{
      width: 110px;
      padding-right: 0px;
   }
    </style>
    <!-- Custom styles for this template -->
    <link href="resources/css/form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
<div class="container">
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
<!-- Modal: modalCart -->   
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/form-validation.js"></script>
    <script type="text/javascript">
         $(document).ready(function(){
            var rp = Number($('#roomPrice').text());
            var hp = Number($('#hp').val());
          var pp = Number($('#pp').val());
          var bp = Number($('#bp').val());
            $('#totalPrice').text(rp + hp + pp + bp);
         });
         function modalFunction(){
            
            $('#modalRoom').text($('#room').val());
            $('#modalCheckIn').text($('#checkIn').val());
            $('#modalCheckOut').text($('#checkOut').val());
            var checkIn =  new Date($('#checkIn').val());
            var checkOut = new Date($('#checkOut').val());
            var bak = (checkOut - checkIn)/(1000*60*60*24);
            $('#modalBak').text(bak);
            $('#modalMore').text($('#more').val());
            $('#modalName').text($('#name').val());
            var birth = $('#birth1').val() + "-" + $('#birth2').val() + "-" + $('#birth3').val()
            $('#modalBirth').text(birth);
            var phone = $('#phone1').val() + "-" + $('#phone2').val() + "-" + $('#phone3').val()
            $('#modalPhone').text(콜);
            $('#modalEmail').text($('#email').val());
            
            var rp = Number($('#roomPrice').text());
            var hp = Number($('#hp').text());
            var bp = Number($('#bp').text());
            var pp = Number($('#pp').text());
            $('#modalpp').text((pp/10000) + "  (" +(pp/10000) + " x 10000)"  );
            $('#modalhp').text((hp/10000) + "  (" +(hp/10000) + " x 10000)"  );
            $('#modalbp').text((bp/10000) + "  (" +(bp/10000) + " x 10000)"  );
            $('#modalrp').text(rp);
            $('#modalop').text(hp + bp + pp);
            $('#modaltax').text((rp + hp + bp + pp)*0.1);
            $('#modalTP').text(rp+hp+bp+pp + (rp + hp + bp + pp)*0.1);
            
            $('#book_checkIn').val($('#checkIn').val());
            $('#book_checkOut').val($('#checkOut').val());
            $('#book_price').val(rp+hp+bp+pp + (rp + hp + bp + pp)*0.1);
            $('#book_more').val($('#more').val());
            //$('#room_Id').val();
            //$('#user_Id').val();
            //$('#book_capacity).val();
            $('#option_hanbok').val(hp/10000);
            $('#option_breakfast').val(bp/10000);
            $('#option_plusperson').val(pp/10000);
            
         }
    
       /* $('#breakfastCheck').click(function(){
          var checked = $('#breakfastCheck').is(':checked');
          if(checked){
             $('.breakfast').show();
          }else{
             $('.breakfast').hide();
          }
       }); */
       function Checkform(){
          var checkIn =  new Date($('#checkIn').val());
            var checkOut = new Date($('#checkOut').val());
            var bak = (checkOut - checkIn)/(1000*60*60*24);
          if($('#checkIn').val() == ""){
             alert("체크인 날짜를 입력해 주세요");
             $('#checkIn').focus();
             return false;
          }else if($('#checkOut').val() == ""){
             alert("체크아웃 날짜를 입력해 주세요");
             $('#checkOut').focus();
             return false;
          }
          if(bak < 1){
             alert("체크인, 체크아웃 날짜를 잘 확인해 주세요");
             $('#checkIn').focus();
             return false;
          }
          $('.testtest').attr("data-toggle","modal");
          $('.testtest').attr("data-target","#modalCart");
       }
       function optionChange(){
          var get_input1 = $("#hanbok").val();
          var get_input2 = $("#plusPerson").val();
          var get_input3 = $("#breakfast").val();
          var rp = $('#roomPrice').text();
          var hp = get_input1*10000;
          var pp = get_input2*10000;
          var bp = get_input3*10000;
            $('#hp').text(addComma(get_input1*10000));
            $('#pp').text(addComma(get_input2*10000));
            $('#bp').text(addComma(get_input3*10000));
            $("#optionPrice").text(addComma(Number(hp) + Number(pp) + Number(bp)));
            $('#taxPrice').text(addComma((Number(rp) + Number(hp) + Number(pp) + Number(bp))*0.1));
            $('#totalPrice').text(addComma((Number(rp) + Number(hp) + Number(pp) + Number(bp)) + (Number(rp) + Number(hp) + Number(pp) + Number(bp))*0.1));
       }
       function addComma(value){
            value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            return value; 
        }
    </script>
  </body>
</html>