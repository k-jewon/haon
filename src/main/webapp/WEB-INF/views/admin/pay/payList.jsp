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
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>결제번호</th>
										<th>객실명</th>
										<th>예약자명</th>
										<th>결제상태</th>
										<th>총 결제금액</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
								
									<%-- <c:forEach var="payVO" items="${boardList}">
									<tr>
									    <td><c:out value="${payVO.pay_id}" /></td>
									    <td><c:out value="${payVO.room_name}" /></td>
									    <td><c:out value="${payVO.user_id}" /></td>
									    <td><c:out value="${payVO.pay_static}" /></td>
									    <td><c:out value="${payVO.pay_price}" /></td>
									    <td><input type="button" value="결제취소" /></td>
									</tr>
									</c:forEach> --%>
			
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->

		</div>
	</div>
</div>
<!-- End of Main Content -->
<jsp:include page="/WEB-INF/views/admin/admin_footer.jsp"></jsp:include>