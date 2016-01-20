$(function(){
	averageComp = window.averageComp
	presentData = window.presentData
	absentData = window.absentData
	students = window.students
	students = students.split(',')
	students.pop(students.length -1)
	presentData.unshift('present')
	absentData.unshift('absent')
	hwNames = [];
	hwComps = ['self assessment'];
	for (var i = 0; i < averageComp.length; i ++) {
		if(i % 2 == 0){
			hwNames.push(averageComp[i])
		}else{
			hwComps.push(parseFloat(averageComp[i]))
		}
	} 

	var chart = c3.generate({
	    bindto: '#chart',
	    data: {
	    	x: 'x',
	    	onclick: function(d, element) {
	    		// window.location= "/student/1/show"
	    	},
	        columns: [

	        	students,
	            presentData,
	            absentData
	        ],
	        type: 'bar'
	    },
	    bar: {
	        width: {
	            ratio: 0.5 // this makes bar width 50% of length between ticks
	        }
	        // or
	        //width: 100 // this makes bar width 100px
	    },
	    axis: {
        x: {
            type: 'category' // this needed to load string x value
        }
    }
	});

	// setTimeout(function () {
	//     chart.load({
	//         columns: [
	//             ['data3', 130, -150, 200, 300, -200, 100]
	//         ]
	//     });
	// }, 1000);

	var mychart = c3.generate({
		bindto: '#compChart',
	    data: {
	    	
	    	//hardcoded redirect to test, will have to make dynamic
	    	onclick: function(d, element) {
	    		window.location= "/cohort/1/homework/1/show"
	    	},
	        
	        columns: [
	        	hwComps
	        ]
	    }
	});
});
