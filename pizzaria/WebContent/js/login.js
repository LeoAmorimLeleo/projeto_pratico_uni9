function autenticar(){ 
	var json = {
    	email: document.getElementById("email").value,
    	senha: document.getElementById("senha").value
    };
    if(json.email && json.senha){
    	$.ajax({
	        url:"LoginServlet",
	        data: json,
	        type: "post",
	        success: function(resp){
		        if(resp == "true"){
		        	document.location = "./index.jsp";
		        }else{
		       		alert(resp);
		        }
        	}
       });        
	}else{
		alert("Digite e-mail e senha");
	}                    
}             