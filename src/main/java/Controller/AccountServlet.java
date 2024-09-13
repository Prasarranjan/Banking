package Controller;

import Bean.AccountDetails;
import Bean.customer;
import Dao.AccountDao;
import Dao.CustomerDao;
import Dao.DeviceDao;
import Util.DbConnection;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
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
import java.util.List;
import java.util.Properties;
import java.util.Random;

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

    public static int userId() {
        Random random = new Random();
        int randomNumber = random.nextInt(900000) + 100000;
        return randomNumber;
    }

    public static long generateRandom10DigitNumber(Random random) {
        // Generate a random number between 1000000000 and 9999999999 (inclusive)
        long min = 1000000000L;
        long max = 9999999999L;
        return min + ((long) (random.nextDouble() * (max - min)));
    }

    public static long accountNum() {
        Random random = new Random();
        long randomNumber = generateRandom10DigitNumber(random);
        return randomNumber;
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
        if (event.equals("addaccount")) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String latitude = request.getParameter("latitude");
            String longitude = request.getParameter("longitude");
            System.out.println("lat" + latitude);
            System.out.println("long" + longitude);
            int userId = userId();
            int branchId = Integer.parseInt(request.getParameter("branchId"));
            int accTypeId = Integer.parseInt(request.getParameter("accountTypeId"));
            double balance = Double.parseDouble(request.getParameter("balance"));
            long accNumber = accountNum();
            //image start
            Part p1 = request.getPart("photo");
            String Path = DbConnection.Path();
            String appPath = Path + "/costumerImage";
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
            System.out.println(latitude);
            System.out.println(longitude);
            DeviceDao device = new DeviceDao();
            int deviceId = device.saveDevice(latitude, longitude);

            if (deviceId > 0) {
                customer cust = new customer();
                cust.setCustAddress(address);
                cust.setCustDOB(dob);
                cust.setCustEmail(email);
                cust.setCustFname(firstName);
                cust.setCustLname(lastName);
                cust.setCustPass(password);
                cust.setCustPhone(phone);
                cust.setCustId(userId);
                cust.setCustImg(imgname1);
                cust.setDeviceId(deviceId);
                CustomerDao cd = new CustomerDao();
                int custId = cd.getCoustid(cust);


                if(custId>0) {
                    AccountDao ad=new AccountDao();
                    int status=ad.createNewAccount(accNumber,custId,accTypeId,balance,branchId);
                    if(status>0) {
                        if (email != null && !email.equals("")) {
                            try {
                                String to = email; // recipient email

                                // Set properties for the mail session
                                Properties props = new Properties();
                                props.put("mail.smtp.host", "smtp.gmail.com");
                                props.put("mail.smtp.port", "587"); // Using TLS
                                props.put("mail.smtp.auth", "true");
                                props.put("mail.smtp.starttls.enable", "true"); // Enable TLS

                                // Get the session object with authentication
                                Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
                                    protected jakarta.mail.PasswordAuthentication getPasswordAuthentication() {
                                        return new jakarta.mail.PasswordAuthentication("infoebank17@gmail.com", "zaphlaphqpsoemth"); // sender's email and app password
                                    }
                                });

                                // Compose the message
                                try {
                                    MimeMessage message = new MimeMessage(session);
                                    message.setFrom(new InternetAddress("infoebank17@gmail.com")); // sender email
                                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to)); // recipient email
                                    message.setSubject("🎉 Congratulations, " + firstName + "!");
                                    message.setContent(
                                            "<!DOCTYPE html>" +
                                                    "<html>" +
                                                    "<head>" +
                                                    "    <style>" +
                                                    "        body {" +
                                                    "            font-family: Arial, sans-serif;" +
                                                    "            background-color: #f4f4f4;" +
                                                    "            color: #333;" +
                                                    "        }" +
                                                    "        .container {" +
                                                    "            max-width: 600px;" +
                                                    "            margin: 0 auto;" +
                                                    "            padding: 20px;" +
                                                    "            background-color: #fff;" +
                                                    "            border-radius: 8px;" +
                                                    "            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);" +
                                                    "        }" +
                                                    "        h1 {" +
                                                    "            color: #4CAF50;" +
                                                    "        }" +
                                                    "        .user-info {" +
                                                    "            background-color: #f9f9f9;" +
                                                    "            padding: 10px;" +
                                                    "            border-radius: 5px;" +
                                                    "            margin-bottom: 20px;" +
                                                    "        }" +
                                                    "        .cta {" +
                                                    "            background-color: #4CAF50;" +
                                                    "            color: white;" +
                                                    "            padding: 10px 15px;" +
                                                    "            border-radius: 5px;" +
                                                    "            text-decoration: none;" +
                                                    "            font-weight: bold;" +
                                                    "            display: inline-block;" +
                                                    "            margin-top: 10px;" +
                                                    "        }" +
                                                    "        .cta:hover {" +
                                                    "            background-color: #45a049;" +
                                                    "        }" +
                                                    "    </style>" +
                                                    "</head>" +
                                                    "<body>" +
                                                    "    <div class='container'>" +
                                                    "        <h1>🎉 Congratulations, " + firstName + "!</h1>" +
                                                    "        <p>Your account at <strong>eBank</strong> has been successfully created!</p>" +
                                                    "        <div class='user-info'>" +
                                                    "            <p><strong>Your User ID:</strong> " + userId + "</p>" +
                                                    "            <p><strong>Your Password:</strong> " + password + "</p>" +
                                                    "        </div>" +
                                                    "        <p>It may take up to 1 hour for your account to be activated. Once the <strong>ADMIN</strong> approves your request, you will be able to log in.</p>" +
                                                    "        <p>Thank you for choosing <strong>eBank</strong>! We look forward to serving you.</p>" +
                                                    "        <a href='#' class='cta'>Login to eBank</a>" +
                                                    "    </div>" +
                                                    "</body>" +
                                                    "</html>",
                                            "text/html; charset=utf-8"
                                    );

                                    System.out.println("Prepared Message: " + message);

                                    // Send message
                                    Transport.send(message);
                                    System.out.println("heigala");
                                    out.print("done");
                                } catch (MessagingException e) {
                                    System.out.println("Messaging Exception occurred.");
                                    e.printStackTrace();
                                    throw new RuntimeException(e);
                                }
                            } catch (Exception e) {
                                System.out.println("General Exception occurred.");
                                e.printStackTrace();
                            }
                        }


                    }else {
                        out.print("failed");
                    }
                }
            }
        } else if (event.equals("getAccount")) {

                try {
                    AccountDao ad=new AccountDao();
                    List<AccountDetails> listacc= ad.viewAccounts();
                    GsonBuilder gsonBuilder = new GsonBuilder();
                    Gson gson = gsonBuilder.create();
                    String JSONObject = gson.toJson(listacc);
                    out.print(JSONObject);
                }catch(Exception e) {
                    e.printStackTrace();
                }
        }
    }
            }



