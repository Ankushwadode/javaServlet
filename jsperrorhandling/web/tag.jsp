<%-- 
    Document   : tag
    Created on : 03-Aug-2022, 7:48:13 pm
    Author     : Ankush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mylib" prefix="t" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <t:mytag></t:mytag>
        <hr>
        <t:printTable number="12" color="red"></t:printTable>
        
        <!-- JSP implisite object -->
        <% 
            out.println();
            request.getParameter("");
            response.sendRedirect("");
            //config(ServletConfig);
            //application(ServletContext);
            //session
            //page:current jsp page object
            //exception:thowable
            //pagecontext
        %>
    </body>
</html>
