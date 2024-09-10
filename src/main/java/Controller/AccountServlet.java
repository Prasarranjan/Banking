package Controller;

import Bean.Account;
import Dao.AccountDao;
import Util.DbConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet("/AccountServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class AccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private boolean validateImage1(String imageName1) {
        String fileExt1 = imageName1.substring(imageName1.length() - 3);
        if ("jpg".equals(fileExt1) || "png".equals(fileExt1) || "gif".equals(fileExt1)) {
            return true;
        }
        return false;
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html:charset=UTF-8");
        PrintWriter out = response.getWriter();
        String event = request.getParameter("event");
        if (event.equals("addaccount")){
            String firstName = request.getParameter("firstName");
            String middleName = request.getParameter("middleName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
          String aadhaar = request.getParameter("aadhaar");
            String balance = request.getParameter("balance");
            //image start
            Part p1 = request.getPart("image");
            String Path = DbConnection.Path();
            String appPath = Path + "/AcImg";
            String imagePath = appPath + "";
            File fileDir = new File(imagePath);
            if (!fileDir.exists())
                fileDir.mkdirs();
            //Get Image Name
            String imageName1 = p1.getSubmittedFileName();
            String fileExt1 = imageName1.substring(imageName1.length() - 3);
            String imgname1 = new Date().getTime() + "1" + "." + fileExt1;

            if (validateImage1(imageName1)) {
                try {
                    p1.write(imagePath + "/" + imgname1);
                } catch (Exception ex) {
                }
            } else {
                out.print("<script> alert('Invalid Image Format')</script>");
            }
            //img end
             Account ac = new Account();
            ac.setFirstName(firstName);
            ac.setMiddleName(middleName);
            ac.setLastName(lastName);
            ac.setEmail(email);
            ac.setPhoneNo(phone);
            ac.setAddress(address);
            ac.setAadharNo(aadhaar);
            ac.setAcImg(imgname1);
            ac.setBalance(balance);



            AccountDao aa = new AccountDao();
            int status = aa.createAccount(ac);
            if (status > 0) {
                out.print("done");
            } else {
                out.print("failed");
            }
        }
    }
}
