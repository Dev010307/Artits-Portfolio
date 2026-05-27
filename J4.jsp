<%@page import="java.sql.*"%>
<html>
    <body>
        <%
        String name = request.getParameter("name");
        String uname = request.getParameter("uname");
        String email = request.getParameter("email");
        String pas = request.getParameter("pas");
        
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ap", "root", "");
            String query = "INSERT INTO rgat (name,uname,email,pas) VALUES (?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, uname);
            stmt.setString(3, email);
            stmt.setString(4, pas);
        
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                
                response.sendRedirect("index.html");
            } else {
                out.println("Failed  Register ");
            }
            stmt.close();
            con.close();
        } catch (Exception e) {
            out.println(e);
        }
    %>
    </body>
</html>