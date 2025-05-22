<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  
  <title>Landing Page</title>
  <link rel="stylesheet" href="/style.css" ></link>
  <link rel="stylesheet" href="/landingstyle.css" ></link>
</head>
<body>
  <!-- 🌐 Navbar -->
  <nav class="navbar">
    <div class="logo">Dream Homes</div>
    <ul class="nav-links">
      <li><a href="/view/landing">Home</a></li>
      <li><a href="/view/about">About</a></li>
      <li><a href="/view/contact">Contact</a></li>
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
  
</body>
</html>
