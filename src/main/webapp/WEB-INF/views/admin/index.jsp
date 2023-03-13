<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/admin/admin_header.jsp" />
<script>
$(document).ready(function(){
	$('#nav1').addClass('active');
})

</script>
<!-- Page Wrapper -->
<div id="wrapper">
	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">

		<!-- Main Content -->
		<div id="content1">
			<!-- Begin Page Content -->
			<div class="container-fluid">
				<!-- Content Row -->
				<div class="row">

					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-primary shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-primary text-uppercase mb-1">
											오늘 예약자 수</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">
											 ${todayBook} 건</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-calendar fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-success shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-success text-uppercase mb-1">
											오늘 매출액</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">
											${todaySales} 원</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-info shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-info text-uppercase mb-1">총
											고객 수</div>
										<div class="row no-gutters align-items-center">
											<div class="col-auto">
												<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
													${allUser} 명</div>
											</div>
										</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Pending Requests Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-warning shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-warning text-uppercase mb-1">
											총 매출액</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">
											${allSales} 원</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Content Row -->

				<div class="row">

					<!-- Area Chart -->
					<div class="col-lg-6">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">신규 가입자 수</h6>
							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-area">
									<canvas id="chartUser"></canvas>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">예약자 수</h6>
							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-area">
									<canvas id="chartBook"></canvas>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">매출액</h6>
							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-area">
									<canvas id="chartPay"></canvas>
								</div>
							</div>
						</div>
					</div>

					<!-- Pie Chart -->
					<div class="col-lg-6">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">인기 객실</h6>
							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-pie pt-4 pb-2">
									<canvas id="chartPopularity"></canvas>
								</div>
								<div class="mt-4 text-center small">
									<span class="mr-2"> <i
										class="fas fa-circle text-primary"></i> 무궁화
									</span> <span class="mr-2"> <i
										class="fas fa-circle text-success"></i> 소나무
									</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
										사랑채
									</span><span class="mr-2"><i
										class="fas fa-circle text-success1"></i> 백두산 </span>
								</div>
							</div>
						</div>
					</div>

					<!-- Pie Chart -->
					<div class="col-lg-6">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">추천 객실</h6>
							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-pie pt-4 pb-2">
									<canvas id="chartRecommend"></canvas>
								</div>
								<div class="mt-4 text-center small">
									<span class="mr-2"> <i
										class="fas fa-circle text-primary"></i> 무궁화
									</span> <span class="mr-2"> <i
										class="fas fa-circle text-success"></i> 소나무
									</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
										사랑채
									</span><span class="mr-2"><i
										class="fas fa-circle text-success1"></i> 백두산 </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


<!-- 차트 데이터 -->
<script src="resources/js/demo/chart-popularity.js"></script>
<script src="resources/js/demo/chart-recommend.js"></script>
<script src="resources/js/demo/chart-user.js"></script>
<script src="resources/js/demo/chart-book.js"></script>
<script src="resources/js/demo/chart-pay.js"></script>
<jsp:include page="/WEB-INF/views/admin/admin_footer.jsp" />