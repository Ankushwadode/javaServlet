<%-- 
    Document   : first
    Created on : 23-Jul-2022, 7:24:02 pm
    Author     : Ankush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- page derictive -->
<%@page import="java.util.*" %>
<%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a:set var="name" value="ankush"></a:set>
        <a:out value="${name}"></a:out>
        <a:if test="${3>2}">
            <h3>this is true 3>2 that's why this got printed.</h3>
        </a:if>
        <h2>ramdom number:
            <%
                Random r=new Random();
                int m=r.nextInt(10);
            %>
            <%= m %>
        </h2>
        <!-- declarative tag -->
        <%!
            int a = 10;
            int b = 20;
            String msg = "hello";

            public int dosum() {
                return a + b;
            }
            public String rev() {
                StringBuffer br=new StringBuffer(msg);
                return br.reverse().toString();
            }
        %>
        <!-- scriplet tag -->
        <%
            out.println("value of a: "+a);
            out.println("<br>");
            out.println("value of b: "+b);
            out.println("<br>");
            out.println("the sum of numbers: "+dosum());
            out.println("<br>");
            out.println(rev());
        %>
        <!<!-- expression tag -->
        <h2>value of a:<%=a%></h2>
        <h2>value of b:<%=b%></h2>
        <h2>sum is:<%=dosum()%></h2>
        <h2>original string:<%=msg%></h2>
        <h2>string reverse:<%=rev()%></h2>
        <h2>taglib example directives</h2>
        
        <%!
            int n=100;
            int n2=0;
        %>
        
        <%
            int div=n/n2;
        %>
        
        <h2>Division is: <%=div%></h2>
        
    </body>
</html>
