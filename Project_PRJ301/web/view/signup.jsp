<%-- 
    Document   : newjsp
    Created on : 13-Feb-2023, 16:29:01
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
       <link rel="stylesheet" href="weblogin/css/style_signup.css">
</head>

<body>
    <div class="contrainer">

        <form action="" id="form-signup">
            <div class="login-header">
                <h1>Sign Up</h1>
                <p>Please fill in this form to create an account!</p>
            </div>
            

                <input type="text" id="firstname" placeholder="First Name" class="form-item">
           

                <input type="text" id="lastname" placeholder="Last Name" class="form-item">

                <input type="text" id="email" placeholder="Email" class="form-item">
            
                <input type="password" id="password" placeholder="Password" class="form-item">
           
                <input type="password" id="cpassword" placeholder="Confirm Password" class="form-item"> 

                <input type="checkbox"  checked>
                <label id="checkboxx">I accept the <a href="#">Term of Use</a> & <a href="#">Privacy
                        Policy.</a></label> <br>
            
            <button type="submit">Sign Up </button>


        </form>

        <footer>
            <p>Already have an account? <a href="login.html">Login here</a></p>
        </footer>

    </div>
</body>

</html>
