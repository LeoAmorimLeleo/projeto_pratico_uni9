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
                    <input name="nome" type="text" class="form-control" id="nome" aria-describedby="nome"
                    placeholder="Nome" required="">
                </div>
                <div class="form-group">
                    <input name="sobrenome" type="text" class="form-control" id="sobrenome"
                    placeholder="Sobrenome" required="">
                </div>                             
                <div class="form-group">
                    <input name="senha1" type="password" class="form-control" id="senha1"
                    placeholder="Senha" required="">
                </div>                             
                <div class="form-group">
                    <input name="senha2" type="password" class="form-control"  id="senha2"
                    placeholder="Confirme sua senha" required="">
                </div>                             
                <div class="form-group">
                    <input name="celular" type="text" class="form-control"  id="celular" aria-describedby="celular"
                    placeholder="(DDD)Celular" required="">
                </div>                             
                <div class="form-group">
                    <input name="email" type="email" class="form-control"  id="email" aria-describedby="emailHelp"
                    placeholder="E-mail" required="">
                </div> 
                <div class="form-group form-check">
                    <input name="confirmar" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label small text-muted" for="exampleCheck1">Enviar promoções via e-mail?</label>
                </div>
                <button type="button" class="btn btn-dark btn-round btn-block" onClick="salvar_dados()">Registrar</button> 
            </form>       
        </div>
        <div class="col-4">
          <div class="list-group" id="list-tab" role="tablist">
            <div class="row">
                <h3 class="mb-4 text-center">Selecionar endereço cadastrado</h3>
            </div>
            <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="      #list-home" role="tab" aria-controls="home">Home</a>
            <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#     list-profile" role="tab" aria-controls="profile">Profile</a>
            <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#    list-messages" role="tab" aria-controls="messages">Messages</a>
            <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#    list-settings" role="tab" aria-controls="settings">Settings</a>
            <button type="button" class="btn btn-dark btn-round btn-block" onClick="salvar_dados()">Confirmar pedido</button> 

        </div> 
    </div>
</div>
</div>
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();

    function salvar_dados(){        	

        var camponome = document.getElementById("nome").value;
        var camposobrenome = document.getElementById("sobrenome").value;
        var camposenha1 = document.getElementById("senha1").value;
        var camposenha2 = document.getElementById("senha2").value;
        var campocelular = document.getElementById("celular").value;
        var campoemail = document.getElementById("email").value;


        var json = {"nome":camponome,"sobrenome":camposobrenome,"celular":campocelular,"email":campoemail,"senha":camposenha1};

        $.ajax({
            url:"UsrServlet",
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
</body>
</html>