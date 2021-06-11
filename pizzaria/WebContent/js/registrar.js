$(document).ready(function () {
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
		    var json = {
				nome: document.getElementById("nome").value,
				sobrenome: document.getElementById("sobrenome").value,
				celular: document.getElementById("celular").value,
				email: document.getElementById("email").value,
				senha: document.getElementById("senha").value
			};   
			
			$.ajax({
	    		url:"UsrServlet",
	            data: json,
	            type: "post",
	            success: function(resp){
	            	if(resp == "true"){	
	                	alert("Cadastro realizado com sucesso!");
						cleanForm();						
	                }else{
	                	alert(resp);
	        	}
	    	}
	    });          
			
        }
    });

	function cleanForm(){
		document.getElementById("nome").value = "",
		document.getElementById("sobrenome").value = "",
		document.getElementById("celular").value = "",
		document.getElementById("email").value = "",
		document.getElementById("senha").value = "";
		$("#form-registrar").data('validator').resetForm();
	}
});

