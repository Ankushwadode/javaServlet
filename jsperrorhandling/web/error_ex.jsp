<%-- 
    Document   : error_ex
    Created on : 29-Jul-2022, 12:53:14 pm
    Author     : Ankush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sorry! something went wrong....</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container p-3 text-center">
            <p><h2><%= exception %></h2></p>
            <img src="images/something went wrong.png" class="image-fluid"/>
            <a class="btn btn-outline-primary" href="index.html">HOME PAGE</a>
        </div>
    </body>
</html>
