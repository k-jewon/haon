<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">

    <title>회원가입</title>

    <!-- Custom fonts for this template-->
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="/resources/css/custom.css" rel="stylesheet">

</head>

<body>

    <div class="container">
	    <div class="row justify-content-center">
			<div class="col-xl-6 col-lg-6 col-md-9">
		        <div class="card o-hidden border-0 shadow-lg my-5">
		            <div class="card-body p-0">
		                <!-- Nested Row within Card Body -->
		                <div class="row">
		                    <div class="col-lg-12">
		                        <div class="p-5">
		                            <div class="text-center">
		                                <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
		                            </div>
		                            <form class="user">
		                            	<h6>이메일</h6>
		                                <div class="form-group">
		                                    <input type="email" class="form-control form-control-user" name="email"
		                                        placeholder="Email Address" required>
		                                </div>
		                                <h6>비밀번호</h6>
		                                <div class="form-group row">
		                                    <div class="col-sm-6 mb-3 mb-sm-0">
		                                        <input type="password" class="form-control form-control-user" name="password"
		                                            placeholder="Password" required>
		                                    </div>
		                                    <div class="col-sm-6">
		                                        <input type="password" class="form-control form-control-user" name="repeatPassword"
		                                            id="exampleRepeatPassword" placeholder="Repeat Password" required>
		                                    </div>
		                                </div>
		                                <h6>이름</h6>
		                                <div class="form-group">
		                                	<input type="text" class="form-control form-control-user" name="name"
												placeholder="Name" required>
		                                </div>
		                                <h6>휴대폰 번호</h6>
		                                <div class="form-group">
		                                	<input type="text" class="form-control form-control-user" name="phone"
												placeholder="Phone number" required>
		                                </div>
		                                <div class="form-group">
		                                	<h6>성별</h6>
		                                	<select class="form-control form-control-user select" name="gender" required>
								              <option value="M">남성</option>
								              <option value="W">여성</option>
								              <option value="A">양성</option>
								            </select>
		                                </div>
		                                <div class="form-group">
		                                	<h6>생년월일</h6>
		                                	<input type="date" class="form-control form-control-user" name="birth">
		                                </div>
		                                <div class="form-group">
		                                	<h6>주소</h6>
		                                	<input type="text" class="form-control form-control-user" name="addr1" placeholder="Address1">
		                                </div>
		                                <div class="form-group">
		                                	<input type="text" class="form-control form-control-user" name="addr2" placeholder="Address2">
		                                </div>
		                                <input type="submit" class="btn btn-primary btn-user btn-block" value="회원가입">
		                                <hr>
		                                <a href="index.html" class="btn btn-google btn-user btn-block">
		                                    <i class="fab fa-google fa-fw"></i> Register with Google
		                                </a>
		                            </form>
		                            <hr>
		                            <div class="text-center">
		                                <a class="small" href="/forgotPassword">비밀번호를 잊어버리셨나요?</a>
		                            </div>
		                            <div class="text-center">
		                                <a class="small" href="/login">로그인</a>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
			</div>
		</div>
    </div>

    <jsp:include page="/WEB-INF/views/client/footer.jsp" />