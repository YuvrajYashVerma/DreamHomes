<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login - Dream Homes</title>
  <link rel="stylesheet" href="/style.css"></link>
  <link rel="stylesheet" href="/loginstyle.css"></link>

</head>
<body>

  <!-- 🌐 Navbar -->
  <nav class="navbar">
    <div class="logo">Dream Homes</div>
    <ul class="nav-links">
      <li><a href="/view/landing">Home</a></li>
      <li><a href="/view/landing#about">About</a></li>
      <li><a href="/view/landing#contact">Contact</a></li>
      <li><a href="/view/login">Login</a></li>
      <li><a href="/view/register">Register</a></li>
    </ul>
  </nav>
  
  <div class="login-body">
  <div class="login-container">
    <h2>Login to Dream Homes</h2>
    <form class="login-form" action="/view/home" method="post">
      <div class="input-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required />
      </div>
      <div class="input-group">
        <label for="password">Password</label>
        <div class="password-group">
  <input type="password" id="password" name="password" placeholder="Enter your password" required />
  <span class="toggle-password" onclick="togglePassword()">
    👁️
  </span>
</div>
      </div>
      
      <button type="submit" class="login-btn">Login</button>
      
      <p class="register-link">Don't have an account? <a href="/view/register" style="color: #2A8000;">Register</a></p>
    </form>
  </div>

</div>
 
  <script>
  function togglePassword() {
    const passwordInput = document.getElementById("password");
    const toggleIcon = document.querySelector(".toggle-password");
    const isVisible = passwordInput.type === "text";

    passwordInput.type = isVisible ? "password" : "text";
    toggleIcon.textContent = isVisible ? "👁️" : "🙈";
  }
</script>
</body>
</html>
