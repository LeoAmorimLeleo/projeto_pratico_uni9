<%@page import="model.PizzaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Pizza"%>
<%@page import="model.Bebida"%>
<%@page import="model.BebidaDAO"%>
<%@page import="model.Sobremesa"%>
<%@page import="model.SobremesaDAO"%>
<%@page import="model.UsuarioBean"%>
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
                    
                    	<%
							UsuarioBean usuario = (UsuarioBean)session.getAttribute("usuario");
							if(usuario != null){
								%>
								<li class="nav-item active"> 
									<a class="nav-link" href="./index.jsp">Bem-Vindo - <%=usuario.getNome()%></a>
								</li>
								<li class="nav-item">
                    				<a class="nav-link" href="./index.jsp#menu">Menu</a>
                    			</li>   
                    			 <li class="nav-item"> 
                        		<a class="nav-link" href="./logout.jsp">Sair</a>
                        	</li>
						<%} else{
							%>
							<li class="nav-item active"> 
							 	<a class="nav-link" href="./index.jsp">Bem-Vindo<span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
                    				<a class="nav-link" href="./index.jsp#menu">Menu</a>
                    			</li>
                    			<li class="nav-item"> 
                    				<a class="nav-link" href="./login.jsp">Login</a>
                    			</li>                    
                    			<li class="nav-item">
                    				<a class="nav-link" href="./registrar.jsp">Registrar-se</a>
                    			</li>
							 
						<%}	%>                
                                 
    </nav>
    
    <body>
        <div class="block hero1 my-auto" style="background-image:url(https://cdn.pixabay.com/photo/2015/04/28/21/20/pizza-744405_1280.jpg);">
            <div class="container-fluid text-center">
                 <h1 class="display-2 text-white" data-aos="fade-up" data-aos-duration="1000"
                data-aos-offset="0">Uni9 Delivery de Pizzaria</h1>
                <p class="lead text-white" data-aos="fade-up" data-aos-duration="1000"
                data-aos-delay="600">Deliciosos sabores de pizzas, com várias variedades!</p>
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
                        <%
                        ArrayList<model.Pizza> lista = new ArrayList<model.Pizza>();
                        try{
                            PizzaDAO pDAO = new PizzaDAO();
                            lista = pDAO.getLista();
                        }catch(Exception ex){
                            out.print(ex);
                        }
                        
                        for(Pizza p:lista){
                    	%>
                     <div class="item row align-items-center">
                                <div class="col-sm-3 pr-5">
                                    <img class="product-img" src="./img/pizza-1.png" <%p.getFoto();%>>
                                </div>
                                <div class="details col-sm-9">
                                    <div class="item__header">                                    	
                                         <h3 class="item__title"><%=p.getSabor()%></h3>
 										<span class="item__dots"></span>
 										<span class="item__price">R$ <%=p.getValor()%></span>
                                    </div>
                                    <p class="item__description"><%=p.getDescricao()%></p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="<%=p.getId()%>" data-name="<%=p.getSabor()%>" data-price="<%=p.getValor()%>" data-quantity="1"
                                    data-image="./img/pizza-1.png">Carrinho</button>
                                </div>
                            </div>
                   
                    	<% } %>  
                    	</section>						
                    	                                                  
                        <!-- End Pizza Menu -->
                        
                        <!-- Start Coffee Menu -->
                        <div class="menu" id="coffeeMenu">
                                        
                        <%
                        ArrayList<model.Bebida> lista1 = new ArrayList<model.Bebida>();
                        try{
                            BebidaDAO tDAO = new BebidaDAO();
                            lista1 = tDAO.getLista();
                        }catch(Exception ex){
                            out.print(ex);
                        }
                        
                        for(Bebida t:lista1){
                    	%>          
                    	       
                     <div class="item row align-items-center">
                                <div class="col-sm-3 pr-5">
                                    <img class="product-img" src="./img/Coca.png" <%t.getFoto();%>>
                                </div>
                                <div class="details col-sm-9">
                                    <div class="item__header">                                    	
                                         <h3 class="item__title"><%=t.getNome()%></h3>
 										<span class="item__dots"></span>
 										<span class="item__price">R$ <%=t.getValor()%></span>
                                    </div>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="<%=t.getId()%>" data-name="<%=t.getNome()%>" data-price="<%=t.getValor()%>" data-quantity="1"
                                    data-image="./img/Coca.png">Carrinho</button>
                                </div>
                            </div>                   
                    	<% } %>
                    	</div>                                              
                        </section>						
                            <!-- End Coffee Menu -->
                        <!-- Start Noodles Menu -->
                        
                        <div class="menu" id="noodlesMenu">
                                                   <%
                        ArrayList<model.Sobremesa> lista2 = new ArrayList<model.Sobremesa>();
                        try{
                            SobremesaDAO tDAO = new SobremesaDAO();
                            lista2 = tDAO.getLista();
                        }catch(Exception ex){
                            out.print(ex);
                        }
                        
                        for(Sobremesa t:lista2){
                    	%>          
                    	       
                     <div class="item row align-items-center">
                                <div class="col-sm-3 pr-5">
                                    <img class="product-img" src="./img/brigadeiro.png" <%t.getFoto();%>>
                                </div>
                                <div class="details col-sm-9">
                                    <div class="item__header">                                    	
                                         <h3 class="item__title"><%=t.getNome()%></h3>
 										<span class="item__dots"></span>
 										<span class="item__price">R$ <%=t.getValor()%></span>
                                    </div>
                                    <p class="item__description"><%=t.getDescricao()%></p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="<%=t.getId()%>" data-name="<%=t.getNome()%>" data-price="<%=t.getValor()%>" data-quantity="1"
                                    data-image="./img/brigadeiro.png">Carrinho</button>
                                </div>
                            </div>                   
                    	<% } %>
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
        <footer class="block footer1 footer text-center">©2020 - UNI9 Delivery de Pizza - Todos os direitos reservados</footer> 
        <script src="js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
        <script src="js/custom-general.js"></script>
    </body>

</html>