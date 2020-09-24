var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function number_format(number, decimals, dec_point, thousands_sep) {
  // *     example: number_format(1234.56, 2, ',', ' ');
  // *     return: '1 234,56'
  number = (number + '').replace(',', '').replace(' ', '');
  var n = !isFinite(+number) ? 0 : +number,
    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    s = '',
    toFixedFix = function(n, prec) {
      var k = Math.pow(10, prec);
      return '' + Math.round(n * k) / k;
    };
  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
  if (s[0].length > 3) {
    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
  }
  if ((s[1] || '').length < prec) {
    s[1] = s[1] || '';
    s[1] += new Array(prec - s[1].length + 1).join('0');
  }
  return s.join(dec);
}

// Bar Chart Example
var ctx = document.getElementById("failDataChart");
var myBarChart;


$(document).ready(function(){
	getStatsData();
});

function getStatsData(){
	$.ajax({		
		url : url+"/admin/selectData",		
		type : "post",
		//contentType : "application/json",
		//data : {endPoint : endPoint},
		dataType : "json",
		success : function(statsList){
			
			
			for(var i = 0; i<statsList.yearList.length; i++){
				if(i == 0){
					$("#yearText").text(statsList.yearList[i]);
				}
				addLi(statsList.yearList[i]);
			}
			
			var labelList=[];
			var dataList=[];
			
			for(var i = 0; i < statsList.failData.length; i++){
				labelList.push(statsList.failData[i].endPoint);
				dataList.push(statsList.failData[i].count);
			}
			
			myBarChart = new Chart(ctx, {
			  type: 'bar',
			  data: {
			    labels: labelList,
			    datasets: [{
			      label: "포기한 사용자 수",
			      backgroundColor: "#1cc88a",
			      hoverBackgroundColor: "#17a673",
			      borderColor: "#1cc88a",
			      data: dataList,
			    }],
			  },
			  options: {
			    maintainAspectRatio: false,
			    layout: {
			      padding: {
			        left: 10,
			        right: 25,
			        top: 25,
			        bottom: 0
			      }
			    },
			    scales: {
			      xAxes: [{
			        gridLines: {
			          display: false,
			          drawBorder: false
			        },
			        ticks: {
					  //최대 표시되는 이름 수
			          maxTicksLimit: dataList.length
			        },
			        maxBarThickness: 25,
			      }],
			      yAxes: [{
			        ticks: {
			          min: 0,
					  //그래프 최댓값
			          max: Math.ceil(dataList[dataList.length-1]/10)*10	,
			          maxTicksLimit: 5,
			          padding: 10,
			          // Include a dollar sign in the ticks
			          callback: function(value, index, values) {
			            return number_format(value);
			          }
			        },
			        gridLines: {
			          color: "rgb(234, 236, 244)",
			          zeroLineColor: "rgb(234, 236, 244)",
			          drawBorder: false,
			          borderDash: [2],
			          zeroLineBorderDash: [2]
			        }
			      }],
			    },
			    legend: {
			      display: false
			    },
			    tooltips: {
			      titleMarginBottom: 10,
			      titleFontColor: '#6e707e',
			      titleFontSize: 14,
			      backgroundColor: "rgb(255,255,255)",
			      bodyFontColor: "#858796",
			      borderColor: '#dddfeb',
			      borderWidth: 1,
			      xPadding: 15,
			      yPadding: 15,
			      displayColors: false,
			      caretPadding: 10,
			      callbacks: {
			        label: function(tooltipItem, chart) {
			          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
			          return datasetLabel + ' : ' + number_format(tooltipItem.yLabel) + '명';
			        }
			      }
			    },
			  }
			});
			
			//매장 순위
			labelList=[];
			dataList=[];
			
			ctx = document.getElementById("storeRankChart");
			
			for(var i = 0; i < statsList.storeRank.length; i++){
				labelList.push(statsList.storeRank[i].storeName);
				dataList.push(statsList.storeRank[i].percentage);
			}
			
			myBarChart = new Chart(ctx, {
			  type: 'bar',
			  data: {
			    labels: labelList,
			    datasets: [{
			      label: "주문을 성공한 사용자들이 쉽다고 투표한 비율",
			      backgroundColor: "#1cc88a",
			      hoverBackgroundColor: "#17a673",
			      borderColor: "#1cc88a",
			      data: dataList,
			    }],
			  },
			  options: {
			    maintainAspectRatio: false,
			    layout: {
			      padding: {
			        left: 10,
			        right: 25,
			        top: 25,
			        bottom: 0
			      }
			    },
			    scales: {
			      xAxes: [{
			        gridLines: {
			          display: false,
			          drawBorder: false
			        },
			        ticks: {
					  //최대 표시되는 이름 수
			          maxTicksLimit: dataList.length
			        },
			        maxBarThickness: 25,
			      }],
			      yAxes: [{
			        ticks: {
			          min: 0,
					  //그래프 최댓값
			          max: Math.ceil(dataList[dataList.length-1]/10)*10,
			          maxTicksLimit: 5,
			          padding: 10,
			          // Include a dollar sign in the ticks
			          callback: function(value, index, values) {
			            return number_format(value);
			          }
			        },
			        gridLines: {
			          color: "rgb(234, 236, 244)",
			          zeroLineColor: "rgb(234, 236, 244)",
			          drawBorder: false,
			          borderDash: [2],
			          zeroLineBorderDash: [2]
			        }
			      }],
			    },
			    legend: {
			      display: false
			    },
			    tooltips: {
			      titleMarginBottom: 10,
			      titleFontColor: '#6e707e',
			      titleFontSize: 14,
			      backgroundColor: "rgb(255,255,255)",
			      bodyFontColor: "#858796",
			      borderColor: '#dddfeb',
			      borderWidth: 1,
			      xPadding: 15,
			      yPadding: 15,
			      displayColors: false,
			      caretPadding: 10,
			      callbacks: {
			        label: function(tooltipItem, chart) {
			          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
			          return datasetLabel + ' : ' + number_format(tooltipItem.yLabel) + '%';
			        }
			      }
			    },
			  }
			});
						
			//월별 성공률
			labelList=[];
			dataList=[];
			
			for(var i = 0; i < statsList.monthlySuccessRate.length; i++){
				labelList.push(statsList.monthlySuccessRate[i].month+'월');
				dataList.push(statsList.monthlySuccessRate[i].percentage);
			}
			ctx = document.getElementById("monthlySuccessRate");
			myLineChart = new Chart(ctx, {
			  type: 'line',
			  data: {
			    labels: labelList,
			    datasets: [{
			      label: "성공률",
			      lineTension: 0.3,
			      backgroundColor: "rgba(28, 200, 138, 0.1)",
			      borderColor: "rgba(28, 200, 138, 1)",
			      pointRadius: 3,
			      pointBackgroundColor: "rgba(28, 200, 138, 1)",
			      pointBorderColor: "rgba(28, 200, 138, 1)",
			      pointHoverRadius: 3,
			      pointHoverBackgroundColor: "rgba(28, 200, 138, 1)",
			      pointHoverBorderColor: "rgba(28, 200, 138, 1)",
			      pointHitRadius: 10,
			      pointBorderWidth: 2,
			      data: dataList,
			    }],
			  },
			  options: {
			    maintainAspectRatio: false,
			    layout: {
			      padding: {
			        left: 10,
			        right: 25,
			        top: 25,
			        bottom: 0
			      }
			    },
			    scales: {
			      xAxes: [{
			        time: {
			          unit: 'date'
			        },
			        gridLines: {
			          display: false,
			          drawBorder: false
			        },
			        ticks: {
					  //최대 이름 표시 수
			          maxTicksLimit:statsList.monthlySuccessRate.length
			        }
			      }],
			      yAxes: [{
			        ticks: {
					  //옆에 표시된 숫자들의 수
			          maxTicksLimit: 5,
			          padding: 10,
			          // Include a dollar sign in the ticks
			          callback: function(value, index, values) {
			            return number_format(value);
			          }
			        },
			        gridLines: {
			          color: "rgb(234, 236, 244)",
			          zeroLineColor: "rgb(234, 236, 244)",
			          drawBorder: false,
			          borderDash: [2],
			          zeroLineBorderDash: [2]
			        }
			      }],
			    },
			    legend: {
			      display: false
			    },
			    tooltips: {
			      backgroundColor: "rgb(255,255,255)",
			      bodyFontColor: "#858796",
			      titleMarginBottom: 10,
			      titleFontColor: '#6e707e',
			      titleFontSize: 14,
			      borderColor: '#dddfeb',
			      borderWidth: 1,
			      xPadding: 15,
			      yPadding: 15,
			      displayColors: false,
			      intersect: false,
			      mode: 'index',
			      caretPadding: 10,
			      callbacks: {
			        label: function(tooltipItem, chart) {
			          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
			          return datasetLabel + ' : '+ number_format(tooltipItem.yLabel)+'%';
			        }
			      }
			    }
			  }
			});
			
			ctx = document.getElementById("myPieChart");
			var myPieChart = new Chart(ctx, {
			  type: 'doughnut',
			  data: {
			    labels: ["성공률", "실패률"],
			    datasets: [{
			      data: [statsList.successRate, 100-statsList.successRate],
			      backgroundColor: ['#bbf353', '#1cc88a', '#36b9cc'],
			      hoverBackgroundColor: ['#aadd4b', '#17a673', '#2c9faf'],
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
			    legend: {
			      display: false
			    },
			    cutoutPercentage: 80,
			  },
			});

		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

function addLi(year){
	var str = "";
	str += '<li role="presentation"><a role="menuitem" tabindex="-1" href="#">'+year+'</a></li>';
	
	$("#yearDropdown").append(str);
}

$("#yearDropdown").on("click", "li", function(){
	var year = $(this).children("a").text();
	console.log(year);
	$.ajax({		
		url : url+"/admin/clickYear",		
		type : "post",
		//contentType : "application/json",
		data : {"year" : year},
		dataType : "json",
		success : function(statsList){
			//월별 성공률
			var labelList=[];
			var dataList=[];
			
			$("#yearText").text(year);
			
			for(var i = 0; i < statsList.length; i++){
				labelList.push(statsList[i].month);
				dataList.push(statsList[i].percentage);
			}
			ctx = document.getElementById("monthlySuccessRate");
			
			myLineChart.destroy();

			myLineChart = new Chart(ctx, {
			  type: 'line',
			  data: {
			    labels: labelList,
			    datasets: [{
			      label: "Earnings",
			      lineTension: 0.3,
			      backgroundColor: "rgba(28, 200, 138, 0.1)",
			      borderColor: "rgba(28, 200, 138, 1)",
			      pointRadius: 3,
			      pointBackgroundColor: "rgba(28, 200, 138, 1)",
			      pointBorderColor: "rgba(28, 200, 138, 1)",
			      pointHoverRadius: 3,
			      pointHoverBackgroundColor: "rgba(28, 200, 138, 1)",
			      pointHoverBorderColor: "rgba(28, 200, 138, 1)",
			      pointHitRadius: 10,
			      pointBorderWidth: 2,
			      data: dataList,
			    }],
			  },
			  options: {
			    maintainAspectRatio: false,
			    layout: {
			      padding: {
			        left: 10,
			        right: 25,
			        top: 25,
			        bottom: 0
			      }
			    },
			    scales: {
			      xAxes: [{
			        time: {
			          unit: 'date'
			        },
			        gridLines: {
			          display: false,
			          drawBorder: false
			        },
			        ticks: {
			          maxTicksLimit: statsList.length
			        }
			      }],
			      yAxes: [{
			        ticks: {
			          maxTicksLimit: 5,
			          padding: 10,
			          // Include a dollar sign in the ticks
			          callback: function(value, index, values) {
			            return number_format(value);
			          }
			        },
			        gridLines: {
			          color: "rgb(234, 236, 244)",
			          zeroLineColor: "rgb(234, 236, 244)",
			          drawBorder: false,
			          borderDash: [2],
			          zeroLineBorderDash: [2]
			        }
			      }],
			    },
			    legend: {
			      display: false
			    },
			    tooltips: {
			      backgroundColor: "rgb(255,255,255)",
			      bodyFontColor: "#858796",
			      titleMarginBottom: 10,
			      titleFontColor: '#6e707e',
			      titleFontSize: 14,
			      borderColor: '#dddfeb',
			      borderWidth: 1,
			      xPadding: 15,
			      yPadding: 15,
			      displayColors: false,
			      intersect: false,
			      mode: 'index',
			      caretPadding: 10,
			      callbacks: {
			        label: function(tooltipItem, chart) {
			          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
			          return datasetLabel + ':'+ number_format(tooltipItem.yLabel) + '%';
			        }
			      }
			    }
			  }
			});		
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
})