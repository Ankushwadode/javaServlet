package com.demo;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
/**
 *
 * @author Ankush
 */
public class servlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        System.out.println("this is get mehtod....");
        
        res.setContentType("text/html");
        
        PrintWriter out= res.getWriter();
        out.print("<h1>this is get method of servlet</h1>");
        out.println(new Date().toString());
    }
}
