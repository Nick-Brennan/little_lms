$(function(){
	var chart = c3.generate({
	    bindto: '#chart',
	    data: {
	    	onclick: function(d, element) {
	    		window.location= "/student/1/show"
	    	},
	        columns: [
	            ['data1', 30, 200, 100, 400, 150, 250],
	            ['data2', 130, 100, 140, 200, 150, 50]
	        ],
	        type: 'bar'
	    },
	    bar: {
	        width: {
	            ratio: 0.5 // this makes bar width 50% of length between ticks
	        }
	        // or
	        //width: 100 // this makes bar width 100px
	    }
	});

	setTimeout(function () {
	    chart.load({
	        columns: [
	            ['data3', 130, -150, 200, 300, -200, 100]
	        ]
	    });
	}, 1000);

	var mychart = c3.generate({
		bindto: '#compChart',
	    data: {
	    	//hardcoded redirect to test, will have to make dynamic
	    	onclick: function(d, element) {
	    		window.location= "/cohort/1/homework/1/show"
	    	},
	        xs: {
	            'data1': 'x1',
	            'data2': 'x2',
	        },
	        columns: [
	            ['x1', 10, 30, 45, 50, 70, 100],
	            ['x2', 30, 50, 75, 100, 120],
	            ['data1', 30, 200, 100, 400, 150, 250],
	            ['data2', 20, 180, 240, 100, 190]
	        ]
	    }
	});
});
