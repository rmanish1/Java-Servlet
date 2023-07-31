<%-- 
    Document   : login1.jsp
    Created on : 21-Mar-2023, 5:52:43 am
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Student Login Page</title>
    <link rel="stylesheet" href="login.css">
</head>

<body>
    <section>
        <div class="color"></div>
        <div class="color"></div>
        <div class="color"></div>
        <div class="box">
            <div class="circle" style="--i:0;"></div>
            <div class="circle" style="--i:1;"></div>
            <div class="circle" style="--i:2;"></div>
            <div class="circle" style="--i:3;"></div>
            <div class="circle" style="--i:4;"></div>
            <div class="container">
                <div class="form">
                    <h2><u>Student Login</u></h2>
                    <form action=LoginServlet method=post>
                        <div class="inputBox">
                            <input type="text" placeholder="&#9775; Pin Number" name = "pin">
                        </div>
                        <div class="inputBox">
                            <input type="password" placeholder="&#x1F512; Password" name = "pass">
                        </div>
                        <div class="inputBox">
                            <input type="submit" value="Sign in">
                        </div>
                        <p class="forget"> <a href="register.jsp">ADMIN?</a></p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>

</html>
