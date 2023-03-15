/**
 * 
 */
 function RoomDelete(room_id) {
		if(confirm("삭제하시겠습니까?")){
	     alert("삭제 되었습니다.");
	     location.href='/admin/adminRoomDelete/'+room_id;
	}else{  
	}
}