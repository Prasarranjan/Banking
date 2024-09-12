package Controller;

import Dao.LoginDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html:charset=UTF-8");
        PrintWriter out = response.getWriter();

            String email = request.getParameter("email");
            String password = request.getParameter("password");
        boolean isValidAdmin = LoginDao.validateAdmin(email, password);

               if (isValidAdmin) {
                   out.print("done");
               } else {
                   out.print("error");
               }
    }
}
