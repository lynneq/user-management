// $(document).ready(function(){
// 	$("input[type='submit']").attr("disabled", true);
// 
// 	$("#user_name").blur(function(){
// 		var user_name = $("#user_name").val();
// 		if(user_name =='')
// 			return;
// 	 
// 		$.ajax({
// 			type: "POST",
// 			data: "user_name="+user_name,
// 			url : "/users/utility/validate_name",
// 			success : function(data){
// 				$('#nameError').detach()
// 				nameErrorDiv = $('<div id="nameError"/>');
// 				
// 				if(data=='fail'){
// 					nameErrorDiv.append("User name exist, please use enter a different name")
// 				    $("#user_name_div").append(nameErrorDiv);
// 				}
// 				else{
// 				    $("input[type='submit']").attr("disabled", false);
// 				}
// 			}
// 		});	
// 	});
// 
// 	$("#new_user").submit(function() {
// 				
// 		var error_msg = "";
// 		var user_name = $("#user_name").val();
// 		var user_password = $("#user_password").val();
// 		var user_password_confirmation = $("#user_password_confirmation").val();
// 		var user_email = $("#user_email").val();
// 		
// 		if( user_name == '') {
// 			error_msg +="Username is empty <br>";
// 		};
// 		if( user_password == '') {
// 			error_msg +="Password is empty <br>";
// 		};
// 		if( user_password_confirmation == '') {
// 			error_msg +="Password confirmation is empty <br>";
// 		};
// 		if( user_password_confirmation != user_password) {
// 			error_msg +="Password confirmation doesn't match Password <br>";
// 		};	
// 		if( user_email == '') {
// 			error_msg +="Email is empty <br>";
// 		};
// 		var emailRegExp = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
// 		if( !emailRegExp.test(user_email) ){
// 			error_msg += "Email format is invalid <br>";
// 	 	};
// 			
// 		if(error_msg!=""){
// 			// alert(error_msg);
// 			$('#errorMessage').detach()
// 			
// 			errorMessageDiv = $('<div id="errorMessage"/>');
// 			errorMessageDiv.append(error_msg);
// 			
// 			$('#new_user').append(errorMessageDiv);
// 
// 			return false;
// 		}
// 	})
// });