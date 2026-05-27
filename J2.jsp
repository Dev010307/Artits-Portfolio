<%@page import="java.sql.*"%>
<html>
    <body>
        <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String msg = request.getParameter("msg");

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ap", "root", "");
            String query = "INSERT INTO feedback (name, email,msg) VALUES (?, ?, ?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, msg);
        
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("index.jsp");
            } else {
                out.println("Failed Feedback");
            }
            stmt.close();
            con.close();
        } catch (Exception e) {
            out.println(e);
        }
    %>
    </body>
</html>