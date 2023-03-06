<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/client/header.jsp" />
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" class="mt-2">

                <div class="container-fluid col-lg-10">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Blank Page</h1>
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" data-toggle="tab" href="#home">회원정보 수정</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" data-toggle="tab" href="#menu1">예약 내역</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" data-toggle="tab" href="#menu2">결제 내역</a>
					  </li>
					</ul>
					
					<!-- Tab panes -->
					<div class="tab-content">
					  <div class="tab-pane active container col-lg-12" id="home">
					  	<jsp:include page="/WEB-INF/views/client/user/info_update.jsp" />
					  </div>
					  <div class="tab-pane container col-lg-12" id="menu1">
					  </div>
					  <div class="tab-pane container col-lg-12" id="menu2">...</div>
					</div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
<jsp:include page="/WEB-INF/views/client/footer.jsp" />