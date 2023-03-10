<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/views/admin/admin_header.jsp"/>
<script>
	$(document).ready(function() {
		$('#nav2').addClass('active');
	})
	
	$('#myModal').on('shown.bs.modal', function () {
 	 $('#myInput').trigger('focus')
	})
</script>
<script>
		$('#testBtn').click(function(e){
			e.preventDefault();
			$('#testModal').modal("show");
		});
	</script>
<div id="wrapper mt-4">
	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">

		<!-- Main Content -->
		<div id="content">
			<!-- Begin Page Content -->
			<div class="container-fluid">

				<!-- Page Heading -->
				<h1 class="h3 mb-2 text-gray-800">
					<br>회원 리스트<br> <br>
				</h1>

				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-body">
						<div class="table">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Email</th>
										<th>성함</th>
										<th>전화번호</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="client" items="${clientlist}">
										<tr>
											<td>${client.user_email}</td>
											<td>${client.user_name}</td>
											<td>${client.user_phone}</td>
											<td>${client.user_gender}</td>
											<td>${client.user_birth}</td>
											<td>
												<!-- Button trigger modal -->
												<button type="button" class="btn btn-primary"
													data-toggle="modal" data-target="#user_detail">
													상세보기</button>
												 <!-- Modal -->
												<div class="modal fade" id="user_detail"
													tabindex="-1" role="dialog"
													aria-labelledby="exampleModalCenterTitle"
													aria-hidden="true">
													<div class="modal-dialog modal-dialog-centered"
														role="document">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="exampleModalCenterTitle">${client.user_name}</h5>
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">
															총 예약 횟수: 0
															총 결제 횟수: 0
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Close</button>
															</div>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->
	</div>
	<!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->



<jsp:include page="/WEB-INF/views/admin/admin_footer.jsp"/>