<!DOCTYPE html>
<html lang="pt-br">
    
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"
        />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="stylesheet" href="./css/style.css" />
        <script src="./js/jquery.min.js"></script>
        <link rel="icon" href="./img/icon.png" />
        <title>Uni9 Delivery - Cadastro</title>
    </head>
    <nav class="navbar navbar-expand-md navbar-light fixed-top bg-white"> <a class="navbar-brand" href="./index.php"><img src="./img/logo3.png"></a>
        <button
        class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
        aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                            <li class="nav-item active"> <a class="nav-link" href="./index.php">Bem-Vindo<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item"> <a class="nav-link" href="./index.php#menu">Menu</a>
                    </li>
              
                    
                    <li class="nav-item"> <a class="nav-link" href="./login.php">Login</a>
                    </li>
                    
                    <li class="nav-item"> <a class="nav-link" href="./registrar.php">Registrar-se</a>
                    </li>
              
            </div>
    </nav>
    
    <body>
        <div class="maincontent pt-0 pb-0">
            <div class="d-md-flex h-md-100 align-items-center">
                <div class="col-md-6 p-0 h-md-100">
                    <div class="block hero2 my-auto" style="background-image:url(https://cdn.pixabay.com/photo/2015/04/28/21/20/pizza-744405_1280.jpg);">
                        <div class="container-fluid text-center">
                             <h1 class="display-2 text-white" data-aos="fade-up" data-aos-duration="1000"
                            data-aos-offset="0">Uni9 Delivery Pizzaria</h1>
                            <p class="lead text-white" data-aos="fade-up" data-aos-duration="1000"
                            data-aos-delay="300">Junte-se a nós, e tenha descontos semanalmente</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-6 p-0 h-md-100 loginarea">
                    <div class="d-md-flex align-items-center h-md-100 p-3 justify-content-center">
                        <form>
                             <h3 class="mb-4 text-center">Registre-se</h3>

                            <div class="form-group">
                                <input type="text" class="form-control" id="nome" aria-describedby="nome"
                                placeholder="Nome" required="">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="sobrenome"
                                placeholder="Sobrenome" required="">
                            </div>
                             
                              <div class="form-group">
                                <input type="password" class="form-control" id="senha1"
                                placeholder="Senha" required="">
                            </div>
                             
                              <div class="form-group">
                                <input type="password" class="form-control" id="senha2"
                                placeholder="Confirme sua senha" required="">
                            </div>
                             
                             <div class="form-group">
                                <input type="text" class="form-control" id="celular" aria-describedby="celular"
                                placeholder="(DDD)Celular" required="">
                            </div>
                             
                             <div class="form-group">
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                placeholder="E-mail" required="">
                            </div>
                             
                             
                             
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label small text-muted" for="exampleCheck1">Enviar promoções via e-mail?</label>
                            </div>
                            <button type="submit" class="btn btn-dark btn-round btn-block">Registrar</button> <small class="d-block mt-4 text-center"><a class="text-gray" href="login.php">Já tem conta?</a></small>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
        <script src="js/custom-general.js"></script>
    </body>

</html>