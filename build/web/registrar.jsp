<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <form name="registro" method="post" action="cadastro" role="form">
            <div class="login-box1">
                <h1>Registro</h1>
                
                <div class="textbox1">
                    <i class="fas fa-user"></i>
                    <input type="text" name="nome" placeholder="Usuario" required="">
                </div>
                
                <div class="textbox1">
                    <i class="fas fa-envelope"></i>
                    <input type="text" name="email" placeholder="Email" required="">
                </div>

                <div class="textbox1">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="senha"  required="" placeholder="Senha">
                </div>
                
                <input type="submit" name="Submit" class="btn1 color" value="Registrar">
                <button type="button" name="login" class="btn1 color2"><a href="login.jsp" class="text-light">Login</a></button>


            </div>



        </form>
    </div>
</body>
</html>
