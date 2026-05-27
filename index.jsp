<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Portfolio - Home</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #fff5e6;  /* Soft Cream Background */
            color: red;
            font-family: Arial, sans-serif;
            scroll-behavior: smooth;
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
            color: white;  /* White Links for Contrast */
            text-decoration: none;
            font-size: 1.1em;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #ffe6e6;  /* Light Red on Hover */
        }

        /* Home Section */
        .home {
            background: url('your-background.jpg') no-repeat center center/cover;
            text-align: center;
            padding: 150px 20px;
            box-shadow: inset 0 0 0 2000px rgba(255, 245, 230, 0.85);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .home h1 {
            font-size: 3em;
            margin: 0;
            color: red;
            text-shadow: 2px 2px 5px #fff;
        }

        .home p {
            font-size: 1.2em;
            margin-top: 10px;
            color: red;
        }

        /* Horizontal Image Gallery */
        .gallery {
            display: flex;
            overflow-x: auto;
            gap: 20px;
            padding: 20px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
            scrollbar-width: none;  /* Firefox */
        }

        .gallery::-webkit-scrollbar {
            display: none;  /* Chrome, Safari, Opera */
        }

        .gallery img {
            width: 300px;
            height: 300px;
            object-fit: cover;
            border: 5px solid #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            transition: transform 0.3s;
            scroll-snap-align: start;
        }

        .gallery img:hover {
            transform: scale(1.05);
        }

        /* Footer */
        footer {
            background: red;  /* Same as Navigation Bar */
            color: white;
            text-align: center;
            padding: 10px 0;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            position: relative;
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

    <!-- Home Section -->
    <section class="home">
        <h1>Welcome to My Art World</h1>
        <p>Discover my creations and get inspired</p>

        <!-- Horizontal Image Gallery -->
        <div class="gallery">
            <img src="Ar Raheman.jpg" alt="Artwork 1">
            <img src="arijit-singh.jpg" alt="Artwork 2">
            <img src="Raja ravi verma.jpg" alt="Artwork 3">
            <img src="Ravi shankar.jpg" alt="Artwork 4">
            <img src="zakir husain.jpg" alt="Artwork 5">
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; Dev Agravat & Dabhi Jatin | All Rights Reserved</p>
    </footer>

</body>
</html>
