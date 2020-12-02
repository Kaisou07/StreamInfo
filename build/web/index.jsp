<%@page import="Model.Dados" %>
<%@page import="listarClientes.listarClientes" %>
<%@page import="ListarFilmes.ListarFilmes" %>
<%@page import="java.util.ArrayList" %>

<%
    listarClientes dao = new listarClientes();
    ArrayList<Dados> lista = dao.listar();
%>
<%
    Integer id = 0;
    ListarFilmes daofilme = new ListarFilmes();
    ArrayList<Dados> listafilme = daofilme.listarfilme();
%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="lib/img/star-movie.png" sizes="32x32"/>
        <title>Clark Stream</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <link href="lib/css/card.css" rel="stylesheet" type="text/css"/>
        <link href="lib/css/style.css" rel="stylesheet" type="text/css"/>

    <body>
        <div class="container">

            <%@include file="lib/includes/navbar.jsp" %>


            <div class="container header">
                <a href="login.jsp" class="header-btn"><i class="fa fa-user"></i>Conta</a>
            </div>

            <div class="container series">
                <%
                    if (listafilme.size() > 0) {
                %> 
                <h3>Filmes Populares</h3>
                <div class="row">

                    <% for (Dados ConteudoFilme : listafilme) {%>
                    <div class="col-md-6">
                        <div class="row">
     
                            <%id = ConteudoFilme.getId_filme();%>
                            <div class="col-9"><a id="id" href="desc_filme.jsp?id=<%=id%>"><img src="<%= ConteudoFilme.getImg_filme()%>" alt="<%= ConteudoFilme.getNome_filme()%>"></a></div>
                        </div>
                    </div>
                    <% } %>
                </div>
                <%
                } else {
                %>
                <p>Não existem clientes cadastrados!</p>
                <%
                    }
                %>   
            </div>

            <br><br>


            <!--      <div class="container" style="width: 25%">
            <%
                if (lista.size() > 0) {
            %>
           <h5 class="text-light">Os <%= lista.size()%> melhores visitantes</h5>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Nome Completo</th>
                        <th scope="col">E-Mail</th>
                    </tr>
                </thead>
                <tbody>
            <% for (Dados conteudo : lista) {%>
            <tr>
                <td class="text-light"><%= conteudo.getNome_cliente()%></td>
                <td class="text-light"><%= conteudo.getEmail_cliente()%></td>
            </tr>
            
            <% } %>
    </tbody>
</table> 
            <%
            } else {
            %>
            <p>Não existem clientes cadastrados!</p>
            <%
                }
            %>    
        </div>
            -->
            <%@include file="lib/includes/footer.jsp" %>
        </div>

    </body>
</html>
