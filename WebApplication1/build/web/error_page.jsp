<%-- 
    Document   : error_page
    Created on : 28-Jul-2022, 8:47:59 pm
    Author     : Ankush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error page</title>
        <style>
            *{  padding:0px;
                margin:0px;
            }
        </style>
    </head>
    <body>
        <div style="padding:20px; color:red; background:#e2e2e2">
            <h1>sorry!!something went wrong.....</h1>
            <br>
            <p>Note:<%= exception %></p>
        </div>
    </body>
</html>
