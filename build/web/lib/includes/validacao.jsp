<%
    if (session.getAttribute("logado") != "TRUE") {
        session.setAttribute("erro", 3);
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    } else {

    }

%>