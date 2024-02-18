
<!--  
Title: Online Grocery Shop
Author: Naveen G
Created On: 30/01/2024
Last Modified Data: 18/02/2024
Reviewed By: Sabapathi
Reviewed On: 06/02/2024
-->




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AR Grocery Shop</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa; /* Set a fallback background color */
    }

    .bg-blur {
        background-image: url("image.jpg");
        background-attachment: fixed;
        background-size: cover;
        filter: blur(5px); /* Add blur effect to background image */
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: -1;
    }

    .header {
        background-color: #343a40;
        color: white;
        padding: 20px 0;
    }

    .footer {
        background-color: #343a40;
        color: white;
        padding: 20px 0;
    }
</style>
</head>
<body>
<div class="bg-blur"></div> <!-- Container for blurred background image -->

<header class="header">
    <div class="container">
        <div class="row">
            <div class="col">
                <h1 class="text-center">AR Grocery Shop</h1>
            </div>
        </div>
    </div>
</header>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-12 col-md-6 text-center">
            <h2>Welcome!</h2>
            <p class="lead">Explore our wide range of grocery products.</p>
            <a href="LoginPage.html" class="btn btn-primary btn-lg btn-custom">Login</a>
            <a href="Signup.html" class="btn btn-success btn-lg btn-custom">Sign up</a><br><br>
            <a href="LoginProduct.jsp" class="btn btn-success btn-lg btn-custom" name="username">View Products</a>
            <% String message = "there"; %>
    
  
            
        </div>
    </div>
</div>

<footer class="footer mt-5 fixed-bottom"> <!-- Use Bootstrap's fixed-bottom class -->
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="text-center">&copy; 2024 AR Grocery Shop. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
