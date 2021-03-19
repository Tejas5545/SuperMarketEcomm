<%-- 
    Document   : logout
    Created on : 18 Mar, 2021, 1:31:43 PM
    Author     : LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            HttpSession s=request.getSession();
            s.setAttribute("userpojo", null);
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
