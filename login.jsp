<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Portfolio - Login</title>
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

        /* Login Section */
        .login {
            padding: 100px 20px 50px;
            text-align: center;
            min-height: 100vh;
            background-color: #fff0e6;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-form {
            max-width: 400px;
            width: 100%;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        .login-form h2 {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }

        .login-form label {
            color: red;
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .login-form button {
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

        .login-form button:hover {
            background: #cc0000;
        }

        .login-form .register-link {
            text-align: center;
            margin-top: 15px;
        }

        .login-form .register-link a {
            color: red;
            text-decoration: none;
            transition: color 0.3s;
        }

        .login-form .register-link a:hover {
            color: #cc0000;
        }

        /* Success Message */
        .success-message {
            color: green;
            text-align: center;
            display: none;
            margin-top: 15px;
            font-weight: bold;
            opacity: 1;
            transition: opacity 1s ease-in-out;
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
    <script>
        function validateLogin() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            if (username && password) {
                // Show success message
                var message = document.querySelector(".success-message");
                message.style.display = "block";
                message.textContent = "Login Successfully!";

                // Hide message and clear form after 1 to 2 seconds
                setTimeout(function() {
                    message.style.opacity = "0";
                    setTimeout(function() {
                        message.style.display = "none";
                        message.style.opacity = "1";
                        document.querySelector(".login-form").reset();
                    }, 1000); // Wait for fade-out animation to finish
                }, 1000); // Display message for 1 second
            } else {
                alert("Please enter both username and password.");
            }
        }
    </script>
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

    <!-- Login Section -->
    <section class="login" id="login">
        <form class="login-form" action="J1.jsp" method="post" onsubmit="return validateLogin()">
            <label for="username">Username:</label>
      <input type="text" id="username" name="name" required>

      <label for="password">Password:</label>
      <input type="password" id="password" name="pass" required>

      <button type="submit">Login</button>
      <p class="error" id="error-message"></p>


            <div class="register-link">
                <p>Don't have an account? <a href="register.jsp">Register here</a></p>
            </div>

            <!-- Success Message -->
            <p class="success-message">Login Successfully!</p>
        </form>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; Dev Agravat & Dabhi Jatin | All Rights Reserved.</p>
    </footer>
</body>
</html> 