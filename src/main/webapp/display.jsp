<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Product Details</title>

	<link rel="stylesheet" type="text/css" href="CSS/style.css">

</head>
	<body>
		<h1>Stock Table</h1>
		
<!--Add New Stock Button-->
		<a href="INSERT.jsp" class="add-button">Add New Stock</a>
		
<!--Search Field-->
		<div class="search-container">
		  <input type="text" id="searchInput" placeholder="Search...">
		</div>
		
<!--Search Item Not Found Message-->
		<p id="noResultsMessage" style="display:none;">
		  No results found.
		</p>
		
<!--Table Heads-->
		<table>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Description</th>
				<th>Action</th>
			</tr>
			
<!--Get All Stock Details-->
			
			<c:forEach var="Store" items="${allstock}">
			
				<tr>
					<td>${Store.product_id}</td>
					<td>${Store.product_name}</td>
					<td>${Store.quantity}</td>
					<td>${Store.price}</td>
					<td>${Store.description}</td>
					
					
					<td>
						
<!--Update Button-->

						<a href="UPDATE.jsp?product_id=${Store.product_id}&product_name=${Store.product_name}&quantity=${Store.quantity}&price=${Store.price}&description=${Store.description}">
							<button>Update</button>
						</a>
						<br>
						
<!--Delete Button-->

						<form action="DELETEservlet" method="post" onsubmit="return confirmDelete();">
						  <input type="hidden" name="product_id" value="${Store.product_id}"/>
						  <button type="submit">Delete</button>
						</form>
						
					</td>
				</tr>
			
			</c:forEach>
			
		</table>
		
		<script src="JS/searchFilterProducts.js"></script>
		
	</body>
</html>