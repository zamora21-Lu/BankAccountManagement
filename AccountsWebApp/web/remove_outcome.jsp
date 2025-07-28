<%-- 
    Document   : remove_outcome
    Created on : 21 Apr 2025, 8:16:09 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Page</title>
    </head>
    <body>
        <h1>Remove</h1>
        <%
            Long id = (Long)request.getAttribute("id");
        %>
        <p>
            Account holder<b>[<%=id%>]</b> has been successfully removed from the database.
        </p>
        <p>
            Please click <a href="index.html">here</a> to get back to home page.
        </p>
    </body>
</html>
