<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Register - Dream Homes</title>
  <link rel="stylesheet" href="/style.css">
  <link rel="stylesheet" href="/loginstyle.css">
</head>
<body class="login-body">
  <div class="login-container">
    <h2>Create Your Account</h2>
    <form class="login-form" action="/view/login2" method="post">
      <div class="input-group">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required />
      </div>
      <div class="input-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required />
      </div>
      <div class="input-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Choose a username" required />
      </div>
      <div class="input-group">
        <label for="password">Password</label>
        <div class="password-group">
        <input type="password" id="password" name="password" placeholder="Create a password" required />
  <span class="toggle-password" onclick="togglePassword()">
    👁️
  </span>
</div>
      </div>
      <button type="submit" class="login-btn">Register</button>
      <p class="register-link">Already have an account? <a href="/view/login">Login</a></p>
    </form>
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
