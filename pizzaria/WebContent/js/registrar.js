$(document).ready(function () {
	$("label.error").hide();
    $("#form-registrar").validate({	 
		errorClass: "is-invalid",
		validClass: "is-valid",
		errorElement: "div",
        rules: {
            nome: {
                required: true,
                minlength: 3
            },
            senha: {
				required: true,
                minlength: 5
            },
            confirmarSenha: {
				required: true,
				equalTo: "#senha"
            },
            celular: {
				required: true,
                minlength: 15,
				maxlength: 15
            },
            email: {
				required: true,
        		email: true
            }
        },
		messages:{
			nome: "Nome é obrigatório",
            senha: "Senha é obrigatório",
            confirmarSenha:{
				required: "Confirmar senha é obrigatório",
				equalTo: "O campo confirmar senha deve ser igual ao campo senha"
			},
            celular: {
				required : "Celular é obrigatório",
				minlength: "Digite um celular válido",
				maxlength: "Digite um celular válido"
			},
            email: {
				required: "E-mail é obrigatório",
      			email: "Preencha com um E-mail válido",
			}		 
		},
        submitHandler: function () {
			$.ajax({
	    		url:"UsrServlet",
	            data: json,
	            type: "post",
	            success: function(resp){
	            	if(resp == "true"){	
	                	alert("Cadastro realizado com sucesso!");
	
	               		//$("#form-registrar").validate().resetForm();	
	                }else{
	                	alert(resp);
	        	}
	    	}
	    });            
			
			salvar_dados();
        }
    });

   function salvar_dados(){        	
		var camponome = document.getElementById("nome").value;
	    var camposobrenome = document.getElementById("sobrenome").value;
	    var camposenha1 = document.getElementById("senha").value;
	    var camposenha2 = document.getElementById("confirmarSenha").value;
	    var campocelular = document.getElementById("celular").value;
	    var campoemail = document.getElementById("email").value;                
	               
	    var json = {"nome":camponome,"sobrenome":camposobrenome,"celular":campocelular,"email":campoemail,"senha":camposenha1};
	                                 
	    $.ajax({
	    		url:"UsrServlet",
	            data: json,
	            type: "post",
	            success: function(resp){
	            	if(resp == "true"){	
	                	alert("Cadastro realizado com sucesso!");
	
	               		//$("#form-registrar").validate().resetForm();	
	                }else{
	                	alert(resp);
	        	}
	    	}
	    });            
	} 
});

