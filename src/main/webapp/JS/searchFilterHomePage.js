function filterProducts() {
    var input = document.getElementById("searchInput");
    var filter = input.value.toUpperCase();
    var productCards = document.getElementsByClassName("product-card");

    var visibleCount = 0;

    for (var i = 0; i < productCards.length; i++) {
        var productCard = productCards[i];
        var title = productCard.getElementsByTagName("h3")[0];

        if (title) {
            var txtValue = title.textContent || title.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                productCard.style.display = "";
                visibleCount++;
            } else {
                productCard.style.display = "none";
            }
        }
    }

    // Optionally, show a message if no results
    var noResultsMessage = document.getElementById("noResultsMessage");
    if (!noResultsMessage) {
        noResultsMessage = document.createElement("p");
        noResultsMessage.id = "noResultsMessage";
        noResultsMessage.style.textAlign = "center";
        noResultsMessage.style.color = "red";
        noResultsMessage.textContent = "No matching products found.";
        document.querySelector(".product-grid").appendChild(noResultsMessage);
    }

    if (visibleCount === 0) {
        noResultsMessage.style.display = "block";
    } else {
        noResultsMessage.style.display = "none";
    }
}

window.onload = function () {
    document.getElementById("searchInput").addEventListener("input", filterProducts);
};
