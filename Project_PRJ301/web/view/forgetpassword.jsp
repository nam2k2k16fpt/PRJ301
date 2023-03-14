

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/x-icon" href="icon/dd.png" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="weblogin/css/style_forgotpassword.css" rel="stylesheet" >

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
            <form action="forgotpwd" method="post" >
                <input type="text"  placeholder="Enter valid username" name="ufname">
                <button type="submit">Submit </button>
            </form>
            <footer>
                <p>Back to<a href="login"> Login</a></p>
            </footer>
        </div>
    </body>
</html>
