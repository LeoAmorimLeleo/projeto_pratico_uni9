<%@page import="model.PizzaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Pizza"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Pizzas</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
    color: #404E67;
    background: #F5F7FA;
    font-family: 'Open Sans', sans-serif;
}
.table-wrapper {
    width: 910px;
    margin: 30px auto;
    background: #fff;
    padding: 20px;	
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 10px;
    margin: 0 0 10px;
}
.table-title h2 {
    margin: 6px 0 0;
    font-size: 22px;
}
.table-title .add-new {
    float: right;
    height: 30px;
    font-weight: bold;
    font-size: 12px;
    text-shadow: none;
    min-width: 100px;
    border-radius: 50px;
    line-height: 13px;
}
.table-title .add-new i {
    margin-right: 4px;
}
table.table {
    table-layout: fixed;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}
table.table th:last-child {
    width: 100px;
}
table.table td a {
    cursor: pointer;
    display: inline-block;
    margin: 0 5px;
    min-width: 24px;
}    
table.table td a.add {
    color: #27C46B;
}
table.table td a.edit {
    color: #FFC107;
}
table.table td a.delete {
    color: #E34724;
}
table.table td i {
    font-size: 19px;
}
table.table td a.add i {
    font-size: 24px;
    margin-right: -1px;
    position: relative;
    top: 3px;
}    
table.table .form-control {
    height: 32px;
    line-height: 32px;
    box-shadow: none;
    border-radius: 2px;
}
table.table .form-control.error {
    border-color: #f50000;
}
table.table td .add {
    display: none;
}
</style>

</head>
<body>
<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2><b>Listagem de Pizzas</b></h2></div><br><br>
                    <div class="col-md-12">
                    </div>
                </div>
            </div>
            <table class="table table-striped table table-bordered">
                    <tr>
                        <th class="table-primary">ID</th>
                        <th class="table-primary">SABOR</th>
                        <th class="table-primary">DESCRICAO</th>
                        <th class="table-primary">TAMANHO</th>
                        <th class="table-primary">VALOR</th>
                        <th class="table-primary">FOTO</th>    
                        <th class="table-primary">TIPO</th>                    
                    </tr>
                    
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
                    <tr>
                        <td><%=p.getId()%></td>
                        <td><%=p.getSabor()%></td>
                        <td><%=p.getDescricao()%></td>
                        <td><%=p.getTamanho()%></td>
                        <td><%=p.getValor()%></td> 
                        <td><%=p.getFoto()%></td>
                        <td><%=p.getTipo()%></td>
                    </tr>
                    <% } %>
            </table>
        </div>
    </div>
</div>     
</body>
</html>