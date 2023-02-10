/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author Ankush
 */
public class printtable extends TagSupport {
    
    public int number;
    public String color;
    
    //setter

    public void setnumber(int number) {
        this.number = number;
    }

    public void setColor(String color) {
        this.color = color;
    }
    
    
    @Override
    public int doStartTag() throws JspException{
        try{
            JspWriter out=pageContext.getOut();
            //print table of given numbers
            out.print("<div style='color:"+color+"'>");
            out.print("<br>");
            for (int i = 1; i <= 10; i++) {
                out.println((i*number)+"<br>");
            }
            out.print("</div>");
        }catch(Exception e){
            e.printStackTrace();
        }
        return SKIP_BODY;
    }
}
