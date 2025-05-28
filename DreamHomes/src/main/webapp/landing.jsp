<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  
  <title>Landing Page</title>
  <link rel="stylesheet" href="/style.css" ></link>
  <link rel="stylesheet" href="/landingstyle.css" ></link>
  <link rel="stylesheet" href="/contactstyle.css" />
  <link rel="stylesheet" href="/aboutstyle.css" />
</head>
<body>
  <!-- 🌐 Navbar -->
  <nav class="navbar">
    <div class="logo">Dream Homes</div>
    <ul class="nav-links">
      <li><a href="/view/landing">Home</a></li>
      <li><a href="#about">About</a></li>
      <li><a href="#contact">Contact</a></li>
      <li><a href="/view/login">Login</a></li>
      <li><a href="/view/register">Register</a></li>
    </ul>
  </nav>

  <!-- Landing Banner Section -->
  <section class="landing-banner">
    <div class="banner-content">
      <h1>Find Your Dream Property</h1>
      <p>Explore a wide range of properties for sale in your desired location</p>
     <a href="/view/login"> 
     <button id="getStartedBtn" >Get Started</button>
     </a>
    </div>
  </section>
  
  <!-- About Section  -->
  <div id="about" style="padding: 60px 20px ">
<!-- About Intro -->
  <section class="about-header">
    <h1>About Dream Homes</h1>
    <p>Empowering people to discover their dream properties with trust, technology, and passion.</p>
  </section>

  <!-- Features Section -->
  <section class="about-features">
    <div class="feature-card">
      <h2>Our Mission</h2>
      <p>Deliver reliable real estate solutions with a focus on customer experience and transparency.</p>
    </div>
    <div class="feature-card">
      <h2>Our Vision</h2>
      <p>To be the most trusted and user-friendly platform for buying and selling properties.</p>
    </div>
    <div class="feature-card">
      <h2>Our Values</h2>
      <p>We believe in integrity, innovation, and building lasting relationships with clients.</p>
    </div>
  </section>

  <!-- Team Section -->
  <section class="about-team">
    <h2>Meet the Team</h2>
    <div class="team-container">
      <div class="team-member">
        <img src="img/avatar1.png" alt="Guide" />
        <h3>Yogesh Bhaiya</h3>
        <p>Guide</p>
      </div>
      <div class="team-member">
        <img src="img/avatar2.png" alt="Software Developer" />
        <h3>Yuvraj Verma</h3>
        <p>Software Engineer</p>
      </div>
      <div class="team-member">
        <img src="img/avatar3.png" alt="FullSupport" />
        <h3>Amit Bhaiya</h3>
        <p>Teacher(Faculty)</p>
      </div>
    </div>
  </section>
</div>
  <!-- Contact Section -->
  <div id="contact">
  <section  class="contact-container">
  <div class="contact-left">
    <h2>Contact Us</h2>
    <p>We’d love to hear from you! Reach out using the form or contact info.</p>

    <form class="contact-form">
      <input type="text" placeholder="Your Name" required />
      <input type="email" placeholder="Your Email" required />
      <textarea placeholder="Your Message" rows="5" required></textarea>
      <button type="submit">Send Message</button>
    </form>
  </div>

  <div class="contact-right">
    <div class="info-box">
      <h3>Get in Touch</h3>
      <p><strong>Phone:</strong> +91 6264-184-604</p>
      <p><strong>Email:</strong> info@dreamhomes.com</p>
      <p><strong>Location:</strong> 8, Eastern Ring Road, Indore City</p>
    </div>

    <div class="map-box">
     <iframe 
     src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d424.6829542362638!2d75.90172355302944!3d22.736590048475648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962e2b2e6dec859%3A0xbabe6243307b8209!2s8%2C%20Ring%20Road%2C%20near%20City%20Bus%20Depot%2C%20Sanjog%20Puri%2C%20Indore%2C%20Madhya%20Pradesh%20452011!5e1!3m2!1sen!2sin!4v1747887276336!5m2!1sen!2sin" 
     width="600" 
     height="450" 
     style="border:0;" 
     allowfullscreen="" 
     loading="lazy" 
     referrerpolicy="no-referrer-when-downgrade">
     </iframe>
    </div>
  </div>
</section>
</div>

</body>
</html>
