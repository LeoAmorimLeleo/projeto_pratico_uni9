<%@page import="model.EnderecoDao"%>
<%@page import="model.UsuarioBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.EnderecoBean"%>
<%@page import="model.UsuarioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">    
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css" />
    <script src="./js/jquery.min.js"></script>
    <link rel="icon" href="./img/icon.png" />
    <title>Uni9 Delivery - Endereço de Entrega</title>
</head>       
<body>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">          
          <h4 class="modal-title">Recebemos o seu pedido</h4>
          <button type="button" class="close btn-redirecionar-index" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p>Já começamos a preparar o seu pedido! Ele chegará até você em até 40 minutos!</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-dark btn-round btn-block btn-redirecionar-index" data-dismiss="modal">Ok</button>
        </div>
      </div>
      
    </div>
  </div>	
    <nav class="navbar navbar-expand-md navbar-light fixed-top bg-white">
        <a class="navbar-brand" href="./index.jsp">
            <img src="./img/logo3.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
            
            		<%
							UsuarioBean usuario = (UsuarioBean)session.getAttribute("usuario");
				    		if(usuario == null){
				    			response.sendRedirect("login.jsp");
				    		}else{%>
				    		
				    			<li class="nav-item"> 
								<a class="nav-link" href="./index.jsp">Bem-Vindo - <%=usuario.getNome()%></a>
							</li>
							<li class="nav-item">
                    			<a class="nav-link" href="./index.jsp#menu">Menu</a>
                    		</li>   
                    		<li class="nav-item"> 
                        		<a class="nav-link" href="./logout.jsp">Sair</a>
                        	</li>
				    	<%} %>  
            </div>
        </nav>
        <div class="container"> 
          <div class="row justify-content-around">
            <div class="col-4">
              <form name="end" action="UsrServlet" method="GET">
                <h3 class="mb-4 text-center">Cadastrar novo endereço</h3>                                           
                <div class="form-group">
                    <input name="cep" type="text" class="form-control"  id="cep" aria-describedby="cep"
                    placeholder="Cep" onblur="pesquisacep(this.value);" required="">
                </div>
                <div class="form-group">
                    <input name="bairro" type="text" class="form-control" id="bairro" aria-describedby="bairro"
                    placeholder="Bairro" required>
                </div>
                <div class="form-group">
                    <input name="rua" type="text" class="form-control" id="rua"
                    placeholder="Rua" required="">
                </div>                             
                <div class="form-group">
                    <input name="numero" type="text" class="form-control" id="numero"
                    placeholder="Numero" required="">
                </div>                             
                <div class="form-group">
                    <input name="complemento" type="text" class="form-control" id="complemento"
                    placeholder="Complemento" required="">
                </div>                               
                <div class="form-group">
                    <input name="cidade" type="text" class="form-control"  id="cidade" aria-describedby="cidade"
                    placeholder="Cidade" required="">
                </div> 
                <select id="estado" name="estado"  class="form-control" aria-describedby="estado">
				    <option value="AC">Acre</option>
				    <option value="AL">Alagoas</option>
				    <option value="AP">Amapá</option>
				    <option value="AM">Amazonas</option>
				    <option value="BA">Bahia</option>
				    <option value="CE">Ceará</option>
				    <option value="DF">Distrito Federal</option>
				    <option value="ES">Espírito Santo</option>
				    <option value="GO">Goiás</option>
				    <option value="MA">Maranhão</option>
				    <option value="MT">Mato Grosso</option>
				    <option value="MS">Mato Grosso do Sul</option>
				    <option value="MG">Minas Gerais</option>
				    <option value="PA">Pará</option>
				    <option value="PB">Paraíba</option>
				    <option value="PR">Paraná</option>
				    <option value="PE">Pernambuco</option>
				    <option value="PI">Piauí</option>
				    <option value="RJ">Rio de Janeiro</option>
				    <option value="RN">Rio Grande do Norte</option>
				    <option value="RS">Rio Grande do Sul</option>
				    <option value="RO">Rondônia</option>
				    <option value="RR">Roraima</option>
				    <option value="SC">Santa Catarina</option>
				    <option value="SP" selected>São Paulo</option>
				    <option value="SE">Sergipe</option>
				    <option value="TO">Tocantins</option>
				</select>
                <button type="button" class="btn btn-dark btn-round btn-block" onClick="salvar_dados()">Registrar</button> 
            </form>       
        </div>
        <div class="col-4">
          <div class="list-group" id="list-tab" role="tablist">
            <div class="row">
                <h3 class="mb-4 text-center">Selecionar endereço cadastrado</h3>
            </div>  
               <%
                       ArrayList<model.EnderecoBean> lista = new ArrayList<model.EnderecoBean>();
                        try{
                            
                            EnderecoDao enderecoDao = new EnderecoDao();
                            lista = enderecoDao.get();
                            
                            for(EnderecoBean p:lista){
                            %>
                            	<a class="list-group-item list-group-item-action" data-idenderecoentrega="<%=p.getId()%>" id="<%=p.getId()%>" data-toggle="list" href="#" role="tab" aria-controls="profile">Bairro: <%=p.getBairro()%>
                            		<p>Rua: <%=p.getRua()%>, N°:<%=p.getNumero()%>,CEP: <%=p.getCep()%>, Cidade: <%=p.getCidade()%>, Estado: <%=p.getEstado()%> </p>
                            	</a>                                      
                          <%  }                            
                         
                        	}catch(Exception ex){
                            out.print(ex);
                        }
                    %>      	
            <button type="button" class="btn btn-dark btn-round btn-block" id="btn-finalizar-pedido">Confirmar pedido</button> 
        </div> 
    </div>
</div>
</div>
	<div class="nav-item my-cart-icon">
         <img src="./img/cart.svg" style="width:20px;"> 
         <span class="badge badge-notify my-cart-badge"> </span>
    </div>   
<footer class="block footer1 footer text-center">©2020 - UNI9 Delivery de Pizza - Todos os direitos reservados</footer>    
<script src="./js/mycart.js"></script>
<script src="./js/buscar-endereco-por-cep.js"></script>
<script src="./js/mycart-custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
<script>
    AOS.init();

    function salvar_dados(){        	

        var bairro = document.getElementById("bairro").value;
        var rua = document.getElementById("rua").value;
        var numero = document.getElementById("numero").value;
        var complemento = document.getElementById("complemento").value;
        var cep = document.getElementById("cep").value;
        var cidade = document.getElementById("cidade").value;
        var estado = document.getElementById("estado").value;


        var json = 
        {"bairro":bairro,"rua":rua,"numero":numero,"complemento":complemento,"cep":cep,"cidade":cidade,"estado":estado};

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
    
    function finalizar_pedido(){
    	alert("Obrigado! O seu pedido está sendo preprado e logo chegará até você!");		   	
    }
</script>

<script src="./js/login.jsp"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/additional-methods.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
            <script>
                AOS.init();
      
        </script>
        <script>
        $(document).ready(function(){
        	$('$end').validate({
        	      rules:{
        	    	  cep: {
        	                required: true,
        	               
        	            },
        	            bairro: {
        	                required: true,
        	                
        	            }
        	      },
        	      rua: {
  	                required: true,
  	                
  	            },
  	          numero: {
  	                required: true,
  	               
  	            }
  	      },
  	      
  		  complemento: {
              required: true,
            
          },
          cidade: {
              required: true,
              
          }
    },
    
    estado: {
        required: true,
        
    }
    }

        	      
        	        
        	    });

        	});
        
        
        </script>
	






<script src="js/custom-general.js"></script>
<script src="./js/mascaras.js"></script>
<script src="./js/mycart.js"></script>
<script src="./js/mycart-custom.js"></script>
</body>
</html>