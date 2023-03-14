<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/client/header.jsp" />

			<div class="container-fluid col-lg-10">
				<!-- Page Heading -->
				<h1 class="h3 mb-4 text-gray-800">Blank Page</h1>
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#home">회원정보</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu1">예약 내역</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu2">결제 내역</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active container mw-100 p-0" id="home">
						<jsp:include page="/WEB-INF/views/client/user/userInfo.jsp" />
					</div>
					<div class="tab-pane container mw-100 p-0" id="menu1">
						<jsp:include page="/WEB-INF/views/client/book/bookList.jsp" />
					</div>
					<div class="tab-pane container mw-100 p-0" id="menu2">
						<jsp:include page="/WEB-INF/views/client/pay/mypay.jsp" />
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->

<!-- End of Main Content -->
<jsp:include page="/WEB-INF/views/client/footer.jsp" />