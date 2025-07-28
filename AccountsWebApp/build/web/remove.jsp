<%-- 
    Document   : remove
    Created on : 21 Apr 2025, 8:02:49 AM
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
        <p>
            Enter account holder's id you are about to remove.
        </p>
        <form action="RemoveServlet.do" method="POST">
            <table>
                <tr>
                    <td>Account holder's id :</td>
                    <td><input type="text" name="id"</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="REMOVE"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
