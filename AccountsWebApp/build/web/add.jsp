<%-- 
    Document   : add
    Created on : 21 Apr 2025, 1:39:48 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Page</title>
    </head>
    <body>
        <h1>Add account holder</h1>
        <p>
            Enter the detail of the account holder below .
        </p>
        <form action="AddServlet.do" method="POST">
            <table>
                <tr>
                    <td>Account holder id :</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td>First Name :</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Street :</td>
                    <td><input type="text" name="street"/></td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><input type="text" name="city"/></td>
                </tr>
                <tr>
                    <td>Code :</td>
                    <td><input type="text" name="code"/></td>
                </tr>
                <tr>
                    <td>Cell Number :</td>
                    <td><input type="text" name="cellNo"/></td>
                </tr>
               <tr>
                    <td>Email address :</td>
                    <td><input type="email" name="email"/></td>
                </tr>
                <tr>
                    <td>Balance :</td>
                    <td><input type="text" name="balance"/></td>
                </tr>
              
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
