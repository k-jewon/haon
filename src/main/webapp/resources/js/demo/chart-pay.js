var payLabels = [];
var payData = [];

$.getJSON("/payChart", function(data) {

	$.each(data, function(inx, obj) {
		payLabels.push(obj.p_month);
		payData.push(obj.p_price);
	});
});

const chartPay = new Chart(
	document.getElementById('chartPay'), {
	type: 'bar',
	data: {
	labels : payLabels,
datasets : [{
	label:'매출액',
	  backgroundColor: "rgba(78, 115, 223, 1)",
      hoverBackgroundColor: "#6385bc",
      data: payData,
}]
	},
	 options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 0,
        bottom: 0
      }
    },
	legend: {
		display: false
	},
     scales: {
		yAxes: [{
			ticks: {
				min: 0,
				fontSize : 14,
			}
		}],    
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 6
        },
        maxBarThickness: 10,
      }],
    },
   },
});