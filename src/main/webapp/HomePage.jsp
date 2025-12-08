<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <title>HELA STORE</title>
	    
	    <link rel="stylesheet" type="text/css" href="CSS/homepage.css">
	    
	</head>

	<body>
	
	<!-- Header -->
	<div class="header">
	
	    <div class="logo">
	    	<a href="HomePage.jsp"> HELA STORE</a>
	    </div>
	    
	    <div class="search-container">
			  <input type="text" id="searchInput" placeholder="Search...">
			  <a href="#"><img src="IMAGES/cart.jpg" alt="Cart" width="30" class="cart-icon"></a>
		</div>
	    
	    <div class="icons">
	        <a href="login.jsp"><img src="IMAGES/user.jpg" alt="Account" width="30" class="user-icon"></a>
	    </div>
	    
	</div>
	
	<!-- Navigation Bar -->
		<nav class="nav-bar">
			<div class="nav-links">
		         <a href="#"> Electronics </a>
		         <a href="#"> Home & Kitchen </a>
		         <a href="#"> Clothing </a>
		         <a href="#"> Beauty Products </a>
		         <a href="#"> Books </a>
		         <a href="#"> Sports & Fitness </a>
		         <a href="#"> Toys </a>
	         </div>
		</nav>
	
	<!-- Main Product Grid -->
	<div class="product-grid">
	   
	   
	    <div class="product-card">
	        <img src="IMAGES/bottle.jpg" alt="Product">
	        <h3>Stainless Steel Water Bottle</h3>
	        <p>Rs.1700</p>
	        <form action="AddToCartServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Add to Cart</button>
	        </form>
	        <form action="BuyNowServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Buy Now</button>
	        </form>
	    </div>
	    
	    
	    <div class="product-card">
	        <img src="IMAGES/earbuds.jpg" alt="Product">
	        <h3>Bluetooth Earbuds</h3>
	        <p>Rs.4200</p>
	        <form action="AddToCartServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Add to Cart</button>
	        </form>
	        <form action="BuyNowServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Buy Now</button>
	        </form>
	    </div>
	    
	    
	    <div class="product-card">
	        <img src="IMAGES/lamp.jpg" alt="Product">
	        <h3>LED Desk Lamp</h3>
	        <p>Rs.2300</p>
	        <form action="AddToCartServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Add to Cart</button>
	        </form>
	        <form action="BuyNowServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Buy Now</button>
	        </form>
	    </div>
	    
	    
	    <div class="product-card">
	        <img src="IMAGES/mouse.jpg" alt="Product">
	        <h3>Wireless Mouse</h3>
	        <p>Rs.1450</p>
	        <form action="AddToCartServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Add to Cart</button>
	        </form>
	        <form action="BuyNowServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Buy Now</button>
	        </form>
	    </div>
	    
	    
	    <div class="product-card">
	        <img src="IMAGES/notebook.jpg" alt="Product">
	        <h3>Notebook (A5, 200 Pages)</h3>
	        <p>Rs.250</p>
	        <form action="AddToCartServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Add to Cart</button>
	        </form>
	        <form action="BuyNowServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Buy Now</button>
	        </form>
	    </div>
	    
	    
	    <div class="product-card">
	        <img src="IMAGES/shirt.jpg" alt="Product">
	        <h3>Men's Cotton T-Shirt</h3>
	        <p>Rs.1200</p>
	        <form action="AddToCartServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Add to Cart</button>
	        </form>
	        <form action="BuyNowServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Buy Now</button>
	        </form>
	    </div>
	    
	    
	    <div class="product-card">
	        <img src="IMAGES/tea.jpg" alt="Product">
	        <h3>Organic Green Tea</h3>
	        <p>Rs.950</p>
	        <form action="AddToCartServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Add to Cart</button>
	        </form>
	        <form action="BuyNowServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Buy Now</button>
	        </form>
	    </div>
	    
	    
	    <div class="product-card">
	        <img src="IMAGES/charger.jpg" alt="Product">
	        <h3>USB-C Fast Charger</h3>
	        <p>Rs.1350</p>
	        <form action="AddToCartServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Add to Cart</button>
	        </form>
	        <form action="BuyNowServlet" method="post">
	            <input type="hidden" name="productId" value="101">
	            <button type="submit">Buy Now</button>
	        </form>
	    </div>
	    
	    
	</div>
	
	
	<!-- Footer -->
	<div class="footer">
	    <p>&copy; 2025 HELA STORE | <a href="#" style="color:white;">Contact</a> | <a href="#" style="color:white;">Privacy Policy</a></p>
	</div>
	
	<script src="JS/searchFilterHomePage.js"></script>
	
	</body>
	
</html>
