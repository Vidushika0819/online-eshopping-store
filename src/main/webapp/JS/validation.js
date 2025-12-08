function validateForm() {
	
  let valid = true;

  // Clear previous messages
  document.getElementById("name-error").textContent = "";
  document.getElementById("price-error").textContent = "";
  document.getElementById("quantity-error").textContent = "";

  const name = document.getElementById("name").value.trim();
  const price = document.getElementById("price").value;
  const quantity = document.getElementById("quantity").value;

  if (name === "") {
    document.getElementById("name-error").textContent = "Please enter a product name.";
    valid = false;
  }

  if (price === "" || isNaN(price) || Number(price) <= 0) {
    document.getElementById("price-error").textContent = "Please enter a valid price greater than 0.";
    valid = false;
  }

  if (quantity === "" || isNaN(quantity) || Number(quantity) <= 0) {
    document.getElementById("quantity-error").textContent = "Please enter a valid quantity greater than 0.";
    valid = false;
  }

  return valid;
}
