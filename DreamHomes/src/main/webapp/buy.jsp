<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.dreamhomes.demo.entity.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Buy Properties</title>
  <link rel="stylesheet" href="/style.css" />
  <link rel="stylesheet" href="/buy.css">
</head>
<body>
<% 
User user=(User) session.getAttribute("user"); 
%>
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
  
  <section class="sell-container">
  <header>
    <h1>Buy Your Dream Property</h1>
    <p>Choose from a wide range of listings and make it yours.</p>
  </header>

  <section class="filters"> 
    <select id="location">
    <option value="">Location</option>
      <option value="Indore">Indore</option>
      <option value="Shree Nagar">Shree Nagar</option>
      <option value="LIG">LIG</option>
      <option value="Dewas">Dewas</option>
      <option value="Khajarana">Khajarana</option>
      <option value="Maruti Nagar">Maruti Nagar</option>
      <option value="Bhopal">Bhopal</option>
    </select>
    <select id="type">
    <option value="">Property Type</option>
      <option value="House">House</option>
      <option value="Apartment">Apartment</option>
      <option value="Villa">Villa</option>
    </select>
    <select id="price">
      <option value="">Price Range</option>
      <option value="500000">500000</option>
      <option value="1000000">1000000</option>
      <option value="2000000">2000000</option>
      <option value="5000000">5000000</option>
      <option value="2500000">2500000</option>
    </select>
    <button onclick="applyFilters()">Filter</button>
  </section>
  <section class="properties">
    <h2>Available Properties</h2>
   
    <div class="cards" id=demo>
      
    </div>
  </section>

  <section class="properties">
    <h2>Sample Properties</h2>
   
    <div class="cards">
      <div class="card">
        <img src="/images/villa.jpg" alt="Luxury Villa">
        <h3>Luxury Villa</h3>
        <p>Location: RalaMandal Hills, Indore</p>
        <p>Price: ₹2,500,000</p>
        <button class="buy-btn">Buy Now</button>
      </div>
      
      <div class="card">
        <img src="/images/apartment.jpg" alt="City Apartment">
        <h3>Modern Apartment</h3>
        <p>Location: Maruti Nagar, Indore</p>
        <p>Price: ₹950,000</p>
        <button class="buy-btn">Buy Now</button>
      </div>
      <div class="card">
        <img src="/images/house.jpg" alt="Family House">
        <h3>Family House</h3>
        <p>Location: Khajarana, Indore</p>
        <p>Price: ₹650,000</p>
        <button class="buy-btn">Buy Now</button>
      </div>
    </div>
  </section>

  <section class="history">
    <h2>Purchased Properties</h2>
    <p>You haven't purchased any properties yet.</p>
  </section>
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
 		   
 		   text = "<div class='cards'>";
 		     for (x in myObj) {
 		    	text += "<div class='card'>";
 		 		text += "<img src='https://via.placeholder.com/300x200?text=Luxury+Villa' alt='PropertyImage'> <h3>" + myObj[x].name + "</h3>";
 		 		text += "<p> Location: " + myObj[x].location + "</p>";
 				text += "<p> Price: ₹" + myObj[x].price + "</p>";
 		 	    text += "<button class='buy-btn'>Buy Now</button></div>";
 		     }
 		   text += "</div>"
 		   document.getElementById("demo").innerHTML = text;
 	   
 	   }
 	   
 	   xhttp.open("GET", url, true);
 	   xhttp.send();
    }
  </script>
  
</body>
</html>