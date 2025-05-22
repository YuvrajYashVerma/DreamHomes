<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.dreamhomes.demo.entity.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>User Dashboard - Dream Homes</title>
  <link rel="stylesheet" href="/style.css" />
  <link rel="stylesheet" href="/profilestyle.css" />
</head>
<body class="dashboard-body">

  <div class="dashboard-container">
    
    <!-- 📚 Sidebar -->
    <aside class="sidebar">
      <h2>Dashboard</h2>
      <ul>
        <li><a href="/view/home2" class="go-home-btn">← Go to Home Page</a></li>
        <li><a href="/view/profile">My Listings</a></li>
        <li><a href="#">Saved Properties</a></li>
        <li><a href="#">Settings</a></li>
        <li><a href="/view/landing">Logout</a></li>
      </ul>
    </aside>

    <!-- 📇 Main Dashboard -->
    <%
            User user = (User)request.getAttribute("user");
            if (user != null) {
    %>
    <main class="dashboard-content">
      <!-- Main Content -->
    <div class="main-content">
      <h1>Welcome  <%= user.getName() %></h1>
      
      <div class="user-info">
        <img src="/profile.jpg" alt="User" class="user-pic" />
        <div class="info-card">
          <h3>User ID</h3>
          <p><%= user.getId() %></p>
        </div>
        <div class="info-card">
          <h3>Name</h3>
          <p><%= user.getName() %></p>
        </div>
        <div class="info-card">
          <h3>Username</h3>
          <p><%= user.getUsername() %></p>
        </div>
        <div class="info-card">
          <h3>Email</h3>
          <p><%= user.getEmail() %></p>
        </div>
      </div>
    </div>
    <% } %>
    
    
      <div class="my-properties">
        <h3>My Listings</h3>
        <div class="property-card">
          <img src="/house1.jpg" alt="My House">
          <div class="property-info">
            <h3>Luxury Villa</h3>
            <p>Location: Shree Nagar, Indore</p>
            <p>Price: ₹1,20,00,000</p>
          </div>
        </div>
        <div class="property-card">
          <img src="/house2.jpg" alt="My House 2">
          <div class="property-info">
            <h3>Cozy Apartment</h3>
            <p>Location: Vijay Nagar, Indore</p>
            <p>Price: ₹50,00,000</p>
          </div>
        </div>
      </div>
    </main>
  </div>

</body>
</html>
