/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.user;

//import java.io.File;
//import java.io.FileOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
//import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;


/**
 *
 * @author Ankush
 */
@MultipartConfig
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            //getting all the details from the request
            String name=request.getParameter("user_name");
            String password=request.getParameter("user_pass");
            String email=request.getParameter("user_email");
            Part part =request.getPart("image");
            String filename=part.getSubmittedFileName();
            //out.println(filename);
            
            //connection......
            try{
                Thread.sleep(3000);
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/regform","root","Root@123");
                
                //insert query...
                String q="insert into user(name,password,email,image) values(?,?,?,?)";
                PreparedStatement stat=con.prepareStatement(q);
                stat.setString(1,name);
                stat.setString(2,password);
                stat.setString(3,email);
                stat.setString(4,filename);
                
                stat.executeUpdate();
               
               //upload.....
               InputStream is=part.getInputStream();
               byte[]data=new byte[is.available()];
               
               is.read(data);
               String path=request.getRealPath("/")+"img"+File.separator+filename;
               //out.println(path);
               FileOutputStream fos=new FileOutputStream(path);
               fos.write(data);
               fos.close();
                
                out.println("Done");
            }
            catch(Exception e){
                e.printStackTrace();
                out.println("error");
            }
            //query..........
            
            //query fire/run.............
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
