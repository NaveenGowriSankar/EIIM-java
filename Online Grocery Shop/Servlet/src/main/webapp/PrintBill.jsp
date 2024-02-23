<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div id="cart-container">
        <h3>Your Cart</h3>
        <ul id="cart-items"></ul>
        <p id="total-price">Total: Rs.0.00</p>
    </div>
    <button class="btn-view-cart" onclick="toggleCart()">View Cart</button>


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