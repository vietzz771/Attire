<%-- 
    Document   : doublesign
    Created on : Mar 16, 2023, 11:51:43 PM
    Author     : Hades
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/doublesign.css" />
        <title>Login Page</title>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container sign-in-container">
                <form action="login" method="post">
                    <h1>Sign in</h1>
                    <div class="alert">
                        <span>${mess}</span>
                    </div>
                    <input name="username" type="text" placeholder="Username" value="${username}" required/>
                    <input name="password" type="password" placeholder="Password" value="${password}" required/>
                    <div class="form-check">
                        <input name="remember" class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                            Remember me
                        </label>
                    </div>
                    <button>Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <a href="register">
                            <button class="ghost" id="signUp">Sign Up</button>                            
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
