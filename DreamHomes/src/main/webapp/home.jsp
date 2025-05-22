<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Home - Dream Homes</title>
  <link rel="stylesheet" href="/style.css">
  <link rel="stylesheet" href="/aboutstyle.css">
</head>
<body>
  <nav class="navbar">
    <div class="logo">Dream Homes</div>
    <ul class="nav-links">
      <li><a href="/view/home2">Explore Properties</a></li>
      <li><a href="/view/buy">Buy</a></li>
      <li><a href="/view/sell">Sell</a></li>
      <li><a href="/view/about">About</a></li>
      <li><a href="/view/contact">Contact</a></li>
      <li><a href="/view/logout">LogOut</a></li>
    </ul>
    <a href="/view/profile" class="profile-btn">Profile</a>
  </nav>
<% 
String email=(String) session.getAttribute("email"); 
%>
  <!-- 🏡 Banner Section -->
  <header class="banner">
    <div class="banner-content">
      <h1>Welcome <%= email %></h1>
      <h2>Find Your Dream Property</h2>
      <p>Explore a wide range of properties for sale in your desired location</p>
      <a href="#Property_List" class="banner-btn">Get Started</a>
    </div>
  </header>

  <!-- 🔍 Filter Section -->
<section class="filters">
  <h2>Filter Properties</h2>
  <div class="filter-controls">
    <select>
      <option>All Types</option>
      <option>Apartment</option>
      <option>Villa</option>
      <option>House</option>
    </select>
    <select>
      <option>All Locations</option>
      <option>New York</option>
      <option>California</option>
      <option>Texas</option>
    </select>
    <select>
      <option>Any Price</option>
      <option>Under $100,000</option>
      <option>$100,000 - $300,000</option>
      <option>$300,000+</option>
    </select>
    <button class="filter-btn">Apply Filters</button>
  </div>
</section>

<!-- 🏘 Property Listings -->
<section class="property-listings" id="Property_List">
  <div class="property-card">
    <img src="/house1.jpg" alt="House 1">
    <div class="property-info">
      <h3>Modern Villa</h3>
      <p class="location">Airport Road, Indore</p>
      <p class="price">₹8,50,000</p>
      <p class="desc">A luxurious villa with sea view and private pool.</p>
    </div>
  </div>

  <div class="property-card">
    <img src="/house2.jpg" alt="House 2">
    <div class="property-info">
      <h3>Urban Apartment</h3>
      <p class="location">New York City, Indore</p>
      <p class="price">₹60,00,000</p>
      <p class="desc">Stylish apartment located in the heart of the city.</p>
    </div>
  </div>

  <div class="property-card">
    <img src="/house3.jpg" alt="House 3">
    <div class="property-info">
      <h3>Cozy Cottage</h3>
      <p class="location">Brillent Treasures, Indore</p>
      <p class="price">₹30,00,000</p>
      <p class="desc">A peaceful countryside home perfect for families.</p>
    </div>
  </div>
</section>
</body>
</html>
