<%@page import="java.sql.*"%>
<html>
    <body>
        <%
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ap", "root", "");
            String query = "INSERT INTO lg (name, pass) VALUES (?, ?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, pass);
        
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                // Redirect to the home page if login is successful
                response.sendRedirect("index.jsp");
            } else {
                out.println("Login Failed");
            }
            stmt.close();
            con.close();
        } catch (Exception e) {
            out.println(e);
        }
        %>
    </body>
</html>
