<%-- 
    Document   : add
    Created on : 22-Mar-2023, 6:31:42 pm
    Author     : manis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
            <h1>Student Register Form</h1>
            <form action="store.jsp" method="post">
                <table style="width: 80%">
                    <tr>
                        <td>Pin Number</td>
                        <td><input type="text" name="pinno" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" /></td>
                    </tr>
                    <tr>
                        <td>Software Engineering</td>
                        <td><input type="text" name="se" /></td>
                    </tr>
                    <tr>
                        <td>Cryptography and Network Security</td>
                        <td><input type="text" name="cns" /></td>
                    </tr>
                    <tr>
                        <td>Database Management Systems</td>
                        <td><input type="text" name="dbms" /></td>
                    </tr>
                    <tr>
                        <td>Formal Languages and Automata Theory</td>
                        <td><input type="text" name="flat" /></td>
                    </tr>
                    <tr>
                        <td>Programming With R</td>
                        <td><input type="text" name="r" /></td>
                    </tr>
                    <tr>
                        <td>Personality Development</td>
                        <td><input type="text" name="pd" /></td>
                    </tr>
                    <tr>
                        <td>Operations Research</td>
                        <td><input type="text" name="or" /></td>
                    </tr>
                    <tr>
                        <td>Comprehensive Skill Development IV</td>
                        <td><input type="text" name="csd" /></td>
                    </tr>
                    <tr>
                        <td>SGPA</td>
                        <td><input type="text" name="sgpa" /></td>
                    </tr>
                    <tr>
                        <td>CGPA</td>
                        <td><input type="text" name="cgpa" /></td>
                    </tr>
                </table>
                <input type="submit" value="Submit" />
            </form>
        </div>
    </body>
</html>
