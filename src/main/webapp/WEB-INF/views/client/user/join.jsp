<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
		                            <form action="/client/user/join" class="user" method="post">
		                            	<h6>이메일</h6>
		                                <div class="form-group">
		                                    <input type="email" class="form-control form-control-user" name="user_email"
		                                        placeholder="Email Address" autocomplete="off" required>
		                                </div>
		                                <h6>비밀번호</h6>
		                                <div class="form-group">
	                                        <input type="password" class="form-control form-control-user" name="user_pw"
	                                            placeholder="Password" autocomplete="off" required>
		                                </div>
		                                <h6>이름</h6>
		                                <div class="form-group">
		                                	<input type="text" class="form-control form-control-user" name="user_name"
												placeholder="Name" autocomplete="off" required>
		                                </div>
		                                <h6>휴대폰 번호</h6>
		                                <div class="form-group">
		                                	<h6>전화번호는 -없이 숫자만 기입해주시기 바랍니다 Ex)01000000000</h6>
		                                	<input type="tel" class="form-control form-control-user" name="user_phone"
												placeholder="Phone number" pattern="[0-9]{11}" maxlength="11" autocomplete="off" required>
		                                </div>
		                                <div class="form-group">
		                                	<h6>성별</h6>
		                                	<select class="form-control form-control-user select" name="user_gender" required>
								              <option value="" disabled selected>성별을 선택해주세요</option>
								              <option value="M">남성</option>
								              <option value="W">여성</option>
								              <option value="A">양성</option>
								            </select>
		                                </div>
		                                <div class="form-group">
		                                	<h6>생년월일</h6>
		                                	<input type="date" class="form-control form-control-user" name="user_birth">
		                                </div>
		                                <div class="form-group">
		                                	<h6>주소 <input type="button" class="btn btn-primary" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"></h6>
		                                	<!-- <input type="text" class="form-control form-control-user" name="user_addr1" placeholder="Address1"> -->
		                                	
											
											<input type="text" class="form-control form-control-user mb-2" id="sample4_roadAddress" name="user_addr1" placeholder="도로명주소" required>
											<input type="text" class="form-control form-control-user mb-2" id="sample4_detailAddress" name="user_addr2" placeholder="상세주소" autocomplete="off" required>
											
											<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
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
		                                <a href="index.html" class="btn btn-google btn-user btn-block">
		                                    <i class="fab fa-google fa-fw"></i> Register with Google
		                                </a>
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
</script>
    <jsp:include page="/WEB-INF/views/client/footer.jsp" />