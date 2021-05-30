<%@page import="model.EnderecoDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.EnderecoBean"%>
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
    <nav class="navbar navbar-expand-md navbar-light fixed-top bg-white">
        <a class="navbar-brand" href="./index.jsp">
            <img src="./img/logo3.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active"> <a class="nav-link" href="./index.jsp">Bem-Vindo<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item"> <a class="nav-link" href="./index.jsp#menu">Menu</a>
                </li>


                <li class="nav-item"> <a class="nav-link" href="./login.jsp">Login</a>
                </li>

                <li class="nav-item"> <a class="nav-link" href="./registrar.jsp">Registrar-se</a>
                </li>

            </div>
        </nav>
        <div class="container"> 
          <div class="row justify-content-around">
            <div class="col-4">
              <form action="UsrServlet" method="GET">
                <h3 class="mb-4 text-center">Cadastrar novo endereço</h3>
                <div class="form-group">
                    <input name="bairro" type="text" class="form-control" id="bairro" aria-describedby="bairro"
                    placeholder="Bairro" required="">
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
                    <input name="cep" type="text" class="form-control"  id="cep" aria-describedby="cep"
                    placeholder="Cep" required="">
                </div>                             
                <div class="form-group">
                    <input name="cidade" type="text" class="form-control"  id="cidade" aria-describedby="cidade"
                    placeholder="Cidade" required="">
                </div> 
                <div class="form-group">
                    <input name="estado" type="email" class="form-control"  id="estado" aria-describedby="estado"
                    placeholder="Estado" required="">
                </div> 
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
                            	<a class="list-group-item list-group-item-action" data-idenderecoentrega="<%=p.getId()%>" id="<%=p.getId()%>" data-toggle="list" href="#" role="tab" aria-controls="profile"><%=p.getBairro()%></a>                                      
                          <%  }                            
                         
                        	}catch(Exception ex){
                            out.print(ex);
                        }
                    %>      	
            <button type="button" class="btn btn-dark btn-round btn-block" onClick="finalizar_pedido()">Confirmar pedido</button> 
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
<script src="./js/mycart-custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
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
               console.log(resp);
               alert(resp);
               var vetor_json = JSON.parse(resp);
               alert(vetor_json[0].msg);
           }
       });            
    }   
    
    function finalizar_pedido(){
	
    	var products = JSON.parse(localStorage.products)
    	console.log(products);
    	var testeer = [];
    	  $.each(products, function(index, value){
    	        	var ob = {};    	        	
    	        	ob.id =	value.id;  
    	        	testeer.push(value.id);
    	  });
    	
    	console.log(testeer);
        var idEndereco = document.getElementsByClassName("active");
        var enderoDeEntrega = idEndereco[1].dataset.idenderecoentrega;        
    	
        var json = {"products":testeer,"enderoDeEntrega":enderoDeEntrega};
        
    	  $.ajax({
               url:"PedidoServlet",
               data: json,
               type: "post",
               success: function(resp){
                  console.log(resp);
                  alert(resp);
                  var vetor_json = JSON.parse(resp);
                  alert(vetor_json[0].msg);
              }
          });
    }
    
    
</script>
<script src="js/custom-general.js"></script>
<script src="./js/mycart.js"></script>
<script src="./js/mycart-custom.js"></script>
</body>
</html>