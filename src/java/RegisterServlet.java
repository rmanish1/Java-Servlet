
import jakarta.servlet.RequestDispatcher;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();

            String driver = "com.mysql.cj.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/admindb";
            String uname = "root";
            String password = "root";

            Class.forName(driver);
            
            Connection con = DriverManager.getConnection(url, uname, password);
            String n = request.getParameter("reg");
            String p = request.getParameter("pass");
            PreparedStatement ps = con.prepareStatement("select reg from admin where reg=? and password=?;");
            ps.setString(1, n);
            ps.setString(2, p);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                RequestDispatcher rd = request.getRequestDispatcher("add.jsp");
                rd.forward(request, response);
            } else {
                out.println("<h1  style = \"text-align:center; color:red; font-size:48pt; \">Login Failed</h1>");
                out.println("<div style=\"text-align: center;\"><a href=register.jsp style=\"font-size:30pt;\">Try Again!!</a></div>");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
    }
}
