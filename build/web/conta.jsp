<%@include file="lib/includes/validacao.jsp" %> 


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="lib/img/star-movie.png" sizes="32x32"/>
        <title>Conta - Clark Stream</title>
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

            <% String logado = (String) request.getSession().getAttribute("logado");
                if (logado == "TRUE") {
                    String nome = (String) request.getSession().getAttribute("nome");
                    String email = (String) request.getSession().getAttribute("email");
                    String senha = (String) request.getSession().getAttribute("senha");
                    Integer id = (Integer) request.getSession().getAttribute("id");
            %>

            <div class="container header">
                <a href="login.jsp" class="header-btn"><i class="fa fa-user"></i><%=nome%></a>
            </div>


            <br><br>

            <div class="container">
                <ul class="nav nav-pills">
                    <li class="nav-item ">
                        <a class="nav-link btn-lg active" data-toggle="pill" href="#info">Informações</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-lg" data-toggle="pill" href="#disp">Dispositivos ativos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-lg" data-toggle="pill" href="#compras">Compras</a>
                    </li>
                </ul>
                <br>
                <div class=" tab-content text-light">
                    <div id="info" class="tab-pane fade show active ">
                        <p hidden>ID:&nbsp;<label hidden><%=id%></label></p>      
                        <p>Email:&nbsp;<label><%=email%></label></p>
                        <p>Usuário:&nbsp;<label><%=nome%></label></p>
                        <p>Senha:&nbsp;<label>********</label></p>
                         <a class="" data-toggle="pill" href="#hidden" hidden></a>
                        <a class="btn btn-warning" data-toggle="pill" href="#editar">Editar Informações</a>
                        <a class="btn btn-danger" data-toggle="pill" href="#excluir">Excluir conta</a>
                    </div>
                        <div id="editar" class="tab-pane fade" style="width: 300px;">
                            <form name="alterar" method="post" action="alterar">
                        <p hidden>ID:&nbsp;<input name="txtID" id="txtID" hidden value="<%=id%>" required></p>      
                        <p>Email:&nbsp;<input name="txtEmail" id="txtEmail" class="form-control" value="<%=email%>" required></p>
                        <p>Usuário:&nbsp;<input name="txtNome" id="txtNome" class="form-control" value="<%=nome%>" required></p>
                        <p>Senha:&nbsp;<input name="txtSenha" id="txtSenha" class="form-control" type="password" value="Digite sua nova senha" required></p>
                        <input  class="btn btn-success" type="submit" value="Alterar">
                        <a class="btn btn-primary" data-toggle="pill" href="#info">Cancelar</a>
                            </form>
                    </div>
                        
                         <div id="excluir" class="tab-pane fade" style="width: 300px;">
                            <form name="excluir" method="post" action="excluir">
                                <p class="display-4">Deseja realmente excluir? Essa ação não tem volta!</p>
                        <p hidden>ID:&nbsp;<input name="txtID" id="txtID" hidden value="<%=id%>" required></p>      
                        <p>Senha:&nbsp;<input name="txtSenha" id="txtSenha" class="form-control" type="password" placeholder="Digite sua senha" required></p>
                        <input  class="btn btn-danger" type="submit" value="Excluir">
                        <a class="btn btn-primary" data-toggle="pill" href="#info">Cancelar</a>
                            </form>
                    </div>
                        
                    <div id="disp" class="tab-pane fade">
                        <h3>Dispositivos Ativos</h3>
                        <p>EM BREVE</p>
                    </div>
                    <div id="compras" class="tab-pane fade">
                        <h3>Compras</h3>
                        <p>EM BREVE</p>
                    </div>
                </div>
            </div>





        </div>
        <%@include file="lib/includes/footer.jsp" %>
        <% }%>
    </body>
</html>
