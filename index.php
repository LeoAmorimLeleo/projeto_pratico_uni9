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
        <title>Uni9 Delivery de Pizza</title>
    </head>      
    <body>
        <?php include './includes/nav.php' ?>
        <div class="block hero1 my-auto" style="background-image:url(https://cdn.pixabay.com/photo/2015/04/28/21/20/pizza-744405_1280.jpg);">
            <div class="container-fluid text-center">
                <h1 class="display-2 text-white" data-aos="fade-up" data-aos-duration="1000"
                    data-aos-offset="0">Uni9 Delivery de Pizza</h1>
                <p class="lead text-white" data-aos="fade-up" data-aos-duration="1000"
                    data-aos-delay="600">Deliciosos sabores de pizzas, com varias variedade!</p>
                <a href="#menu" class="btn-text lead d-inline-block text-white border-top border-bottom mt-4 pt-1 pb-1"
                    data-aos="fade-up" data-aos-duration="1000" data-aos-delay="1200">Veja o Menu</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="maincontent">
            <div class="container">
                <section id="menu">
                    <div class="block menu1">
                        <?php include './includes/menu-horizontal.php' ?>
                        <?php include './includes/lista-de-produtos.php' ?>                        
                    </div>                    
                </section>
            </div>
        </div>
        <div class="nav-item my-cart-icon">
            <img src="./img/cart.svg" style="width:20px;"> <span class="badge badge-notify my-cart-badge"> </span>
        </div>
        <?php include './includes/footer.php';?>     
        <script src="js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script src="./js/mycart.js"></script>
        <script src="./js/mycart-custom.js"></script>
        <script>
            AOS.init();
        </script>
        <script src="js/custom-general.js"></script>
    </body>
</html>