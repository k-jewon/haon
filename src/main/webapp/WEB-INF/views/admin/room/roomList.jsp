<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/admin/admin_header.jsp"></jsp:include>
 
<script type="text/javascript">
  $(document).ready(function(){	    
   $('#nav4').addClass('active');
	});
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
					<br>객실 리스트<br> <br>
				</h1>

				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-body">
						<div class="table-responsive">
							<input type="button" value="객실등록" class="float-right"
								onclick="location.href='/admin/adminRoomInsertForm'">
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
										<th>객실 번호</th>
										<th>객실명</th>
										<th>객실 타입</th>
										<th>객실 가격</th>
										<th>객실 설명</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="r" items="${roomList}">
										<tr>
											<td><c:out value="${r.room_id}" /></td>
											<td><c:out value="${r.room_name}" /></td>
											<td><c:out value="${r.room_type}" /></td>
											<td><c:out value="${r.room_price}" /></td>
											<td><input type="button" value="객실수정"
												class="btn btn-primary btn-icon-split"
												onclick="location.href='/admin/adminRoomUpdateForm/${r.room_id}'" />
												<input type="button" value="객실삭제"
												class="btn btn-danger btn-icon-split" id="deleteBtn"
												onclick="RoomDelete('${r.room_id}')"/></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="col-sm-12">
							<div
								class="dataTables_paginate paging_simple_numbers float-right"
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
<jsp:include page="/WEB-INF/views/admin/room/roomModal.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/admin/admin_footer.jsp"></jsp:include>