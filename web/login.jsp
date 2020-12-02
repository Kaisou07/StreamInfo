<%
    int erro;

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }
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

        <link href="lib/css/login.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="container">

            <%@include file="lib/includes/navbar.jsp" %>
            <form name="form1" method="post" action="Login" role="form">
                <div class="login-box1">
                    <h1>Login</h1>
                    <div class="textbox1">
                        <i class="fas fa-user"></i>

                        <input type="text" name="inputEMail" id="inputEMail" placeholder="Usuario" required="">
                    </div>

                    <div class="textbox1">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="inputSenha" id="inputSenha" required="" placeholder="Senha">

                    </div>
                    <input type="submit" name="Submit" class="btn1 color" value="Logar">
                    <button type="button" name="registrar" class="btn1 color2"><a href="registrar.jsp" class="text-light">Registrar</a></button>
                    <%
                        if (erro == 1) {
                    %>
                    <p class="ml-3 text-light" >Usuário e/ou senha incorretos!</p>
                    <%
                    } else {
                        if (erro == 2) {
                    %>
                    <p class=" ml-3 text-light">Página restrita, efetue Login!!</p>
                    <%
                            }
                        }
                    %>




                </div>



            </form>


        </div>
    </body>
</html>
