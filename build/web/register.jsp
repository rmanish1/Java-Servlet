<%-- 
    Document   : welcome
    Created on : 19-Mar-2023, 10:26:17 pm
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
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
                        <h2><u>Admin Login</u></h2>
                        <form action=RegisterServlet method=post>
                            <div class="inputBox">
                                <input type="text" placeholder="&#9775; Reg Number" name = "reg">
                            </div>
                            <div class="inputBox">
                                <input type="password" placeholder="&#x1F512; Password" name = "pass">
                            </div>
                            <div class="inputBox">
                                <input type="submit" value="Sign in">
                            </div>
                            <p class="forget"> <a href="student_login.jsp">STUDENT?</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>

</html>

