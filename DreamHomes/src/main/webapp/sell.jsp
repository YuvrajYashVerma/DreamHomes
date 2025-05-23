<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Sell Property - Dream Homes</title>
  <link rel="stylesheet" href="/style.css" />
  <link rel="stylesheet" href="/sellstyle.css" />
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

  <!-- Sell Page Main Content -->
  <section class="sell-container">

    <!-- Add Property Form -->
    <div class="sell-section add-property">
        <div class="container">
        <div class="center">
      <h2>Add New Property</h2>
      <form id="addPropertyForm" action="/view/addproperty">
        <input type="text" placeholder="Property Title" required />
        <input type="text" placeholder="Type" required />
        <input type="text" placeholder="Location" required />
        <input type="number" placeholder="Price ($)" required />
       <!--  <input type="file" accept="image/*" /> --> 
        <button type="submit">Add Property</button>
      </form>
      </div>
      </div>
    </div>

    <!-- Added Properties -->
    <div class="sell-section">
      <h2>Added Properties</h2>
      <div class="property-grid">
        <!-- Sample Property -->
        <div class="property-card">
          <img src="/house1.jpg" alt="Property 1" />
          <h3>Luxury Villa</h3>
          <p>Type: Villa</p>
          <p>Location: Shree Nagar</p>
          <p>Price: ₹1,20,00,000</p>
          <button class="btn-sell">Mark as Sold</button>
          <button class="btn-remove">Remove</button>
        </div>
        <!-- Add more cards dynamically -->
      </div>
    </div>

    <!-- Sold Properties -->
    <div class="sell-section">
      <h2>Sold Properties</h2>
      <div class="property-grid sold">
        <div class="property-card sold">
          <img src="/house2.jpg" alt="Sold Property" />
          <h3>Modern Apartment</h3>
          <p>Sold for: ₹50,00,000</p>
        </div>
      </div>
    </div>

  </section>
</body>
</html>