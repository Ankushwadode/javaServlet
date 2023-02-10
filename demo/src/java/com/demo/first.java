/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo;
import javax.servlet.*;
import java.io.IOException;
/**
 *
 * @author Ankush
 */
public class first implements Servlet {
   ServletConfig conf;
    //life cycle methods
   
   @Override
    public void init(ServletConfig conf){
        this.conf=conf;
        System.out.println("creating a object.....");
    }
    
    @Override
    public void service(ServletRequest req,ServletResponse res)throws ServletException,IOException{
        System.out.println("servicing...");
    }
    
    @Override
    public void destroy(){
        System.out.println("going to destroy servlet object....");
    }
    
    @Override
    //non life cycle mehtods
    public ServletConfig getServletConfig(){
        return this.conf;  
    }
    
    @Override
    public String getServletInfo(){
        return "servlet create for demo example";
    }
}
