var RecommendLabels = [];
var RecommendData = [];

$.getJSON("/recommendedRoom", function(data) {

	$.each(data, function(inx, obj) {
		RecommendLabels.push(obj.room_name);
		RecommendData.push(obj.r_room);
	});
});

const chartRecommend = new Chart(
  document.getElementById("chartRecommend"), {
  type: 'pie',
  data: {
    labels: RecommendLabels,
    datasets: [{
      data: RecommendData,
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
	legend: {
		display: false
	},
  },
});
