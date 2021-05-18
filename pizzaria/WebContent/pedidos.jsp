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
        <title>Uni9 Delivery - Meus Pedidos</title>
    </head>        
    <body>
        <nav class="navbar navbar-expand-md navbar-light fixed-top bg-white">
         	<a class="navbar-brand" href="./index.jsp"><img src="./img/logo3.png"></a>
        <button
        class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
        aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"> 
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="./index.jsp">Bem-Vindo<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./index.jsp#menu">Menu</a>
                </li>
              	<li class="nav-item">
                    <a class="nav-link" href="./pedidos.jsp">Pedidos</a>
                </li>                    
                <li class="nav-item"> 
                    <a class="nav-link" href="./login.jsp">Login</a>
                </li>                    
                <li class="nav-item">
                  	<a class="nav-link" href="./registrar.jsp">Registrar-se</a>
                </li>
            </ul>
        </div>
    	</nav> 
    	<div class="maincontent">
        <div class="container">
            <section id="menu">
                <div class="block menu1">
                    <div class="buttons-container">
                        <a href="#" class="h3 button--is-active">Meus Pedidos</a>
                    </div>
                    <!-- Start Pizza Menu -->
                    <div class="menu menu--is-visible" id="pizzaMenu" data-aos="fade-up">
                        <div class="item row align-items-center">
                            <div class="col-sm-3 pr-5">
                                <img class="product-img" src="./img/pizza-1.png">
                            </div>
                            <div class="details col-sm-9">
                                <div class="item__header">
                                   <h3 class="item__title">Cheese Pizza</h3>
                                   <span class="item__dots"></span>
                                   <span class="item__price">$29</span>
                               </div>
                               <div class="alert alert-success" role="alert">
                               		<label>17/05/2021</label>
                               		<label> - Entregue</label>
                               </div>
                           </div>
                       </div>
                       <div class="item row align-items-center">
                        <div class="col-sm-3 pr-5">
                            <img class="product-img" src="./img/pizza-2.png">
                        </div>
                            <div class="details col-sm-9">
                                <div class="item__header">
                                   <h3 class="item__title">Hot Pastrami</h3>
                                   <span class="item__dots"></span>
                                   <span class="item__price">$25</span>
                               </div>
                               <div class="alert alert-danger" role="alert">
                               		<label>17/05/2021</label>
                               		<label> - Cancelado</label>
							 	</div>
                           </div>
                       </div>
                       <div class="item row align-items-center">
                        <div class="col-sm-3 pr-5">
                            <img class="product-img" src="./img/pizza-3.png">
                        </div>
                        <div class="details col-sm-9">
                            <div class="item__header">
                               <h3 class="item__title">Classic Pizza</h3>
                               <span class="item__dots"></span>
                               <span class="item__price">$27</span>
                           </div>
                           <label>17/05/2021</label>
                       </div>
                       </div>
                       <div class="item row align-items-center">
                            <div class="col-sm-3 pr-5">
                                <img class="product-img" src="./img/pizza-4.png">
                            </div>
                            <div class="details col-sm-9">
                                <div class="item__header">
                                   <h3 class="item__title">Country Pizza</h3>
                                   <span class="item__dots"></span>
                                   <span class="item__price">$26</span>
                               </div>
                               <label>17/05/2021</label>
                           </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
           <!-- End Pizza Menu -->           
    <!-- End block -->
            </section>
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