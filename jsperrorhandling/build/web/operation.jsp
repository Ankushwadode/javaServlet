<%-- 
    Document   : operation
    Created on : 29-Jul-2022, 12:12:37 pm
    Author     : Ankush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_ex.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>operation page</title>
    </head>
    <body>
        <%
            //fetching two numbers.....
            String n=request.getParameter("n1");
            String m=request.getParameter("n2");
            
            //converting string to int...
            int a=Integer.parseInt(n);
            int b=Integer.parseInt(m);
            int c=a/b;
        %>
        
        <h2>Result is:<%= c %></h2>
    </body>
</html>
