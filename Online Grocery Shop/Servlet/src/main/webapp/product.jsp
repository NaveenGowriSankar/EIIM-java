<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Grocery Shop - Products</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        padding-top: 50px;
    }
    
    .container {
        max-width: 800px;
    }
    
    .product-card {
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        margin-bottom: 20px;
    }
    
    .product-card img {
        max-width: 100%;
        height: auto;
        border-radius: 10px;
        margin-bottom: 10px;
    }
    
    .product-title {
        font-size: 20px;
        font-weight: bold;
        color: #333;
        margin-bottom: 10px;
    }
    
    .product-price {
        font-size: 18px;
        color: #007bff;
        margin-bottom: 10px;
    }
    
    .btn-add-to-cart {
        display: inline-block;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 8px 12px;
        cursor: pointer;
    }
    
    .btn-add-to-cart:hover {
        background-color: #0056b3;
    }
    
    .btn-view-cart {
        display: inline-block;
        background-color: #28a745;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 8px 12px;
        cursor: pointer;
    }
    
    .btn-view-cart:hover {
        background-color: #218838;
    }
    
    #cart-container {
        display: none;
        margin-top: 20px;
    }
    
    #cart-items {
        list-style-type: none;
        padding: 0;
    }
    
    #cart-items li {
        margin-bottom: 10px;
    }
    
    #total-price {
        font-size: 20px;
        font-weight: bold;
    }
</style>
</head>
<body>
<div id="usernameDisplay"></div>
<div id="usernameDisplay"></div>
	<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 50px;
        }
        
        #usernameDisplay {
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
            text-align: center;
            margin-top: 50px;
        }
    </style>
    <script>
        // Retrieve the username from the request attribute
        const username = '<%= request.getAttribute("username") %>';
      
		var len = username.length;
		var fl = username.charAt(0).toUpperCase();
		var bl=fl+"";
		for(var i=1;i<=len;i++)
			{
				bl=bl+username.charAt(i);
			}
        // Display the username on the page
        document.getElementById('usernameDisplay').innerText ="Hello "+ bl+"!";
        	
    </script>
    
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="product-card">
                <img src="bananas.jpg" alt="Product 1">
                <p class="product-title">Banana</p>
                <p class="product-price">Rs.40.99/kg</p>
                <button class="btn-add-to-cart" onclick="addToCart('Banana', 40.99)">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-card">
                <img src="apple.jpg" alt="Product 2">
                <p class="product-title">Apple</p>
                <p class="product-price">Rs.125.49/kg</p>
                <button class="btn-add-to-cart" onclick="addToCart('Apple', 125.49)">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-card">
                <img src="spinach.jpg" alt="Product 1">
                <p class="product-title">Spinach</p>
                <p class="product-price">Rs.25.99/kg</p>
                <button class="btn-add-to-cart" onclick="addToCart('Spinach', 25.99)">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-card">
                <img src="fresh-tomatoes-white.jpg" alt="Product 1">
                <p class="product-title">Tomato</p>
                <p class="product-price">Rs.33.99/kg</p>
                <button class="btn-add-to-cart" onclick="addToCart('Tomato', 33.99)">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-card">
                <img src="beetroot.jpg" alt="Product 1">
                <p class="product-title">Beetroot</p>
                <p class="product-price">Rs.69.99/kg</p>
                <button class="btn-add-to-cart" onclick="addToCart('Beetroot', 69.99)">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-card">
                <img src="brinjal.jpg" alt="Product 1">
                <p class="product-title">Brinjal</p>
                <p class="product-price">$30.99/kg</p>
                <button class="btn-add-to-cart" onclick="addToCart('Brinjal', 30.99)">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-card">
                <img src="orange.jpg" alt="Product 1">
                <p class="product-title">Orange</p>
                <p class="product-price">Rs.80.99/kg</p>
                <button class="btn-add-to-cart" onclick="addToCart('Orange', 80.99)">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-card">
                <img src="pomegranate.jpg" alt="Product 1">
                <p class="product-title">Pomegranate</p>
                <p class="product-price">Rs.12.99/kg</p>
                <button class="btn-add-to-cart" onclick="addToCart('Pomegranate', 120.99)">Add to Cart</button>
            </div>
        </div>
        
    </div>
    <!-- Add more products similarly -->
    
    <!-- Cart -->
    <div id="cart-container">
        <h3>Your Cart</h3>
        <ul id="cart-items"></ul>
        <p id="total-price">Total: Rs.0.00</p>
    </div>
    <button class="btn-view-cart" onclick="toggleCart()">View Cart</button>
    <br>
    <br>
    <form action="/Servlet/PrintBill">
    <button class="btn-view-cart">Order</button>
    </form>
    
</div>

<script>
    let cartItems = [];
    
    function addToCart(productName, price) {
        // Check if the product is already in the cart
        let existingItem = cartItems.find(item => item.name === productName);
        
        if (existingItem) {
            // If the product is already in the cart, update the quantity
            existingItem.quantity += 1;
        } else {
            // If the product is not in the cart, add it
            cartItems.push({ name: productName, price: price, quantity: 1 });
        }
        
        updateCart();
    }
    
    function updateCart() {
        let cartList = document.getElementById("cart-items");
        cartList.innerHTML = "";
        let total = 0;
        cartItems.forEach(item => {
            let listItem = document.createElement("li");
            listItem.textContent = item.name + " - Rs." + item.price.toFixed(2);
            cartList.appendChild(listItem);
            total += item.price;
        });
        document.getElementById("total-price").textContent = "Total: Rs." + total.toFixed(2);
    }
    
    function toggleCart() {
        let cartContainer = document.getElementById("cart-container");
        cartContainer.style.display = cartContainer.style.display === "none" ? "block" : "none";
    }
</script>

</body>
</html>
