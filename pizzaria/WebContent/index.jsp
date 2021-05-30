<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Uni9 Delivery Pizzaria</title>
    </head>
    <nav class="navbar navbar-expand-md navbar-light fixed-top bg-white"> <a class="navbar-brand" href="./index.jsp"><img src="./img/logo3.png"></a>
        <button
        class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
        aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span>
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
              
    </nav>
    
    <body>
        <div class="block hero1 my-auto" style="background-image:url(https://cdn.pixabay.com/photo/2015/04/28/21/20/pizza-744405_1280.jpg);">
            <div class="container-fluid text-center">
                 <h1 class="display-2 text-white" data-aos="fade-up" data-aos-duration="1000"
                data-aos-offset="0">Uni9 Delivery Pizzaria</h1>
                <p class="lead text-white" data-aos="fade-up" data-aos-duration="1000"
                data-aos-delay="600">Deliciosos sabores de pizzas, com varias variedade!</p>
                <a
                href="#menu" class="btn-text lead d-inline-block text-white border-top border-bottom mt-4 pt-1 pb-1"
                data-aos="fade-up" data-aos-duration="1000" data-aos-delay="1200">Veja o Menu</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="maincontent">
            <div class="container">
                <section id="menu">
                        <div class="buttons-container"> 
                        <a href="#" class="button button--is-active" data-target="pizzaMenu">Pizzas</a>
                        <a href="#" class="button" data-target="coffeeMenu">Bebidas</a>
                        <a href="#" class="button" data-target="noodlesMenu">Sobremesas</a>
                        
                        </div>
                        
                        <!-- Start Pizza Menu -->
                        <div class="menu menu--is-visible" id="pizzaMenu" data-aos="fade-up">
                        
                    	</section>						
                    	                                                  
                        <!-- End Pizza Menu -->
                        
                        <!-- Start Coffee Menu -->
                        <div class="menu" id="coffeeMenu">
                                        
                       
                    	</div>                                              
                        </section>						
                            <!-- End Coffee Menu -->
                        <!-- Start Noodles Menu -->
                        
                        <div class="menu" id="noodlesMenu">                                                
                        
                    	</div>                                              
                        </section>						
                        
                        <!-- End Noodles Menu -->
                    </div>
                    <!-- End block -->
                    <script src="./js/mycart.js"></script>
                    <script src="./js/mycart-custom.js"></script>
                </section>
            </div>
        <div class="nav-item my-cart-icon">
            <img src="./img/cart.svg" style="width:20px;"> <span class="badge badge-notify my-cart-badge"> </span>
        </div>
        <footer class="block footer1 footer text-center">
            
        </footer>
        <script src="js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
        <script src="js/custom-general.js"></script>
    </body>

</html>