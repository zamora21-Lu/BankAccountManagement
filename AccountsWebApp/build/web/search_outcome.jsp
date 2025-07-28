<%-- 
    Document   : search_outcome
    Created on : 21 Apr 2025, 7:33:04 AM
    Author     : test
--%>

<%@page import="ac.za.tut.entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search account holder Page</title>
    </head>
    <body>
        <h1>Search</h1>
        <%
            Account acc =(Account)request.getAttribute("account");
            Long id = (Long)request.getAttribute("id");
        %>
        <table>
                <tr>
                    <td>Account holder id :</td>
                    <td><%=id%></td>
                </tr>
                <tr>
                    <td>First Name :</td>
                    <td><%=acc.getFirstName()%></td>
                </tr>
                <tr>
                    <td>Street :</td>
                    <td><%=acc.getStreet()%></td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><%=acc.getCity()%></td>
                </tr>
                <tr>
                    <td>Code :</td>
                    <td><%=acc.getCode()%></td>
                </tr>
                <tr>
                    <td>Cell Number :</td>
                    <td><%=acc.getCellNo()%></td>
                </tr>
               <tr>
                    <td>Email address :</td>
                    <td><%=acc.getEmailAddress()%></td>
                </tr>
                <tr>
                    <td>Balance :</td>
                    <td><%=acc.getBalance()%></td>
                </tr>
            </table>
        <p>
            Please click <a href="index.html">here</a> to get back to home page.
        </p>
    </body>
</html>
