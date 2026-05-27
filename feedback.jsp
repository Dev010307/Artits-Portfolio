<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Portfolio - Feedback</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #fffaf0;
            color: red;  /* Red Text */
            font-family: Arial, sans-serif;
            scroll-behavior: smooth;
            overflow-x: hidden;
        }

        /* Navigation */
        nav {
            background: red;  /* Red Navigation Bar */
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

        /* Feedback Section */
        .feedback {
            padding: 100px 20px 50px;
            text-align: center;
            min-height: 100vh;
            background-color: #fff0e6;
        }

        .feedback h2 {
            color: red;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .feedback-form {
            max-width: 600px;
            margin: 0 auto;
            text-align: left;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .feedback-form label {
            color: red;
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .feedback-form input[type="text"],
        .feedback-form input[type="email"],
        .feedback-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .feedback-form textarea {
            resize: vertical;
            height: 150px;
        }

        .feedback-form button {
            background: red;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            transition: background 0.3s;
        }

        .feedback-form button:hover {
            background: #cc0000;
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

    <!-- Feedback Section -->
    <section class="feedback" id="feedback">
        <h2>Feedback</h2>
        <form class="feedback-form" action="J2.jsp" method="get">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Feedback:</label>
            <textarea id="message" name="msg" required></textarea>

            <button type="submit">Submit Feedback</button>
        </form>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; Dev Agravat & Dabhi Jatin | All Rights Reserved.</p>
    </footer>
</body>
</html>
