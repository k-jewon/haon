<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>admin login Page</title>
</head>
<body class="bg-gray">

    <div class="container col align-self-center col-lg-5">
		<!-- Outer Row -->
		<div class="border-0 shadow-lg my-5">
			<!-- Nested Row within Card Body -->
			<div class="row">
				<div class="col-lg-12">
					<div class="p-5">
						<div class="text-center">
							<h1 class="h4 text-gray-900 mb-4">haon 관리자 페이지</h1>
						</div>
						<form class="user">
							<div class="form-group">
								<input type="email" class="form-control form-control-user"
									id="exampleInputEmail" aria-describedby="emailHelp"
									placeholder="Enter Email Address...">
							</div>
							<div class="form-group">
								<input type="password" class="form-control form-control-user"
									id="exampleInputPassword" placeholder="Password">
							</div>
							<a href="#" class="btn btn-primary btn-user btn-block"> Login
							</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ jsp:include page="../admin_footer.jsp" %>