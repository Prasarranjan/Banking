package Controller;

import Bean.customer;
import Dao.AccountDao;
import Dao.CustomerDao;
import Dao.DeviceDao;
import Util.DbConnection;
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
            int userId = userId();
            int branchId = Integer.parseInt(request.getParameter("branchid"));
            int accTypeId = Integer.parseInt(request.getParameter("typeId"));
            double balance = Double.parseDouble(request.getParameter("balance"));
            long accNumber = accountNum();
            //image start
            Part p1 = request.getPart("photo");
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
                cust.setCustUserId(String.valueOf(userId));
                cust.setCustImg(imgname1);
                cust.setDeviceId(deviceId);
                CustomerDao cd = new CustomerDao();
                int custId = cd.getCoustid(cust);


                if(custId>0) {
                    AccountDao ad=new AccountDao();
                    int status=ad.createNewAccount(accNumber,custId,accTypeId,balance,branchId);
                    if(status>0) {
                        if(email!=null || !email.equals("")) {
                            String to = email;// change accordingly
                            // Get the session object
                            Properties props = new Properties();
                            props.put("mail.smtp.host", "smtp.gmail.com");
                            props.put("mail.smtp.socketFactory.port", "465");
                            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                            props.put("mail.smtp.auth", "true");
                            props.put("mail.smtp.port", "465");
                            Session session = Session.getDefaultInstance(props, new jakarta.mail.Authenticator() {
                                protected jakarta.mail.PasswordAuthentication getPasswordAuthentication() {
                                    return new PasswordAuthentication("therealprasar@gmail.com", "mailprasar@1234");
                                    // id and
                                    // password here
                                }
                            });
                            // compose message
                            try {
                                MimeMessage message = new MimeMessage(session);
                                message.setFrom(new InternetAddress(email));// change accordingly
                                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                                message.setSubject("Congratulation ");
                                message.setText("your account is created successfully ,your User Id is: " + userId+"  & your Password is: " + password +"  It may take 1 hour to activated your account ,Once ADMIN approved your request ,you will be allowed to login . THANK YOU! ");

                                // send message
                                Transport.send(message);
                                out.print("done");
                            }

                            catch (MessagingException e) {
                                throw new RuntimeException(e);
                            }
                        }else {
                            out.print("failed");
                        }
                    }else {
                        out.print("failed");
                    }
                }
            }
        }
                        }
            }



