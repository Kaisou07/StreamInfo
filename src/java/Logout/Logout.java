package Logout;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Logout extends HttpServlet {
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("logado","FALSE");     
        session.invalidate();
        response.sendRedirect("login.jsp");
    }
}
