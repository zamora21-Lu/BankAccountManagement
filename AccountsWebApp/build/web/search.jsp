<%-- 
    Document   : search
    Created on : 21 Apr 2025, 7:23:22 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <h1>Search account holder</h1>
        <p>
            Please enter account holder's id.
        </p>
        <form action="SearchServlet.do" method="POST"> 
            <table>
                <tr>
                    
                    <td>Account holder id :</td>
                    <td><input type="text" name="id"/></td>
              
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Search"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
