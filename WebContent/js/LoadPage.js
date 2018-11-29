function reload(username) {

	console.log("username");
	//var username = $(this).data("username");
	
	// var name = document.getElementById(username);
	// var name = $(this).data('username');
	// document.getElementById("#name").innerHTML = ""+this.username;

	$.ajax({
		type : "GET",
		data : "username=" +username,
		url : "DeleteByName",
		dataType : 'script',
		
		success : function(response) {
			
			console.log("success " + response);
			
			if(response == true)                    //response =  deleted record..(shown by servlet)
                $(".row"+ username).remove();
			     setTimeout(function(){
		           location.reload(); 
		      }, 1000); 
              },
           error: function(XMLHttpRequest, Status) {
           alert("Status: " + Status);
		}
	});
}

/*
 * function reload(){
 * 
 * var uname= []; $("input[username='username']").each(function() {
 * 
 * uname.push($(this).val()); }); console.log(uname); input_box= ("are u
 * sure...?"); if(input_box==true){
 * 
 * $.ajax({ url : 'DeleteByName.do?username='+username, type : "GET", async :
 * false, success : function() { $("input[username='username']").each(function() {
 * $('#' + $(this).val()).remove(); }); alert('Record(s) Deleted'); } });
 * 
 * $('#' + rowid).remove(); alert('Record Deleted'); } else {
 * 
 * return false;
 *  } }
 */

// data : $('username').val(),

/* $('[name="username"]').val(data.username); */

/*
 * $(document).on('click' , '#button' , function() {
 * 
 * alert("Hello..."); })
 */

/*
 * var rindex,table = document.getElementById("table"); table.deleteRow(rindex);
 */

/*
 * document.getElementById("table").deleteRow(0); }
 */

/*
 * $("#table").on('click', '.btbutton', function () {
 * $(this).closest('tr').remove(); });
 */

/*
 * $(document).ready(function() { $("#button").click(function() {
 * 
 * $(this).css("background-color","#FF3700");
 * 
 * $(this).fadeOut(400, function(){ $(this).remove(); }); }); });
 */

/*
 * $(document).ready(function() {
 * 
 * $("#button").click(function() { var username = +this.username;
 * 
 * $.ajax({ url: "DeleteByName", type: "post", data: { username : username, },
 * success : function(data){ alert(data); // alerts the response from jsp
 * location.reload(); } }); }); });
 */

// ////////////////////////////////////////
/*
 * function reload(username) {
 * 
 * console.log(username);
 * 
 * var $del = $(this).parent().parent();
 * 
 * $.ajax({ url : "DeleteByName", type : "Get", data: "username="+username ,
 * 
 * dataType : 'script', format : 'js', success : function(data) {
 * 
 * console.log("success"+data);
 * 
 * $del.fadeOut().remove();
 * 
 * //$('#div').html(data); } }); }
 */