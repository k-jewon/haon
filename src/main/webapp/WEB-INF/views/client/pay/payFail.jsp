<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 취소</title>
<!-- Bootstrap core CSS -->
<link href="resources/assets/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-white">
	<div class="container">

		<!-- Outer Row -->
		<div class="justify-content-center">

			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<div class="p-5">
						<div class="text-center">
							<h1 class="h4 text-gray-900 mb-4">결제가 취소되었습니다.</h1>
						</div>
						<form class="user" action="/mypage.do" method="get">
							<table>
								<tr>
									<td>결제자 :</td>
								</tr>
								<tr>
									<td>상품명 :</td>
								</tr>
								<tr>
									<td>취소금액 : 원</td>
								</tr>
								<tr>
									<td><button class="btn btn-primary btn-sm" type="submit">예약내역</button>
										<button class="btn btn-secondary btn-sm" type="button" onclick="location.href='/'">확인</button></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>