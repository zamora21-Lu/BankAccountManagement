<%-- 
    Document   : get_outcome
    Created on : 21 Apr 2025, 7:50:34 AM
    Author     : test
--%>

<%@page import="java.util.List"%>
<%@page import="ac.za.tut.entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View List outcome Page</title>
    </head>
    <body>
        <h1>view List</h1>
        <%
            List<Account> list = (List<Account>)request.getAttribute("account");
            for(int x=0;x<list.size();x++){
                Account acc = list.get(x);
                Long id = acc.getId();
                String name = acc.getFirstName();
                String email =acc.getEmailAddress();
                String cell = acc.getCellNo();
                String city =acc.getCity();
                String street = acc.getStreet();
                String code = acc.getCode();
                Double balance = acc.getBalance();
                
            
        %>
        <div>
            <table>
                <tr>
                    <td>Account holder id :</td>
                    <td><%=id%></td>
                </tr>
                <tr>
                    <td>First Name :</td>
                    <td><%=name%></td>
                </tr>
                <tr>
                    <td>Street :</td>
                    <td><%=street%></td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><%=city%></td>
                </tr>
                <tr>
                    <td>Code :</td>
                    <td><%=code%></td>
                </tr>
                <tr>
                    <td>Cell Number :</td>
                    <td><%=cell%></td>
                </tr>
               <tr>
                    <td>Email address :</td>
                    <td><%=email%></td>
                </tr>
                <tr>
                    <td>Balance :</td>
                    <td><%=balance%></td>
                </tr><br>
              
            </table>
        </div>
        <%
            }
        %>
         <p>
            Please click <a href="index.html">here</a> to get back to home page.
        </p>
    </body>
</html>
