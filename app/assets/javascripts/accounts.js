$(document).ready(function(){
	
	$("#new_account_form input[type='submit']").attr("disabled", true);	
	    
	$("#new_account_name_div #account_name").blur(function(){
		var account_name = $("#account_name").val();
		if(account_name =='')
			return;
	 
		$.ajax({
			type: "POST",
			data: "account_name="+account_name,
			url : "/accounts/utility/validate_name",
			success : function(data){
				$('#nameError').detach()
				nameErrorDiv = $('<div id="nameError"/>');
				
				if(data=='fail'){
					nameErrorDiv.append("Account name exist, please enter a different name")
				    $("#new_account_name_div").append(nameErrorDiv);
				}
				else{
				    $("#new_account_form input[type='submit']").attr("disabled", false);
				}
			}
		});	
	});
	
});