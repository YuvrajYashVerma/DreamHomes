<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Contact Us - Dream Homes</title>
  <link rel="stylesheet" href="/style.css" />
  <link rel="stylesheet" href="/contactstyle.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
</head>
<body>
   <!-- 🌐 Navbar -->
  <nav class="navbar">
    <div class="logo">Dream Homes</div>
    <ul class="nav-links">
      <li><a href="/view/home2">Explore Properties</a></li>
      <li><a href="/view/buy">Buy</a></li>
      <li><a href="/view/sell">Sell</a></li>
      <li><a href="/view/about">About</a></li>
      <li><a href="/view/contact">Contact</a></li>
      <li><a href="/view/landing">LogOut</a></li>
    </ul>
    <a href="/view/profile" class="profile-btn">Profile</a>
  </nav>


<section class="contact-container">
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
</body>
</html>