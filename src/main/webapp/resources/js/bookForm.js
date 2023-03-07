$(document).ready(function () {
    var rp = Number($('#roomPrice').text());
    var hp = Number($('#hp').val());
    var pp = Number($('#pp').val());
    var bp = Number($('#bp').val());
    addComma($('#totalPrice').text(rp + hp + pp + bp));
    addComma($('#roomPrice').val());
});
function modalFunction() {

    $('#modalRoom').text($('#room').val());
    $('#modalCheckIn').text($('#checkIn').val());
    $('#modalCheckOut').text($('#checkOut').val());
    var checkIn = new Date($('#checkIn').val());
    var checkOut = new Date($('#checkOut').val());
    var bak = (checkOut - checkIn) / (1000 * 60 * 60 * 24);
    $('#modalBak').text(bak);
    $('#modalMore').text($('#more').val());
    $('#modalName').text($('#name').val());
    var birth = $('#birth1').val() + "-" + $('#birth2').val() + "-" + $('#birth3').val()
    $('#modalBirth').text(birth);
    var phone = $('#phone1').val() + "-" + $('#phone2').val() + "-" + $('#phone3').val()
    $('#modalPhone').text(콜);
    $('#modalEmail').text($('#email').val());

    var rp = Number($('#roomPrice').text());
    var hp = Number($('#hp').text());
    var bp = Number($('#bp').text());
    var pp = Number($('#pp').text());
    $('#modalpp').text($('#plusperson').val());
    $('#modalhp').text($('#hanbok').val());
    $('#modalbp').text($('#breakfast').val());
    $('#modalrp').text(rp);
    $('#modalop').text($('#optionPrice').text());
    $('#modaltax').text($('#taxPrice').text());
    $('#modalTP').text($('#totalPrice').text());

    // input hidden 요소
    $('#book_checkIn').val($('#checkIn').val());
    $('#book_checkOut').val($('#checkOut').val());
    $('#book_price').val(rp + hp + bp + pp + (rp + hp + bp + pp) * 0.1);
    $('#book_more').val($('#more').val());
    //$('#room_Id').val();
    //$('#user_Id').val();
    //$('#book_capacity).val();
    $('#option_hanbok').val(hp / 10000);
    $('#option_breakfast').val(bp / 10000);
    $('#option_plusperson').val(pp / 10000);

}

/* $('#breakfastCheck').click(function(){
   var checked = $('#breakfastCheck').is(':checked');
   if(checked){
      $('.breakfast').show();
   }else{
      $('.breakfast').hide();
   }
}); */
function Checkform() {
    var checkIn = new Date($('#checkIn').val());
    var checkOut = new Date($('#checkOut').val());
    var bak = (checkOut - checkIn) / (1000 * 60 * 60 * 24);
    if ($('#checkIn').val() == "") {
        alert("체크인 날짜를 입력해 주세요");
        $('#checkIn').focus();
        return false;
    } else if ($('#checkOut').val() == "") {
        alert("체크아웃 날짜를 입력해 주세요");
        $('#checkOut').focus();
        return false;
    }
    if (bak < 1) {
        alert("체크인, 체크아웃 날짜를 잘 확인해 주세요");
        $('#checkIn').focus();
        return false;
    }
    $('.testtest').attr("data-toggle", "modal");
    $('.testtest').attr("data-target", "#modalCart");
}
function optionChange() {
    var get_input1 = $("#hanbok").val();
    var get_input2 = $("#plusPerson").val();
    var get_input3 = $("#breakfast").val();
    var rp = $('#roomPrice').text();
    var hp = get_input1 * 10000;
    var pp = get_input2 * 10000;
    var bp = get_input3 * 10000;
    $('#hp').text(addComma(get_input1 * 10000));
    $('#pp').text(addComma(get_input2 * 10000));
    $('#bp').text(addComma(get_input3 * 10000));
    $("#optionPrice").text(addComma(Number(hp) + Number(pp) + Number(bp)));
    $('#taxPrice').text(addComma((Number(rp) + Number(hp) + Number(pp) + Number(bp)) * 0.1));
    $('#totalPrice').text(addComma((Number(rp) + Number(hp) + Number(pp) + Number(bp)) + (Number(rp) + Number(hp) + Number(pp) + Number(bp)) * 0.1));
}
function addComma(value) {
    value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return value;
}