<%-- 
    Document   : result
    Created on : 20-Mar-2023, 6:18:41 pm
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <title>GRADE CARD</title>
        <style type="text/css">
            html,
            body {
                height: 100%;
                font-family: arial;
            }

            td {
                padding: 0;
                margin: 0;
            }

            td p {
                margin: 3px 0;
            }

            b {
                font-weight: 600;
            }

            .b1 {
                border: 2px solid #026B5C;
            }

            .b4 {
                height: 110px;
                margin-left: 723px;
                margin-top: 5px;
            }

            .b5 {
                width: 701px;
            }

            .b6 {
                text-align: left;
            }

            .b1 td {
                border: 2px solid #026B5C;
            }

            .b2 {
                border: 1px solid black;
            }

            .btmp {
                border: 1px solid black;
            }

            .jb td,
            .jb th {
                padding: 2px;
            }

            .auto-style1 {
                height: 6px;
            }

            p {
                font-size: 12px;
                padding: 5px 0;
            }

            .ins {
                padding: 0 15px;
            }

            .img_hover {
                position: relative;
                text-align: left;
            }

            .sgpa table {
                margin-right: unset;

            }

            .sgpa {
                padding: 10px 20px 0px 0px;
            }

            .innerdiv {
                position: relative;
                top: 0;
                left: 0;
                right: 0;
                bottom: 20px !important;
                border: 2px solid #000;
                width: 700px;
                margin: auto;
                height: auto;
                padding: 20px;
                margin-bottom: 15px;
            }

            .ins p {
                padding: 0;
            }

            .p10 p {
                font-size: 8px;
            }

            .tab tr td {
                border-right: 2px solid #026B5C;
                border-left: 2px solid #026B5C;
            }

            .tab {
                border: 2px solid #026B5C;
            }

            table {
                margin: 0px auto;
                border-collapse: collapse;
            }

            @page {
                margin: 1px;
            }

            .b4,
            .b5,
            .b6 {
                padding-left: 20px;
            }

            .details span {
                color: #026B5C;
                margin-right: 18px;
                font-weight: 600;

            }

            .details tr td {
                padding-bottom: 10px;
            }

            @media print {

                html,
                body {
                    height: 99%;
                }

                .innerdiv {
                    position: relative;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    border: 2px solid #000;
                    width: 700px;
                    margin: auto;
                    height: auto;
                }

                .b4,
                .b5,
                .b6 {
                    padding-left: 20px;
                }

                .b4 {
                    height: 110px;
                    margin-top: 5px;
                }

                .break {
                    display: none;
                }

                .b5 {
                    width: 701px;

                    text-align: left;
                }

                .b6 {
                    text-align: left;

                }


                .abc .saimg {
                    width: 100% !important;
                }

                .wrapper {
                    width: auto;

                }
                a[href]:after {
                    content: none !important;
                }

                .btt {
                    display: none;
                }


                title {
                    display: none;
                }

                #header,
                #nav,
                .noprint,
                #footer {
                    display: none;
                }
                .btmp {
                    display: none;
                }
            }
        </style>
    </head>

    <body>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
        <%@page import="java.sql.Connection"%>
        <%
        String pn = request.getParameter("pin");
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "resultdb";
        String userId = "root";
        String password = "root";

        try {
        Class.forName(driverName);
        } catch (ClassNotFoundException e) {
        e.printStackTrace();
        }

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        %>
        
        <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql ="select * from result where pinno = "+pn;

        resultSet = statement.executeQuery(sql);
        %>

        <form method="" action="" id="form1">
            <div id="inner">
                <div class="wrapper">
                    <div class="abc img_hover" style="margin-top:30px;">
                        <div class="innerdiv">
                            <table style="border-radius: 10px;margin: 10px auto;width: 650px;" cellspacing="0"
                                   cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                <table width="200" class='sa-width'>
                                    <tbody>
                                        <tr style="text-align:right;"></tr>
                                    </tbody>
                                </table>
                                </tr>
                                <tr>
                                <table width="650">
                                    <tbody>
                                        <tr style="text-align:center;">
                                            <td> <img src="academiccert1.jpg" width="650" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                                </tr>
                                <tr>
                                <table width="650" style='margin-bottom:20px'>
                                    <tbody>
                                        <tr style="text-align:center;">
                                    <center style='margin-top:10px;'><b style="font-size:24px;"><span
                                                style='color:#026B5C'>GRADE CARD</span></b></center>
                                    <center style='margin-top:10px;margin-left:5px;'><b
                                            style="font-size:19px;margin-top:10px;">B.Tech Degree
                                            Examination</b></center>
                                    <center style="font-size:18px;"><b>V Semester, November 2022</b>
                                    </center>
                                    </tr>
                                    </tbody>
                                </table>
                                </tr>
                                <tr>
                                        <%
                                        while(resultSet.next()){
                                        %>
                                <table width="650" class='mt-1 sa-width details' style='margin-bottom:20px'>
                                    <tbody>
                                        
                                        <tr>
                                            <td style="width:50px;"> <span>Regd.No</span></td>
                                            <td>:</td>
                                            <td>&nbsp;<%=resultSet.getString("pinno") %></td>
                                            <td style='text-align:left'> &nbsp;</td>
                                            
                                        <tr>
                                            <td style="width:50px;"> <span>Name </span></td>
                                            <td>:</td>
                                            <td>&nbsp;<%=resultSet.getString("name") %></td>
                                            <td style='text-align:left'> &nbsp;</td>
                                            <td> &nbsp;</td>
                                            <td> &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width:50px;"> <span>Branch</span></td>
                                            <td> :</td>
                                            <td style='text-align:left'> &nbsp;Computer Science and Engineering</td>
                                            <td> &nbsp;</td>
                                            <td> &nbsp;</td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                               
                                </tr>
                                <tr>
                                <table width="650" class="tab mt-2 mb-2 sa-width">
                                    <tbody>
                                        <tr class="" style='border:2px solid #026B5C'>
                                            <td style="text-align:left;padding:4px;width:105px;"> <span
                                                    style='color:#026B5C;'><b>Course Code</b></span> </td>
                                            <td style="text-align:center;"> <span style='color:#026B5C'><b>Name of
                                                        the Course</b></span> </td>
                                            <td style="text-align:center;"> <span
                                                    style='color:#026B5C'><b>Credits</b> </span></td>
                                            <td style="text-align:center;"> <span style='color:#026B5C'><b>Grade</b>
                                                </span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="margin-left:10px;text-align:left;">19ECS331</p>
                                            </td>
                                            <td>
                                                <p style="margin-left:10px; text-align:left;">Software Engineering
                                                </p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p>4</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p><%=resultSet.getString("19ECS331") %></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="margin-left:10px;text-align:left;">19ECS305</p>
                                            </td>
                                            <td>
                                                <p style="margin-left:10px; text-align:left;">Cryptography and
                                                    Network Security</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p>3</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p><%=resultSet.getString("19ECS305") %></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="margin-left:10px;text-align:left;">19ECS333</p>
                                            </td>
                                            <td>
                                                <p style="margin-left:10px; text-align:left;">Database Management
                                                    Systems</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p>4</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p><%=resultSet.getString("19ECS333") %></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="margin-left:10px;text-align:left;">19ECS303</p>
                                            </td>
                                            <td>
                                                <p style="margin-left:10px; text-align:left;">Formal Languages and
                                                    Automata Theory</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p>3</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p><%=resultSet.getString("19ECS303") %></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="margin-left:10px;text-align:left;">19ECS341</p>
                                            </td>
                                            <td>
                                                <p style="margin-left:10px; text-align:left;">Programming With R</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p>3</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p><%=resultSet.getString("19ECS341") %></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="margin-left:10px;text-align:left;">19EOE313</p>
                                            </td>
                                            <td>
                                                <p style="margin-left:10px; text-align:left;">Personality
                                                    Development</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p>3</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p><%=resultSet.getString("19EOE313") %></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="margin-left:10px;text-align:left;">19EHS405</p>
                                            </td>
                                            <td>
                                                <p style="margin-left:10px; text-align:left;">Operations Research
                                                </p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p>3</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p><%=resultSet.getString("19EHS405") %></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="margin-left:10px;text-align:left;">19ECS391</p>
                                            </td>
                                            <td>
                                                <p style="margin-left:10px; text-align:left;">Comprehensive Skill
                                                    Development IV</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p>1</p>
                                            </td>
                                            <td style="text-align:center;">
                                                <p><%=resultSet.getString("19ECS391") %></p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                </tr>
                                <tr>
                                <div class='sgpa'>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <p style="font-size:15px;">SGPA </p>
                                                </td>
                                                <td>:</td>
                                                <td> &nbsp;<%= resultSet.getFloat("sgpa") %> <br /></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p style="font-size:15px;">CGPA </p>
                                                </td>
                                                <td>:</td>
                                                <td> &nbsp;<%= resultSet.getFloat("cgpa") %> <br /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                     <% 
                                    }

                                    } catch (Exception e) {
                                    e.printStackTrace();
                                    }
                                    %>
                                </div>
                                </tr>
                                <div class="b6"><span> <b>Printed On&nbsp;&nbsp;:</b><%= (new java.util.Date()).toLocaleString()%><br /></span></div>
                                <div class="b5"><br />
                                    <table style="width:650px;margin-left: 0px;">
                                        <tbody>
                                            <tr>
                                                <td style="width:510px;"><span style="width:100px;">
                                                        <b>Note:</b><br /><span style="font-size:12px;"><i>1.This is a
                                                                digitally generated certificate. The format of this
                                                                certificate may differ from the document issued by the
                                                                University<br /></i></span></span><span
                                                        style="width:100px;font-size:12px;"><i>2.For any clarification,
                                                            please contact <a
                                                                href="#">controllerofexaminations@gitam.edu</a><i></span>
                                                                </td>
                                                                <td style="width:100px;">
                                                                </td>
                                                                </tr>
                                                                </tbody>
                                                                </table>
                                                                </tr>
                                                                </tbody>
                                                                </table>
                                                                </div>
                                                                </div>
                                                                </div><br>
                                                                <div class='break'><br></div>
                                                                </div>

                                                                </form>
                                                                </body>

                                                                </html>
