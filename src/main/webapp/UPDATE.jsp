<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Update Stock Item</title>
		
		<link rel="stylesheet" type="text/css" href="CSS/style.css">
		
	</head>

	<body>
	
		<div class="update-card">
		    <h1>Update Stock Item</h1>
		    <a href="GETALLservlet">Back to Dashboard</a>
		</div>
	
		<%
			String product_id=request.getParameter("product_id");
			String product_name=request.getParameter("product_name");
		    int quantity = Integer.parseInt(request.getParameter("quantity"));
		    double price = Double.parseDouble(request.getParameter("price"));
			String description=request.getParameter("description");
		%>
		    
<!--Update Form-->

	    <form action="UPDATEservlet" method="post" onsubmit="return validateForm()">
	    
	    	<label>ID:</label>
	        <input type="text" name="product_id" value="<%=product_id %>" readonly><br><br>
	        
	        <label>Product Name:</label>
	        <input type="text" name="product_name" value="<%=product_name %>" id="name" />
	        <span id="name-error" class="error-msg"></span><br><br>
	
	        <label>Quantity:</label>
	        <input type="number" name="quantity" value="<%=quantity %>" id="quantity" />
	        <span id="quantity-error" class="error-msg"></span><br><br>
	
	        <label>Price (LKR):</label>
	        <input type="number" name="price" step="0.01" value="<%=price %>" id="price" />
	        <span id="price-error" class="error-msg"></span><br><br>
			
			<label>Description:</label>
	        <textarea name="description"><%=description %></textarea><br><br>
	        
	        <input type="submit" value="Update Item">
	        
	    </form>
	    
		<script src="JS/validation.js"></script>
		 
	</body>
</html>