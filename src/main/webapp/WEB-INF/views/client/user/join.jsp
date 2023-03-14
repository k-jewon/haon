<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script>

 <jsp:include page="/WEB-INF/views/client/header.jsp" />
    <div class="container mt-5">
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
								<form action="/client/user/join" class="user" method="post" name="login_form">
									<h6 class="email_Check">이메일</h6>
									<div class="form-group">
										<input type="email" class="form-control form-control-user"
											name="user_email" id="userEmail" placeholder="Email Address"
											autocomplete="off" required>
									</div>
									<h6 id="confirm_text" class="text-danger">이메일 인증이 완료되어야
										회원가입이 진행됩니다.</h6>
									<h6 class="modal-title" id="exampleModalLabel">이메일 인증<span class="btn btn-primary mail_check_button">인증번호 전송</span></h6>
									<div class="mail_check_wrap">
										<div class="mail_check_input_box "
											id="mail_check_input_box_false">
											<input class="mail_check_input form-control form-control-user" disabled="disabled" placeholder="숫자 6자리 인증번호를 기입해주세요." required/>
										</div>
										<div class="clearfix"></div>
										<span id="mail_check_input_box_warn"></span>
									</div>
									<h6>비밀번호</h6>
									<div class="form-group">
										<input type="password" class="form-control form-control-user"
											name="user_pw" placeholder="Password" autocomplete="off"
											required>
									</div>
									<h6>이름</h6>
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												name="user_name" placeholder="Name" autocomplete="off"
												required>
										</div>
										<h6>휴대폰 번호</h6>
										<div class="form-group">
											<h6>전화번호는 -없이 숫자만 기입해주시기 바랍니다 Ex)01000000000</h6>
											<input type="tel" class="form-control form-control-user"
												name="user_phone" placeholder="Phone number"
												pattern="[0-9]{11}" maxlength="11" autocomplete="off"
												required>
										</div>
										<div class="form-group">
											<h6>성별</h6>
											<select class="form-control form-control-user select"
												name="user_gender" required>
												<option value="" disabled selected>성별을 선택해주세요</option>
												<option value="male">남성</option>
												<option value="female">여성</option>
												<option value="they">양성</option>
											</select>
										</div>
										<div class="form-group">
											<h6>생년월일</h6>
											<input type="date" class="form-control form-control-user"
												name="user_birth">
										</div>
										<div class="form-group">
											<h6>
												주소 <input type="button" class="btn btn-primary"
													onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
											</h6>
											<!-- <input type="text" class="form-control form-control-user" name="user_addr1" placeholder="Address1"> -->


											<input type="text"
												class="form-control form-control-user mb-2"
												id="sample4_roadAddress" name="user_addr1"
												placeholder="도로명주소" required> <input type="text"
												class="form-control form-control-user mb-2"
												id="sample4_detailAddress" name="user_addr2"
												placeholder="상세주소" autocomplete="off" required> <input
												type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
											<input type="hidden" id="sample4_postcode" placeholder="우편번호">
											<span id="guide" style="color:#999;display:none"></span>
											<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
		                                </div>
		                                <!--
		                                <div class="form-group">
		                                	<input type="text" class="form-control form-control-user" name="user_addr2" placeholder="Address2">
		                                </div>
		                                -->
		                                <input type="submit" class="btn btn-primary btn-user btn-block" value="회원가입">
		                                <hr>
		                                <a href="https://kauth.kakao.com/oauth/authorize?client_id=898ef37dfbfe74fc5be093b71f06be2f&redirect_uri=http://localhost:8080/kakaoLogin&response_type=code" class="btn btn-warning btn-user btn-block">kakao계정으로 로그인</a>
		                            </form>
		                            <hr>
		                            <div class="text-center">
		                                <a class="small" href="/ForgotPassword.do">비밀번호를 잊어버리셨나요?</a>
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
    
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    
    var code = "";  
    var inputCode = $(".mail_check_input").val();
    
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
                url:"mailCheck?email=" + email,
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

    
    /* 인증번호 비교 */
    $(".mail_check_input").blur(function(){
        
        var checkResult = $("#mail_check_input_box_warn");    // 비교 결과     
        var inputCode = $(".mail_check_input").val();
        
        if(inputCode == code){                            // 일치할 경우
            checkResult.html("인증번호가 일치합니다.");
            checkResult.attr("class", "correct");
            $("#confirm_text").html("<span class='text-success' name='login_check'>이메일 인증이 완료되었습니다.</span>");
            $("#mail_check_button").attr("readonly", true);
            $("#userEmail").attr("readonly", true);
            $('.mail_check_button').addClass("d-none");
        } else {                                            // 일치하지 않을 경우
            checkResult.html("인증번호를 다시 확인해주세요.");
            checkResult.attr("class", "incorrect");
        }    
    });
    
    document.querySelector('form').addEventListener('submit', function(e){
    	var inputCode = $(".mail_check_input").val();
    	if(code != inputCode){
    	alert("이메일 인증을 완료해주세요.");
        e.preventDefault(); // 폼 submit(페이지갱신) 동작 금지
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