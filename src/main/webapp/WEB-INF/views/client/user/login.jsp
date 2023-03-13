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
                                        <button class="btn btn-warning btn-user btn-block" onclick="loginWithKakao()">kakao계정으로 로그인</button>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="/ForgotPassword.do">비밀번호를 잊어버리셨나요?</a>
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
    <script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
	<script type="text/javascript">
	    $(document).ready(function(){
	        Kakao.init('script앱키 입력');
	        Kakao.isInitialized();
	    });
	
	    function loginWithKakao() {
	        Kakao.Auth.authorize({ 
	        redirectUri: 'http://localhost:8080/kakaoLogin' 
	        }); // 등록한 리다이렉트uri 입력
	    }
	</script>
    <jsp:include page="/WEB-INF/views/client/footer.jsp" />