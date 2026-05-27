<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Portfolio - About Us</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #fef5e7;  /* Light Cream Background */
            color: #ff0000;  /* Solid Red Text */
            font-family: Arial, sans-serif;
            scroll-behavior: smooth;
            overflow-x: hidden;
        }

        /* Navigation */
        nav {
            background: #ff0000;  /* Solid Red Navigation Bar */
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
            color: #ffffff;  /* White Text for Menu Items */
            text-decoration: none;
            font-size: 1.1em;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #ffe6e6;  /* Light Red on Hover */
        }

        /* About Section */
        .about-section {
            padding: 120px 20px 50px;
            text-align: center;
            min-height: 100vh;
            background: #fef5e7;  /* Light Cream Background */
        }

        .about-section h2 {
            color: #ff0000;
            font-size: 2.8em;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .about-vertical {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            padding: 20px 0;
        }

        .about-item {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            border: 2px solid #ff0000;
            transition: transform 0.3s;
            text-align: left;
            padding: 20px;
            width: 80%;
            max-width: 800px;
        }

        .about-item:hover {
            transform: scale(1.02);
        }

        .about-item h3 {
            color: #ff0000;
            font-size: 1.8em;
            margin-top: 0;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .about-item p {
            color: #333;
            font-size: 1em;
            line-height: 1.6;
        }

        /* Footer */
        footer {
            background: #ff0000;
            color: #ffffff;
            text-align: center;
            padding: 10px 0;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            border-top: 2px solid #ff0000;
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
            <li><a href="contactus.jsp">Contact Us</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="login.jsp">Login</a></li>
        </ul>
    </nav>

    <!-- About Section -->
    <section class="about-section" id="aboutus">
        <h2>About Us</h2>
        <div class="about-vertical">
            <div class="about-item">
                <h3>Our Story</h3>
                <p>
                    Welcome to our Artist Portfolio! Our journey began with a passion for creativity and a vision to share unique artwork with the world.
                    We believe in the power of art to inspire, connect, and transform perspectives.
                </p>
            </div>
            <div class="about-item">
                <h3>Our Mission</h3>
                <p>
                    Our mission is to create an immersive experience for art enthusiasts and collectors. Through our portfolio,
                    we aim to showcase a diverse collection of artwork that speaks to the heart and mind.
                </p>
            </div>
            <div class="about-item">
                <h3>Meet the Artist</h3>
                <p>
                    Behind each masterpiece is an artist with a vision. Our work is a reflection of emotions, experiences, and dreams,
                    brought to life through colors, shapes, and textures.
                </p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; Dev Agravat & Dabhi Jatin | All Rights Reserved.</p>
    </footer>
</body>
</html>
