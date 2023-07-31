<%-- 
    Document   : store
    Created on : 22-Mar-2023, 8:02:18 pm
    Author     : manis
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement" %>
<%
String pin = request.getParameter("pinno");
String pass = request.getParameter("pass");
String nm = request.getParameter("name");
String se = request.getParameter("se");
String cns = request.getParameter("cns");
String dbms = request.getParameter("dbms");
String flat = request.getParameter("flat");
String r = request.getParameter("r");
String pd = request.getParameter("pd");
String or = request.getParameter("or");
String csd = request.getParameter("csd");
float sgpa = Float.parseFloat(request.getParameter("sgpa"));
float cgpa = Float.parseFloat(request.getParameter("cgpa"));
                                                
                                
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
PreparedStatement ps = connection.prepareStatement("insert into result values(?,?,?,?,?,?,?,?,?,?,?,?,?);");
ps.setString(1,pin);
ps.setString(2,pass);
ps.setString(3,nm);
ps.setString(4,se);
ps.setString(5,cns);
ps.setString(6,dbms);
ps.setString(7,flat);
ps.setString(8,r);
ps.setString(9,pd);
ps.setString(10,or);
ps.setString(11,csd);
ps.setFloat(12,sgpa);
ps.setFloat(13,cgpa);

int x = ps.executeUpdate();
if(x>0){
out.println("<h1 style=\"color:orange; font-size:50pt; text-align:center;\">Registration done successfully</h1>");
    }else{
    out.println("<h1 style=\"color:orange; font-size:50pt; text-align:center;\">Registration Failed</h1>");
    }
 }
catch (Exception e) {
e.printStackTrace();
}
%>
