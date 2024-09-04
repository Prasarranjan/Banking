package Controller;
import Bean.AddacType;
import Bean.Bank;
import Bean.Branch;
import Dao.ActypeDao;
import Dao.BankDao;
import Dao.BranchDao;
import Util.DbConnection;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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


@WebServlet("/BankServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class BankServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private boolean validateImage1(String imageName1){
        String fileExt1 = imageName1.substring(imageName1.length()-3);
        if("jpg".equals(fileExt1) || "png".equals(fileExt1) || "gif".equals(fileExt1))
        {
            return true;
        }
        return false;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html:charset=UTF-8");
        PrintWriter out=response.getWriter();
        String event=request.getParameter("event");
        if(event.equals("addBank")) {
            String bankName=request.getParameter("bname");
            String bankEmail=request.getParameter("bemail");
            String bankPhone=request.getParameter("bmob");
            //image start
            Part p1=request.getPart("bimg");
            String Path= DbConnection.Path();
            String appPath =Path+"/bankImg";
            String imagePath = appPath + "";
            File fileDir = new File(imagePath);
            if (!fileDir.exists())
                fileDir.mkdirs();
            //Get Image Name
            String imageName1 = p1.getSubmittedFileName();
            String fileExt1 = imageName1.substring(imageName1.length()-3);
            String imgname1=new Date().getTime() +"1"+"."+fileExt1;

            if(validateImage1(imageName1)){
                try{
                    p1.write(imagePath + "/" + imgname1);
                }catch (Exception ex) { }
            }else{ out.print("<script> alert('Invalid Image Format')</script>");  }
            //img end
            Bank bank=new Bank();
            bank.setBankEmail(bankEmail);
            bank.setBankName(bankName);
            bank.setBankPhone(bankPhone);
            bank.setBankImg(imgname1);

            BankDao bankDao=new BankDao();
            int status=bankDao.saveBank(bank);
            if(status>0) {
                out.print("done");
            }else {
                out.print("failed");
            }
        }else if(event.equals("getBanks")) {
            try {
                BankDao banDao=new BankDao();
                List<Bank> listBanks = banDao.viewBanks();
                GsonBuilder gsonBuilder = new GsonBuilder();
                Gson gson = gsonBuilder.create();
                String JSONObject = gson.toJson(listBanks);
                out.print(JSONObject);
            }catch(Exception e) {
                e.printStackTrace();
            }
        } else if (event.equals("bank_delete")) {
            try {
                int id = Integer.parseInt(request.getParameter("bankId"));
                int result = BankDao.deleteBank(id);
                // out.println(result != 0 ? "done" : "failed");

                if (result > 0) {
                    out.println("done");
                }

            } catch (NumberFormatException e) {
                out.println("Invalid ID format");
            }
        } else if (event.equals("editBank")) {
            int id=Integer.parseInt(request.getParameter("id"));
            BankDao ed= new BankDao();
            List<Bank> ser=ed.getBankbyid(id);
            GsonBuilder gsonBuilder = new GsonBuilder();
            Gson  gson = gsonBuilder.create();
            String JSONObject = gson.toJson(ser);
            out.print(JSONObject);
        } else if (event.equals("updateBank1")) {
            try {
                String name = request.getParameter("Name");
                String email = request.getParameter("Email");
                String phone = request.getParameter("Phone");
                int id = Integer.parseInt(request.getParameter("Id"));
                Bank u = new Bank();
                u.setBankName(name);
                u.setBankEmail(email);
                u.setBankPhone(phone);
                u.setBankId(id);
                int result = BankDao.updateBank(u);
                if (result == 1) {
                    out.println("done");
                } else {
                    out.println("error");
                }
            }
            catch (Exception e){
                e.printStackTrace();
            }
        } else if (event.equals("addacctype")) {
            String actype=request.getParameter("actype");
            AddacType bank=new AddacType();
            bank.setAccTypeName(actype);
            ActypeDao a=new ActypeDao();
            int status= a.saveacType(bank);
            if(status>0) {
                out.print("done");
            }else {
                out.print("failed");
            }
        } else if (event.equals("getActype")) {

                try {
                    ActypeDao ActypeDao=new ActypeDao();
                    List<AddacType> listBanks = ActypeDao.viewActype();
                    GsonBuilder gsonBuilder = new GsonBuilder();
                    Gson gson = gsonBuilder.create();
                    String JSONObject = gson.toJson(listBanks);
                    out.print(JSONObject);
                }catch(Exception e) {
                    e.printStackTrace();
                }
        } else if (event.equals("addBranch")) {
            String branchName=request.getParameter("bname");
            String branchLoc=request.getParameter("bloc");
            String createdDate=request.getParameter("createdDate");
            String createdBy=request.getParameter("createdBy");
            String updatedDate=request.getParameter("updatedDate");
            String updatedBy=request.getParameter("updatedBy");
            int bankId= Integer.parseInt(request.getParameter("bankId"));
            Branch br=new Branch();
           br.setBranchName(branchName);
           br.setLocation(branchLoc);
           br.setCreatedDate(createdDate);
           br.setCreatedBy(createdBy);
           br.setUpdatedDate(updatedDate);
           br.setUpdatedBy(updatedBy);
           br.setBankId(bankId);


            BranchDao bankDao=new BranchDao();
            int status=bankDao.saveBranch(br);
            if(status>0) {
                out.print("done");
            }else {
                out.print("failed");
            }
        } else if (event.equals("getBranch")) {

            try {
                BranchDao banDao=new BranchDao();
                List<Branch> listBanks = banDao.viewBranch();
                GsonBuilder gsonBuilder = new GsonBuilder();
                Gson gson = gsonBuilder.create();
                String JSONObject = gson.toJson(listBanks);
                out.print(JSONObject);
            }catch(Exception e) {
                e.printStackTrace();
            }
        } else if (event.equals("branchdeactive")) {
                int id = Integer.parseInt(request.getParameter("branchid"));
                int result = BranchDao.deactiveBranch(id);
                // out.println(result != 0 ? "done" : "failed");
            System.out.println("ae jake hauchi");
                if (result >0 ) {
                    out.println("done");
                }
                else {
                    System.out.println("helani ma");
                    out.println("failed");
                }

            } else if (event.equals("editBranch")) {
            int id=Integer.parseInt(request.getParameter("branchid"));
            BranchDao ed= new BranchDao();
            List<Branch> ser=ed.getBranchbyid(id);
            GsonBuilder gsonBuilder = new GsonBuilder();
            Gson  gson = gsonBuilder.create();
            String JSONObject = gson.toJson(ser);
            out.print(JSONObject);
        }
        else if (event.equals("updateBranch")) {
            try {
                String name = request.getParameter("Name");
                String loc = request.getParameter("loc");
                String createdDate = request.getParameter("createdDate");
                String createdby = request.getParameter("createdby");
                String updateddate = request.getParameter("updateddate");
                String updatedby = request.getParameter("updatedby");
                boolean active = Boolean.parseBoolean(request.getParameter("active"));
                int id = Integer.parseInt(request.getParameter("branchid"));
                System.out.println(id);
                Branch u = new Branch();
                u.setBranchName(name);
                u.setLocation(loc);
                u.setCreatedDate(createdDate);
                u.setCreatedBy(createdby);
                u.setUpdatedDate(updateddate);
                u.setUpdatedBy(updatedby);
                u.setActive(active);
                u.setBankId(id);

                int result = BranchDao.updateBranch(u);

                if (result > 0) {
                    out.println("done");
                } else {
                    out.println("error");
                }
            }
            catch (Exception e){
                e.printStackTrace();
            }
        }
    }
    }


