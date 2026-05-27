<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Portfolio - Registration</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #fffaf0;
            color: red;
            font-family: Arial, sans-serif;
            scroll-behavior: smooth;
            overflow-x: hidden;
        }

        /* Navigation */
        nav {
            background: red;
            padding: 1rem;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: fixed;
            width: 100%;
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
            color: #ffcccc;
        }

        /* Registration Section */
        .registration {
            padding: 100px 20px 50px;
            text-align: center;
            min-height: 100vh;
            background-color: #fff0e6;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .registration-form {
            max-width: 400px;
            width: 100%;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        .registration-form h2 {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }

        .registration-form label {
            color: red;
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .registration-form input[type="text"],
        .registration-form input[type="email"],
        .registration-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .registration-form button {
            background: red;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            width: 100%;
            transition: background 0.3s;
        }

        .registration-form button:hover {
            background: #cc0000;
        }

        .registration-form .login-link {
            text-align: center;
            margin-top: 15px;
        }

        .registration-form .login-link a {
            color: red;
            text-decoration: none;
            transition: color 0.3s;
        }

        .registration-form .login-link a:hover {
            color: #cc0000;
        }

        /* Footer */
        footer {
            background: red;
            color: white;
            text-align: center;
            padding: 10px 0;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
        }

        footer p {
            margin: 0;
            color: white;
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
            <li><a href="contactus.jsp">Contact Us</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="login.jsp">Login</a></li>
        </ul>
    </nav>

    <!-- Registration Section -->
    <section class="registration" id="registration">
        <form class="registration-form" action="J4.jsp" method="post">
            <h2>Create an Account</h2>

            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="name" required>

            <label for="username">Username:</label>
            <input type="text" id="username" name="uname" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="pas" required>

            
            <button type="submit">Register</button>

            <!-- Back to Login Link -->
            <div class="login-link">
                <p>Already have an account? <a href="login.jsp">Login here</a></p>
            </div>
        </form>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; Dev Agravat & Dabhi Jatin | All Rights Reserved.</p>
    </footer>
</body>
</html>
