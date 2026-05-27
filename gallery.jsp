<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Portfolio - Gallery</title>
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

        /* Gallery Section */
        .gallery {
            padding: 100px 20px 50px;
            text-align: center;
            min-height: 100vh;
            background-color: #fff0e6;
        }

        .gallery h2 {
            color: red;  /* Red Heading */
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .gallery-item {
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s;
            background: white;
        }

        .gallery-item img {
            width: 100%;
            height: 300px;
            object-fit: cover;
            transition: transform 0.3s;
            border-bottom: 3px solid red;
        }

        .gallery-item:hover img {
            transform: scale(1.05);
        }

        /* Caption */
        .caption {
            padding: 15px;
            font-size: 1em;
            color: red;
        }

        .caption h3 {
            margin: 5px 0;
            font-size: 1.3em;
            color: red;
        }

        .caption p {
            margin: 0;
            font-size: 0.9em;
            color: red;
        }

        /* Footer */
        footer {
            background: red;  /* Red Footer */
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

    <!-- Gallery Section -->
    <section class="gallery" id="gallery">
        <h2>Gallery</h2>
        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="Ar Raheman.jpg" alt="A.R. Rahman">
                <div class="caption">
                    <h3>A.R. Rahman</h3>
                    <p>Legendary Music Composer known as the "Mozart of Madras."
                        A.R. Rahman, often referred to as the "Mozart of Madras," is one of the most iconic and influential music composers in the world. Renowned for his versatility and soulful compositions, Rahman has revolutionized Indian film music with his unique blend of classical, electronic, world music, and traditional orchestral arrangements.He began his career composing for Tamil films before making a remarkable debut in Bollywood with "Roja" (1992), which Time Magazine named among the "10 Best Soundtracks" of all time. Since then, Rahman has composed music for countless critically acclaimed movies across various languages, including Hindi, Tamil, and international films.

                    </p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="arijit-singh.jpg" alt="Arijit Singh">
                <div class="caption">
                    <h3>Arijit Singh</h3>
                    <p>Renowned Playback Singer with a soulful voice.
                        Arijit Singh (born April 25, 1987) is one of India’s most celebrated playback singers, known for his soulful voice, emotive singing style, and versatility across musical genres. Hailing from Jiaganj, Murshidabad in West Bengal, Arijit was born into a musically inclined family; his mother was a trained singer, and his grandmother was a classical vocalist. This rich cultural background nurtured his passion for music from a young age. He began his formal training under the guidance of Rajendra Prasad Hazari, learning Indian classical music, tabla under Dhirendra Prasad Hazari, and Rabindra Sangeet and pop music from Birendra Prasad Hazari.

                    </p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="Raja ravi verma.jpg" alt="Raja Ravi Varma">
                <div class="caption">
                    <h3>Raja Ravi Varma</h3>
                    <p>Iconic Indian Painter known for blending Indian traditions with European realism.
                        Raja Ravi Varma (1848 – 1906) was one of India’s most celebrated painters, known for his pioneering blend of Indian traditions with European realism. Born into the aristocratic Kilimanoor Palace in Kerala, his artistic talent was recognized at an early age by his uncle, Raja Raja Varma, who introduced him to basic painting techniques. As a young boy, he was sent to Thiruvananthapuram, where he learned traditional Tanjore painting and later mastered watercolor. His journey in art took a decisive turn when he learned oil painting under the British artist Theodor Jenson, allowing him to bring a new level of realism to Indian art.

                    </p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="Ravi shankar.jpg" alt="Ravi Shankar">
                <div class="caption">
                    <h3>Ravi Shankar</h3>
                    <p>World-renowned Sitar Maestro who bridged Eastern and Western music.
                        Ravi Shankar (1920 – 2012) was an iconic Indian sitar virtuoso and composer, widely regarded as one of the greatest ambassadors of Indian classical music to the world. Born in Varanasi into a respected Brahmin family, Shankar was exposed to music and dance at an early age as he traveled with his brother Uday Shankar’s dance troupe. This early exposure to international audiences laid the foundation for his vision of bridging Eastern and Western musical traditions. At the age of 18, he became a disciple of the legendary sarod maestro Ustad Allauddin Khan, under whom he rigorously trained for nearly seven years, mastering the intricacies of Indian ragas and talas.

                    </p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="zakir husain.jpg" alt="Zakir Hussain">
                <div class="caption">
                    <h3>Zakir Hussain</h3>
                    <p>Master Tabla Virtuoso known for his creativity and collaborations.
                        Zakir Hussain (born March 9, 1951) is a world-renowned Indian tabla virtuoso, composer, and percussionist, celebrated for his extraordinary skill, creativity, and contributions to Indian classical music as well as global musical collaborations. Born in Mumbai to legendary tabla maestro Ustad Alla Rakha, Zakir was destined to be a prodigy. He began learning tabla at the age of three under his father’s strict guidance and gave his first professional performance by the age of seven. His rigorous training and innate talent shaped him into a child prodigy, and by his teens, Zakir was already performing with some of India’s greatest classical musicians.

                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; Dev Agravat & Dabhi Jatin | All Rights Reserved.</p>
    </footer>
</body>
</html>
