<%-- 
    Document   : vertify
    Created on : 11-Mar-2023, 16:24:40
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <span>We already send a verification code to your email</span>
        
        <form action="veritycode" method="post">
            <input type="text" name="authcode">
            <input type="submit" value="vertify" />
        </form>
    </body>
</html>
