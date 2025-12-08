<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <title>Add New Stock Item</title>
	
		<link rel="stylesheet" type="text/css" href="CSS/style.css">
		    
	</head>
	
	<body>
	
		<div class="form-card">
		    <h1>Add New Stock Item</h1>
		    <form action="INSERTservlet" method="post">
	
		    </form>
		    <a href="GETALLservlet">Back to Dashboard</a>
		</div>
		
<!--Insert Form-->

	    <form action="INSERTservlet" method="post" onsubmit="return validateForm()">
	    
	        <label>Product Name:</label>
	        <input type="text" name="product_name" id="name"  />
	        <span id="name-error" class="error-msg"></span><br><br>
	
	        <label>Quantity:</label>
	        <input type="number" name="quantity" id="quantity" />
	        <span id="quantity-error" class="error-msg"></span><br><br>
	
	        <label>Price (LKR):</label>
	        <input type="number" name="price" step="0.01" id="price" />
	        <span id="price-error" class="error-msg"></span><br><br>
			
			<label>Description:</label>
	        <textarea name="description" id="description"></textarea><br><br>
	        
	        <input type="submit" value="Add Item">
	        
	    </form>
	
		<script src="JS/validation.js"></script>

	</body>
</html>