function addrow() {

	var d1 = {
		"username" : $('#id1').val(),
		"emailid" : $('#id2').val(),
		"mob" : $('#id3').val(),
		"dob" : $('#id4').val(),
		"gender" : $('#id5').val(),
		"password" : $('#id6').val()
	}
	$.ajax({
		url : 'AddUser',
		type : 'get',
		data : d1,
		dataType : 'json',
		success : function(response) {
			
			
			$('#table').append(
					
					"<tr><td>" + response.username + "</td><td>" + response.emailid
							+ "</td><td>" + response.mob + "</td></tr>" + response.dob
							+ "</td></tr>" + response.gender + "</td></tr>"
							+ response.password + "</td></tr>");
			if(response==true)
			setTimeout(function(){
		           location.reload(); 
		      }, 1000);
		},
		error : function() {
			console.log('error');
		}
	});
}