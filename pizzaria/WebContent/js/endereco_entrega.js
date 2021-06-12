$(document).ready(function () {
    $("#form-cadastrar-endereco").validate({	 
		errorClass: "is-invalid",
		validClass: "is-valid",
		errorElement: "div",
        rules: {
            cep: {
                required: true,
                minlength: 9,
				maxlength: 9
            },
            bairro: {
				required: true,
            },
            rua: {
				required: true,
            },
            /*numero: {
				required: true,
            },*/
            complemento: {
				required: true,
            },
			cidade: {
				required: true,
            }
        },
		messages:{
			 cep: {
				required: "CEP é obrigatório",
                minlength: "Digite um CEP válido",
				maxlength: "Digite um CEP válido"
            },
            bairro: "Bairro é obrigatório",
            rua: "Rua é obrigatório",
            //numero: "Número é obrigatório",
            complemento: "Complemento é obrigatório",
			cidade: "Cidade é obrigatório"		 
		},
        submitHandler: function () {
	        var json = {
				"bairro": document.getElementById("bairro").value, 
				"rua": document.getElementById("rua").value,
				"numero": document.getElementById("numero").value,
				"complemento": document.getElementById("complemento").value,
				"cep": document.getElementById("cep").value,
				"cidade": document.getElementById("cidade").value,
				"estado": document.getElementById("estado").value
				};

	        $.ajax({
	            url:"EnderecoServlet",
	            data: json,
	            type: "post",
	            success: function(resp){
	            	if(resp == "true"){
	            		document.location.reload(true);
	            	}else{
	            		alert(resp);
	            	}
	           }
	       });            
    	}  
    });
});

function finalizar_pedido(){
   alert("Obrigado! O seu pedido está sendo preprado e logo chegará até você!");		   	
}



  
    
