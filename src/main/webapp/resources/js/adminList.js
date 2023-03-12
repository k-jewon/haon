/**
 * 
 */
 
function payUpdate(pay_id) {

	if(confirm("결제를 취소하시겠습니까?")){
	      alert("결제 취소되었습니다.");
	      location.href='/admin/adminPayUpdate/'+pay_id;
	}else{  
	}
}

function payDelete(pay_id) {

	if(confirm("결제 정보를 영구 삭제하시겠습니까?")){
	     alert("삭제 되었습니다.");
	     location.href='/admin/adminPayDelete/'+pay_id;
	}else{  
	}
}
