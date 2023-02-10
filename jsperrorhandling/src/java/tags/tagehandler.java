/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tags;

import java.util.Date;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author Ankush
 */
public class tagehandler extends TagSupport {

    @Override
    public int doStartTag() throws JspException {
        try {
            //task to be done with tags......
            JspWriter out=pageContext.getOut();
            out.println("<h2>This is my custome Tag</h2>");
            out.println("<br>");
            out.println("<p>This is cusotm paragraph</p>");
            out.println(new Date().toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }
    
}
