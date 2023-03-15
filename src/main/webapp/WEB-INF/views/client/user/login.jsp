<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <jsp:include page="/WEB-INF/views/client/header.jsp" />

    <div class="container my-5">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-lg-6">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Login</h1>
                                    </div>
                                    <form action="/client/user/login" class="user" method="post" >
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                name="user_email" aria-describedby="emailHelp"
                                                placeholder="Enter Email Address..." required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                name="user_pw" placeholder="Password" required>
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <input type="submit" class="btn btn-primary btn-user btn-block" value="로그인">
                                        <hr>
                                        <a href="https://kauth.kakao.com/oauth/authorize?client_id=898ef37dfbfe74fc5be093b71f06be2f&redirect_uri=http://localhost:8080/kakaoLogin&response_type=code" class="btn btn-warning btn-user btn-block">kakao계정으로 로그인</a>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="/client/user/find">비밀번호를 잊어버리셨나요?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="/client/user/join">회원가입</a>
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