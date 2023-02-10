<%-- 
    Document   : Page2
    Created on : 05-Aug-2022, 9:16:51 pm
    Author     : Ankush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is Page two!</h1>
        <%
            //redirection code....
            response.sendRedirect("Page3.jsp");
        %>
    </body>
</html>
