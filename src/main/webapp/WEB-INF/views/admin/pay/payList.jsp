<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/admin/admin_header.jsp"></jsp:include>
<script>
   $(document).ready(function() {
      $('#nav5').addClass('active');
   })
</script>
<!-- Page Wrapper -->
<div id="wrapper">



   <!-- Content Wrapper -->
   <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">


         <!-- Begin Page Content -->
         <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">
               <br>결제 리스트<br> <br>
            </h1>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
               <div class="card-body">
                  <div class="table-responsive">
                     <div class="col-sm-12 col-md-6">
                        <div id="dataTable_filter" class="dataTables_filter">
                           <label>검색:<input type="search" 
                              class="form-control form-control-sm" placeholder="검색하기"
                              aria-controls="dataTable"></label>
                        </div>
                     </div>
                     <table class="table table-bordered" width="100%" cellspacing="0">
                        <thead>
                           <tr>
                              <th>결제 번호</th>
                              <th>객실명</th>
                              <th>예약자명</th>
                              <th>결제 상태</th>
                              <th>총 결제금액</th>
                              <th>결제 날짜</th>
                              <th>비고</th>
                           </tr>
                        </thead>
                        <tbody>

                           <%-- <c:forEach var="payVO" items="${boardList}">
                           <tr>
                               <td><c:out value="${payVO.pay_id}" /></td>
                               <td><c:out value="${payVO.room_name}" /></td>
                               <td><c:out value="${payVO.user_name}" /></td>
                               <td><c:out value="${payVO.pay_static}" /></td>
                               <td><c:out value="${payVO.pay_price}" /></td>
                               <td><c:out value="${payVO.pay_date}" /></td>
                               <td><input type="button" value="결제취소" class="btn btn-secondary btn-icon-split" onclick="payUpdate()"/>
                              <input type="button" value="영구삭제" class="btn btn-danger btn-icon-split" onclick="paydelete()"/></td>
                           </tr>
                           </c:forEach> --%>
                           <tr>
                              <td>Tiger Nixon</td>
                              <td>System Architect</td>
                              <td>Edinburgh</td>
                              <td>2011/04/25</td>
                              <td>$320,800</td>
                              <td>$320,800</td>
                              <td><input type="button" value="결제취소" class="btn btn-secondary btn-icon-split" onclick="payUpdate()"/> 
                              <input type="button" value="영구삭제" class="btn btn-danger btn-icon-split" onclick="paydelete()"/></td>
                           </tr>
                           <tr>
                              <td>Garrett Winters</td>
                              <td>Accountant</td>
                              <td>Tokyo</td>
                              <td>63</td>
                              <td>2011/07/25</td>
                              <td>2011/07/25</td>
                              <td><input type="button" value="결제취소" class="btn btn-secondary btn-icon-split" onclick="payUpdate()"/>
                              <input type="button" value="영구삭제" class="btn btn-danger btn-icon-split" onclick="paydelete()"/></td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <div class="col-sm-12">
                     <div class="dataTables_paginate paging_simple_numbers float-right"
                        id="dataTable_paginate">
                        <ul class="pagination">
                           <li class="paginate_button page-item previous disabled"
                              id="dataTable_previous"><a href="#"
                              aria-controls="dataTable" data-dt-idx="0" tabindex="0"
                              class="page-link">이전</a></li>
                           <li class="paginate_button page-item active"><a href="#"
                              aria-controls="dataTable" data-dt-idx="1" tabindex="0"
                              class="page-link">1</a></li>
                           <li class="paginate_button page-item "><a href="#"
                              aria-controls="dataTable" data-dt-idx="2" tabindex="0"
                              class="page-link">2</a></li>
                           <li class="paginate_button page-item "><a href="#"
                              aria-controls="dataTable" data-dt-idx="3" tabindex="0"
                              class="page-link">3</a></li>
                           <li class="paginate_button page-item "><a href="#"
                              aria-controls="dataTable" data-dt-idx="4" tabindex="0"
                              class="page-link">4</a></li>
                           <li class="paginate_button page-item "><a href="#"
                              aria-controls="dataTable" data-dt-idx="5" tabindex="0"
                              class="page-link">5</a></li>
                           <li class="paginate_button page-item "><a href="#"
                              aria-controls="dataTable" data-dt-idx="6" tabindex="0"
                              class="page-link">6</a></li>
                           <li class="paginate_button page-item next" id="dataTable_next"><a
                              href="#" aria-controls="dataTable" data-dt-idx="7"
                              tabindex="0" class="page-link">다음</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- End of Main Content -->
<jsp:include page="/WEB-INF/views/admin/admin_footer.jsp"></jsp:include>