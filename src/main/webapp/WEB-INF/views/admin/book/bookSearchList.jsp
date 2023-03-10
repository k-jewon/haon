<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/admin/admin_header.jsp"></jsp:include>
<script>
	/* $(document).ready(function() {
		$('#nav3').addClass('active');
	}) */
</script>
<!-- Page Wrapper -->
<div id="wrapper">

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">

		<!-- Main Content -->
		<div id="content">

			<!-- Begin Page Content -->
			<div class="container-fluid">
				<!-- Page Heading -->
				<h1 class="h3 mb-2 text-gray-800">
					<br>예약 리스트<br> <br>
				</h1>
				<form id="search-form" action="/getSearchList">
					<div class="input-group mb-3 col-md-4 text-right">
						  <select id="inputGroupSelect04" name="type">
						    <option selected value="">검색 종류</option>
						    <option value="user_Id">예약자명</option>
						    <option value="room_Id">객실명</option>
						    <option value="book_status">예약상태</option>
						    <option value="book_reserveDate">예약일</option>
						  </select>
						  
						  <input type="text" name="keyword" value="">
						  <div class="input-group-append">
						    <button class="btn btn-outline-secondary" type="submit" id="searchBtn">검색</button>
						  </div>
					</div>
				</form>
				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered reserveTable" id="bookSearchTable" width="100%" cellspacing="0">
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#searchBtn').click(function(){
		$.ajax({
			type: 'POST',
			url : "/getSearchList",
			data : $('#search-form').serialize(),
			success : function(result){
				alert("성공");
				var data = JSON.parse(result);
				var htmlString = "";
		        htmlString += "<tr>";
		        htmlString += '		<th/>가</th>		';
		        htmlString += '		<th/>나</th>		';
		        htmlString += '		<th/>다</th>		';
		        htmlString += '		<th/>라</th>	    ';
		        htmlString += '		<th/>마</th>		';
		        htmlString += "</tr>"
		        for(var i = 0; i < data.list.length; i++) {
		          htmlString += "<tr>";
		          htmlString += "	<td>" + data.list[i].book_Id + "</td>"; 
		          htmlString += "	<td>";
		          htmlString += "		<a href='getBoard.do?seq=" + data.list[i].book_Id + "'>" + data.list[i].book_Id + "</a>"; 
		          htmlString += "	</td>"; 
		          htmlString += "	<td>" + data.list[i].book_checkOut + "</td>"; 
		          htmlString += "	<td>" + data.list[i].book_checkIn + "</td>"; 
		          htmlString += "	<td>" + data.list[i].book_reserveDate + "</td>"; 
		          htmlString += "</tr>";	
		        }

		        $("#bookSearchTable").html(htmlString);
			},
			error:function(e){ 
				alert("실패");
			}
		});
	})
});
</script>
<!-- End of Main Content -->
<jsp:include page="/WEB-INF/views/admin/admin_footer.jsp"></jsp:include>