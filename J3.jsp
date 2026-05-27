<%@page import="java.sql.*"%>
<html>
    <body>
        <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String massge = request.getParameter("massge");

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ap", "root", "");
            String query = "INSERT INTO cons (name, email,massge) VALUES (?, ?, ?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3,massge);
        
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {

                response.sendRedirect("index.jsp");
            } else {
                out.println("Failed Contact ");
            }
            stmt.close();
            con.close();
        } catch (Exception e) {
            out.println(e);
        }
    %>
    </body>
</html>