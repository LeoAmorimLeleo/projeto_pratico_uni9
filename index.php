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
                    <div class="block menu1">
                        <div class="buttons-container"> <a href="#" class="button button--is-active" data-target="pizzaMenu">Pizzas</a>
                            <a
                            href="#" class="button" data-target="coffeeMenu">Bebidas</a> <a href="#" class="button" data-target="noodlesMenu">Sobremesas</a>
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
                                    <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                        officia eaque nobis ut.</p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="1" data-name="Cheese Pizza" data-price="29" data-quantity="1"
                                    data-image="./img/pizza-1.png">Carrinho</button>
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
                                    <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                        officia eaque nobis ut.</p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="2" data-name="Hot Pastrami" data-price="25" data-quantity="1"
                                    data-image="./img/pizza-2.png">Carrinho</button>
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
                                    <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                        officia eaque nobis ut.</p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="3" data-name="Classic Pizza" data-price="27" data-quantity="1"
                                    data-image="./img/pizza-3.png">Carrinho</button>
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
                                    <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                        officia eaque nobis ut.</p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="4" data-name="Country Pizza" data-price="26" data-quantity="1"
                                    data-image="./img/pizza-4.png">Carrinho</button>
                                </div>
                            </div>
                        </div>
                        <!-- End Pizza Menu -->
                        <!-- Start Coffee Menu -->
                        <div class="menu" id="coffeeMenu">
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Cappuccino</h3>
 <span class="item__dots"></span>
 <span class="item__price">$28</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Iced Coffee</h3>
 <span class="item__dots"></span>
 <span class="item__price">$27</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Café Latte</h3>
 <span class="item__dots"></span>
 <span class="item__price">$3</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Espresso</h3>
 <span class="item__dots"></span>
 <span class="item__price">$4</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                        </div>
                        <!-- End Coffee Menu -->
                        <!-- Start Noodles Menu -->
                        <div class="menu" id="noodlesMenu">
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Chicken Noodles</h3>
 <span class="item__dots"></span>
 <span class="item__price">$16</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Egg Noodles</h3>
 <span class="item__dots"></span>
 <span class="item__price">$12</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Veg Noodles</h3>
 <span class="item__dots"></span>
 <span class="item__price">$10</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Chuck Norris Noodles</h3>
 <span class="item__dots"></span>
 <span class="item__price">$20</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                        </div>
                        <!-- End Noodles Menu -->
                    </div>
                    <!-- End block -->
                    <script src="./js/mycart.js"></script>
                    <script src="./js/mycart-custom.js"></script>
                </section>
            </div>
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