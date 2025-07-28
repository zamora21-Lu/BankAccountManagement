<%-- 
    Document   : get_list
    Created on : 21 Apr 2025, 7:42:54 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View list Page</title>
    </head>
    <body>
        <h1>view list</h1>
        <p>
            Please click the button below to get the list.
        </p>
        <form action="GetServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="READ"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
