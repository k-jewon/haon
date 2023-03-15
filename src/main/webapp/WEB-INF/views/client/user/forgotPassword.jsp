<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <title>비밀번호 재설정</title>

    <!-- Custom fonts for this template-->
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script>

</head>

<body class="d-flex flex-column min-vh-100  p-0">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-6 col-lg-6 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">비밀번호 재설정</h1>
                                    </div>
                                    <form class="user" action="/client/user/find" method="POST">
										<div class="form-group">
										<h6 class="email_Check">이메일<span class="btn btn-primary mail_check_button">인증번호 전송</span></h6>
											<input type="email" class="form-control form-control-user"
												id="userEmail" name="user_email" aria-describedby="emailHelp"
												placeholder="Enter Email Address...">
										</div>
										<div class="mail_check_wrap mb-3">
											<div class="mail_check_input_box" id="mail_check_input_box_false">
												<h6 class="code_Check">인증번호<span class="btn btn-primary code_check_button">인증번호 확인</span></h6>
												<input class="mail_check_input form-control form-control-user" id="code_check" disabled="disabled" placeholder="숫자 6자리 인증번호를 기입해주세요." required />
											</div>
											<div class="clearfix"></div>
											<span id="mail_check_input_box_warn"></span>
										</div>
										<div class="pw_check_wrap">
										<h6 class="email_Check">비밀번호</h6>
											<input type="password" id="pw1" name="user_pw" class="form-control form-control-user mb-3" aria-describedby="first password register" placeholder="비밀번호를 입력해주세요." disabled="disabled">
										<h6 class="email_Check">비밀번호 확인</h6>	
											<input type="password" id="pw2" class="form-control form-control-user" aria-describedby="second password register" placeholder="비밀번호를 다시 입력해주세요." disabled="disabled">
										<span id="code_check_input_box_warn"></span>
										</div>
										<hr>
										<input type="submit" class="btn btn-primary btn-user btn-block" value="확인">
									</form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="/client/user/join">회원가입</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="/client/user/login">로그인</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
<script>

/* 인증번호 이메일 전송 */
$(".mail_check_button").click(function(){
 
    var email = $("#userEmail").val();        // 입력한 이메일
    var cehckBox = $(".mail_check_input");        // 인증번호 입력란
    var boxWrap = $(".mail_check_input_box");    // 인증번호 입력란 박스
    var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    
    if (email.match(regExp) != null) {
	    alert('인증번호가 발송되었습니다.');
	    $.ajax({
            
            type:"GET",
            url:"/mailCheck?email=" + email,
            success:function(data){
                
                console.log("data : " + data);
                cehckBox.attr("disabled",false);
                boxWrap.attr("id", "mail_check_input_box_true");
                code = data;
            }
        });
	  }
	  else {
	    alert('이메일 형식이 맞지 않습니다.');
	  }
});

    $(".code_check_button").click(function(){
        
        var checkResult = $("#mail_check_input_box_warn");    // 비교 결과     
        var inputCode = $(".mail_check_input").val();
        
        if(inputCode == code){                            // 일치할 경우
            checkResult.html("<span class='text-success' name='login_check'>이메일 인증이 완료되었습니다.</span>");
            checkResult.attr("class", "correct");
            $("#userEmail").attr("readonly", true);
            $("#code_check").attr("readonly", true);
            $('.mail_check_button').addClass("d-none");
            $('.code_check_button').addClass("d-none");
            $("#pw1").attr("disabled", false);
            $("#pw2").attr("disabled", false);
        } else {                                            // 일치하지 않을 경우
            checkResult.html("<span class='text-danger' name='login_check'>인증번호를 다시 기입바랍니다.</span>");
            checkResult.attr("class", "incorrect");
        }    
    });
    document.querySelector('form').addEventListener('submit', function(e){
    	var inputCode = $(".mail_check_input").val();
    	var pw1 = $("#pw1").val();
    	var pw2 = $("#pw2").val();
    	if(code != inputCode){
    	alert("이메일 인증을 완료해주세요.");
        e.preventDefault(); // 폼 submit(페이지갱신) 동작 금지
        } else{
        	if(pw1 != pw2){
        		alert("비밀번호가 맞지 않습니다.")
        		e.preventDefault(); // 폼 submit(페이지갱신) 동작 금지
        	}
        }
});
</script>
<footer class="sticky-footer text-white bg-dark mt-auto">
	<div class="container my-auto">
		<div class="copyright text-center my-auto">
			<div>Copyright &copy;haon</div>
			<div>팀장: 김제원, 이미영</div>
			<div>팀원: 김민규, 김주은, 임성준, 변우진</div>
		</div>
	</div>
</footer>

<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="/resources/js/bookForm.js" ></script>

</html>
    