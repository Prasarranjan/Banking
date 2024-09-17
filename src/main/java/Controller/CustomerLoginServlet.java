package Controller;

import Bean.AccountDetails;
import Dao.custLoginDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/custLogin")
public class CustomerLoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Define the logic for GET if necessary
        // super.doGet(req, resp); // Removed as it's unnecessary
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Correct content type
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String event = request.getParameter("event");

        if (event != null && event.equals("userlogin")) {
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");

            boolean isValidAdmin = custLoginDao.validateUser(userid, password);

            if (isValidAdmin) {
                // Fetch user details from the database
                AccountDetails admin = custLoginDao.getUserByEmailAndPassword(userid, password);

                HttpSession session = request.getSession();
                session.setAttribute("activestatus", admin.getIsActive());

                if (admin.getIsActive()) {
                    // Set additional session attributes if the user is active
                    session.setAttribute("username", admin.getCustomerName());
                    session.setAttribute("userphoto", admin.getCustomerImage());
                    session.setAttribute("branchname", admin.getBranchName());
                    session.setAttribute("acctypename", admin.getAccountTypeName());
                    session.setAttribute("accnumber", admin.getAccountNumber());
                    session.setAttribute("openingdate", admin.getOpeningDate());
                    session.setAttribute("balance", admin.getBalance());
                    session.setAttribute("userid", admin.getCustomerId());

                    out.println("done");
                } else {
                    out.print("error");
                }
            } else {
                out.print("notConfirms");
            }
        } else {
            out.print("Invalid event");
        }
    }
}
