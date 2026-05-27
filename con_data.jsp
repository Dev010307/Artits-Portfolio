<%@page import ="java.io.*" %>
<%@page import ="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Messages</title>
    <style>
        /* Flexbox Layout */
        html, body {
            overflow: hidden; /* Prevent vertical scrolling */
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            background-color: #fff5e6;  /* Soft Cream Background */
            color: red;
            font-family: Arial, sans-serif;
            scroll-behavior: smooth;
        }

        .container {
            flex: 1;
            padding-top: 60px; /* Adjusted to fit content */
            text-align: center;
            overflow-y: auto; /* Enables vertical scrolling when needed */
            max-height: 100vh;
        }

        /* Navigation */
        nav {
            background: red;
            padding: 1rem;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            position: fixed;
            top: 0;
            z-index: 1000;
        }

        nav ul {
            padding: 0;
            list-style: none;
            margin: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 1.1em;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #ffe6e6;
        }

        h2 {
            color: red;
            margin-bottom: 20px;
        }

        /* Table Styles */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ff7f7f;  /* Light Red for better contrast */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        table th, table td {
            padding: 10px;
            border: 1px solid #fff;
            text-align: left;
            color: white;
        }

        table th {
            background-color: red;
            color: white;
        }

        table tr:nth-child(even) {
            background-color: #ff6666;
        }

        table tr:hover {
            background-color: #ff4d4d;
        }

        /* Footer */
        footer {
            background: red;
            color: white;
            text-align: center;
            padding: 10px 0;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            position: fixed;
            bottom: 0;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>

    <!-- Navigation Menu -->
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="gallery.jsp">Gallery</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="con_data.jsp">Contact Us</a></li>
            <li><a href="feedback_data.jsp">Feedback</a></li>
            <li><a href="login_data.jsp">Login</a></li>
        </ul>
    </nav>

    <div class="container">
        <h2>Contact Messages</h2>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ap", "root", "");
                Statement st = cn.createStatement();
                ResultSet rs = st.executeQuery("select * from cons");
        %>
        
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Message</th>
                </tr>
            </thead>
            <tbody>
            <%
                while(rs.next()) {  
            %>
                <tr>
                    <td><%= rs.getInt(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getString(4) %></td>
                </tr>
            <%  
                }
            } catch(Exception e) {
                out.println("<div class='alert alert-danger'>Error: " + e + "</div>");
            } 
            %>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; Dev Agravat & Dabhi Jatin | All Rights Reserved</p>
    </footer>

</body>
</html>
