<%@page import="Model.Dados" %>
<%@page import="desc_filme.desc_filme" %>
<%@page import="java.util.ArrayList" %>


<%
    Integer id = Integer.parseInt(request.getParameter("id"));
    desc_filme daofilme = new desc_filme();
    ArrayList<Dados> lista = daofilme.listar(id);
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
    </head>
    <%
        if (lista.size() == 1) {
    %> 
    <% for (Dados ConteudoFilme : lista) {%>

    <body style="background-image: url('<%= ConteudoFilme.getImg_filme()%>')">
        <div class="container">

            <%@include file="lib/includes/navbar.jsp" %>


            <div class="container header">
                <a href="login.jsp" class="header-btn"><i class="fa fa-user"></i>Conta</a>
            </div>

            <div class="container series">

                <h3 class="col-9"><%= ConteudoFilme.getNome_filme()%></h3>
                <div class="row">
                    <div class="col-md-6" >
                        <div class="row">
                            <div class="col-8 text-light">
                                <img src="<%= ConteudoFilme.getImg_filme()%>" alt="<%= ConteudoFilme.getNome_filme()%>">                
                            </div>           
                        </div>      <br> 
                    </div>
                    <div><p style="font-size:20px;border-radius: 10px; text-align: center;" class="font-weight-bold text-light bg-dark"><%= ConteudoFilme.getFilme_desc()%></p></div>

                </div>
                <div  style="border-radius: 10px;" class="container bg-dark" >
                    <div id="disqus_thread"></div>
                </div>
                <% } %>
                <%
                } else {
                %>
                <p>Não existem Detalhes sobre esse filme!</p>
                <%
                    }
                %>   
            </div>

            <br><br>

            <%@include file="lib/includes/footer.jsp" %>
        </div>
        <script>


            (function () {
                var d = document, s = d.createElement('script');
                s.src = 'https://clark-stream.disqus.com/embed.js';
                s.setAttribute('data-timestamp', +new Date());
                (d.head || d.body).appendChild(s);
            })();
        </script>
        <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

    </body>
</html>
