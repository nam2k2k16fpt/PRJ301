<%-- 
    Document   : newjsp
    Created on : 13-Feb-2023, 16:26:38
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Page</title>

        <link rel="stylesheet" href="weblogin/css/style.css" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <div class="login-left">
                <div class="login-header">
                    <h1> Welcome to Our Application</h1>
                    <p>Please login in use the platform</p>
                </div>
                <form class="login-form" method="post" action="login">
                    <div class="login-form-content">
                        <div class="form-item">
                            <label>Enter Username: </label>
                            <input type="text" name="username" value="${sessionScope.cfaccount.username}" required>
                        </div>
                        <div class="form-item">
                            <label for="password">Enter Password: </label>
                            <input type="password" id="password" name="psw" value="${sessionScope.cfaccount.password}" required>
                        </div>
                        <div class="form-item">
                            <div class="checkbox">
                                <input type="checkbox" id="rememberMeCheckbox" checked>
                                <label for="rememberMeCheckbox" class="checkboxLabel">Remember me</label>
                            </div>
                        </div>
                        <button type="submit">Sign In</button>
                    </div>
                    <div class="footer">
                        <div class="footer-psw">
                            <span class="psw"><a href="forgotpwd">Forgot password?</a></span>
                        </div>
                    </div>

                </form>
            </div>
            <div class="login-right">
                <img src="image/crokery.jpg" alt="background.jpg"/>
            </div>
        </div>
    </body>
</html>
