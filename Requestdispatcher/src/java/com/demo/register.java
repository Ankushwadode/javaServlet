/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
/**
 *
 * @author Ankush
 */
public class register extends HttpServlet{
        @Override
    public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        out.println("<h2>welcome to simple form</h2>");
        String name=req.getParameter("user_name");
        String password=req.getParameter("user_pass");
        String email=req.getParameter("user_email");
        String gender=req.getParameter("user_gender");
        String course=req.getParameter("user_course");
        
        String cond=req.getParameter("condition");
        //out.println(cond);
        if(cond!=null){
        if(cond.equals("checked")){
           out.println("<h2>Name:"+name+"</h2>");
           out.println("<h2>Password:"+password+"</h2>");
           out.println("<h2>Email:"+email+"</h2>");
           out.println("<h2>Gender:"+gender+"</h2>");
           out.println("<h2>Course:"+course+"</h2>");
           
           RequestDispatcher rd=req.getRequestDispatcher("success");
           rd.forward(req, res);
        }
        else{
            out.println("<h2>you have not excepted the terms and conditions</h2>");
        }
        }
        else{
                out.println("<h2>you have not excepted the terms and conditions</h2>");
                
                //include output of index.html
                
                out.println("below output is of index.html");
                //get the object of request dispatcher
               RequestDispatcher rd=req.getRequestDispatcher("index.html");
               
               //include method
               rd.include(req, res);
        }
    }
}
