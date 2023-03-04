<%-- 
    Document   : newjsp
    Created on : 13-Feb-2023, 16:29:59
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <link rel="stylesheet" href="style_forgotpassword.css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="contrainer">
            <h1>Forgot Password</h1>
            <form action="action">
                <input type="email" name="emeo" placeholder="Enter valid email" class="form-item">
                <button type="submit">Submit </button>
                
            </form>
            <footer>
            <p>Back to<a href="login.html"> Login</a></p>
        </footer>
        </div>
    </body>
</html>
