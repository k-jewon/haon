const chartPay = new Chart(
	document.getElementById('chartPay'), {
	type: 'bar',
	data: {
	labels : ["Nov", "Dec", "Jan", "Feb", "Mar", "Apr"],
datasets : [{
	label:'매출액',
	  backgroundColor: "rgba(78, 115, 223, 1)",
      hoverBackgroundColor: "#6385bc",
      data: [0, 3160400, 4012800, 7312800, 6612000, 6389000, 8012000],
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
    plugins: {
		legend: {
			display: false
			},
	},
     scales: {
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