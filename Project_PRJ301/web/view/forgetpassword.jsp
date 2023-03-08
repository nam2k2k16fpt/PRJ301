<%-- 
    Document   : newjsp
    Created on : 13-Feb-2023, 16:29:59
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="weblogin/css/style_forgotpassword.css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            input[type=text] {
                width: 90%;
                padding: 15px;
                margin: 10px 0 ;
                border: 1px solid wheat;
                outline:none;
            }
        </style>
    </head>

    <body>
        <div class="contrainer">
            <h1>Forgot Password</h1>
            <form action="action">
                <input type="text"  placeholder="Enter valid username">
                <button type="submit">Submit </button>
            </form>
            <footer>
                <p>Back to<a href="login.jsp"> Login</a></p>
            </footer>
        </div>
    </body>
</html>
