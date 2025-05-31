<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="com.dreamhomes.demo.entity.Property"%>
<%@ page import="com.dreamhomes.demo.entity.User"%>
<%@ page import="org.springframework.ui.Model"%>
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
      <li><a href="/view/properties">Explore Properties</a></li>
      <li><a href="/view/buy">Buy</a></li>
      <li><a href="/view/sell">Sell</a></li>
      <li><a href="/view/about">About</a></li>
      <li><a href="/view/contact">Contact</a></li>
      <li><a href="/view/logout">LogOut</a></li>
    </ul>
    <a href="/view/profile" class="profile-btn">Profile</a>
  </nav>
<% 
User user=(User) session.getAttribute("user"); 
%>
  <!-- 🏡 Banner Section -->
  <header class="banner">
    <div class="banner-content">
      <h1>Welcome <%= user.getName() %></h1>
      <h2>Find Your Dream Property</h2>
      <p>Explore a wide range of properties for sale in your desired location</p>
      <a href="#Property_List" class="banner-btn">Get Started</a>
    </div>
  </header>


<section class="filters">
  <h2> <a href="/view/properties#property-listings" style="text-decoration: none;color: green;">Explore Properties</a></h2>
</section>
<!-- 🏘 Property Listings -->
<section class="property-listings" id="Property_List">

  <%List<Property> property =(List<Property>) request.getAttribute("properties"); %>
  <%if(property !=null){ %>
  <% for(Property p:property){%>
  <div class="property-card">
    <img src="/house1.jpg" alt="House 1">
    <div class="property-info">
      <h3><%= p.getName() %></h3>
      <p class="location"><%= p.getLocation()%></p>
      <p class="price">₹<%= p.getPrice()%></p>
      <p class="desc">Description</p>
    </div>
  </div>
  <%}  }%>
  
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

<script  type="text/javascript">
    /*// Toggle Buy Button Functionality (Placeholder)
    const buttons = document.querySelectorAll(".buy-btn");
    buttons.forEach(btn => {
      btn.addEventListener("click", () => {
        alert("Property added to your purchased list (not saved yet).");
      });
    });*/
    function applyFilters(){
    	
 	   const option=document.getElementById('type').value;
 	   const option1=document.getElementById('price').value;
 	   const option2=document.getElementById('location').value;
 	   
 	   let url='http://localhost:8080/view/allproperty';
 	   console.log(option)
 	  
 	  
       let params = [];

       if (option.length > 0) params.push("type=" + option);
       if (option1.length > 0) params.push("price=" + option1);
       if (option2.length > 0) params.push("location=" + option2);

       if (params.length > 0) {
           url += "?" + params.join("&");
       }
 	   //if(option.length > 0){
 	   //   url= url+"?type=" + option;
 	   //}
 	   
 	   const xhttp = new XMLHttpRequest();
 	   xhttp.onload = function(){
 		   console.log(this.responseText);
 		    
 		   myObj = JSON.parse(this.responseText);
 		   
 		  text = "";
 		    for (x in myObj) {
 		    	text +=  "<div class='property-card'>  <img src='/house2.jpg' alt='House 2'> <div class='property-info'>";
 		 		text += "<h3>" + myObj[x].name + "</h3>";
 				text += "<p class='location'>" + myObj[x].location + "</p>";
 		 		//text += "<p>" + myObj[x].type + "</p>";
 				text += "<p class='price'>" + myObj[x].price + "</p>";
 				text += "<p class='desc'>Description"+ +"</p> </div></div>";
 		 	}
 		text += ""
 		   document.getElementById("demo").innerHTML = text;
 	   
 	   }
 	   
 	   xhttp.open("GET", url, true);
 	   xhttp.send();
    }
  </script>
</body>
</html>
