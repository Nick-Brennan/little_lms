$(function(){
	$(':checkbox').change(function(e){
		console.log(e.target.name);
		$.ajax({
			method: "POST",
			url: "/archive",
			data: {id: parseInt(e.target.name)}
		});
	});
});