<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="p-3 bg-white rounded shadow-sm">
    <h6 class="border-bottom border-gray pb-2 mb-0">회원정보</h6>
    <div class="media text-muted pt-3 row text-center">
    	<div class="row col-lg-12 mb-3">
    		<div class="col-lg-3">이메일</div>
          	<div class="col-lg-9 text-left">${login_info.user_email}</div>
    	</div>
    	<div class="row col-lg-12 mb-3">
    		<div class="col-lg-3">이름</div>
          	<div class="col-lg-9 text-left">${login_info.user_name}</div>
    	</div>
    	<div class="row col-lg-12 mb-3">
    		<div class="col-lg-3">전화번호</div>
          	<div class="col-lg-9 text-left">${login_info.user_phone}</div>
    	</div>
    	<div class="row col-lg-12 mb-3">
    		<div class="col-lg-3">주소</div>
          	<div class="col-lg-9 text-left">${login_info.user_addr1} ${login_info.user_addr2}</div>
    	</div>
    </div>
    <small class="d-block text-center mt-3">
      <button class="btn btn-primary">회원정보 수정</button>
      <button class="btn btn-danger">회원탈퇴</button>
    </small>
  </div>

