<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <input type="text" placeholder="Search by location...">
    <select id="type" onclick="applyFilters()">
    <option>Property Type</option>
      <option>House</option>
      <option>Apartment</option>
      <option>Villa</option>
    </select>
    <select>
      <option>Price Range</option>
      <option>Under $500,000</option>
      <option>$500K - $1M</option>
      <option>$1M+</option>
    </select>
    <button>Filter</button>
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
 	   
 	   let url='http://localhost:8080/view/allproperty';
 	   console.log(option)
 	  
 	   if(option.length > 0){
 		   url= url+"?type=" + option;
 	   }
 	   
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