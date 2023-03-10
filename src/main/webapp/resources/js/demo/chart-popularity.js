const chartPopularity = new Chart(
  document.getElementById("chartPopularity"), {
  type: 'pie',
  data: {
    labels: ["무궁화", "소나무", "사랑채", "백두산"],
    datasets: [{
      data: [55, 20, 15, 10],
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#c6ea82'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf', '#7aad4c'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
	plugins: {
		legend: {
			display: false
			},
	},
  },
});
