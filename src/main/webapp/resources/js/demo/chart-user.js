var userLabels = [];
var userData = [];

$.getJSON("/userChart", function(data) {

	$.each(data, function(inx, obj) {
		userLabels.push(obj.u_month);
		userData.push(obj.u_num);
	});
});

const chartUser = new Chart(
	document.getElementById('chartUser'), {
	type: 'line',
	data: {
	labels : userLabels,
datasets : [{
	label:'가입자 수',
	lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: userData,
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
				stepSize : 1,
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
        maxBarThickness: 25,
      }],
    },
   },
});