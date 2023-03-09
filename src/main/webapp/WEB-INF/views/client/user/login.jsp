<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                        <a href="index.html" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
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
    <c:if test="${message != null}">
	<div class="modal fade show d-block" tabindex="-1" aria-labelledby="exampleModalLiveLabel" aria-modal="true" role="dialog">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLiveLabel">로그인 오류</h5>
	      </div>
	      <div class="modal-body">
	        <p>${message}</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" id="modalClose" data-bs-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div>
	</c:if>
	<script>

	document.getElementById("modalClose").addEventListener("click", function(event){
		  $('.modal').removeClass('show d-block');
	});
	</script>
    <jsp:include page="/WEB-INF/views/client/footer.jsp" />