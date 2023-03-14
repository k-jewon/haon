function pay() {
	if(confirm("결제하시겠습니까?")) {
		$.ajax({
			type: "POST",
			url: "/kakaopay",
			dataType: "text",
			data: { "cid": "TC0ONETIME", "partner_order_id": "${payinfo.book_id}", "partner_user_id": "${payinfo.user_id}",
					"item_name": "${payinfo.room_name} ${payinfo.room_type}", "quantity": "1", "total_amount": "${payinfo.book_price}",
					"tax_free_amount": "0", "approval_url": "http://localhost:8080/kakaopaysuccess",
					"cancel_url": "http://localhost:8080/paycancel", "fail_url": "http://localhost:8080/payerror" },
			success: function(data) {
				location.href="http://localhost:8080/kakaopaysuccess"
			},
			error: {
			}
		});
	} else {
		return false;
	}
}