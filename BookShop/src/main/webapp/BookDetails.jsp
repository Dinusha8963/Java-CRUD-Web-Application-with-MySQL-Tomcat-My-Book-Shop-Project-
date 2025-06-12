<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #a1c4fd, #c2e9fb);
        margin: 0;
        padding: 20px;
        color: #333;
        animation: fadeInBody 1s ease-in;
    }

    h1 {
        text-align: center;
        color: #0d47a1;
        margin-bottom: 30px;
        animation: slideDown 1s ease-out;
    }

    input[type="text"] {
        display: block;
        margin: 0 auto 20px auto;
        padding: 10px;
        width: 40%;
        border: 2px solid #0d47a1;
        border-radius: 25px;
        outline: none;
        transition: 0.3s;
    }

    input[type="text"]:focus {
        border-color: #1976d2;
        box-shadow: 0 0 10px #1976d2;
    }

    table {
        width: 90%;
        margin: 0 auto;
        border-collapse: collapse;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        animation: fadeInTable 1s ease-in;
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        transition: background-color 0.3s;
        color: #0d47a1;
    }

    th {
        background-color: #0d47a1;
        color: white;
    }

    tr:hover {
        background-color: #e3f2fd;
    }

    button {
        padding: 8px 12px;
        margin: 2px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        color: white;
        background: linear-gradient(45deg, #2196f3, #1e88e5);
        transition: transform 0.2s, background 0.3s;
    }

    button:hover {
        transform: scale(1.1);
        background: linear-gradient(45deg, #1e88e5, #1565c0);
    }

    @keyframes fadeInBody {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideDown {
        from { transform: translateY(-50px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }

    @keyframes fadeInTable {
        from { opacity: 0; transform: scale(0.95); }
        to { opacity: 1; transform: scale(1); }
    }
</style>


<body>
<h1>Book Details</h1>

<input type="text" id="searchInput" placeholder = "Search Hear ...">
<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Price</th>
<th>Category</th>
<th>Quantity</th>
<th>Description</th>
<th>Action</th>
</tr>
<c:forEach var = "book" items ="${allBooks }">
<tr>
<td>${book.id}</td>
<td>${book.name}</td>
<td>${book.price}</td>
<td>${book.catagory}</td>
<td>${book.quentity}</td>
<td>${book.description}</td>
<td>
<a href="update.jsp?id=${book.id}&name=${book.name}&price=${book.price}&catagory=${book.catagory}&quentity=${book.quentity}&description=${book.description}">
<button>Update</button>
</a>
<form action="/BookShop/DeleteServlet" method="post">
<input type="hidden" name="id" value="${book.id}">
<button>Delete</button>
</form>
</td>
</tr>

</c:forEach>

</table>

<script type="text/javascript">
window.onload = function() {
    function filterTable() {
        var input, filter, table, tr, td, i, j, txtValue;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.querySelector("table");
        tr = table.getElementsByTagName("tr");

        for (i = 1; i < tr.length; i++) {
            var found = false;
            td = tr[i].getElementsByTagName("td");

            for (j = 0; j < td.length; j++) {
                if (td[j]) {
                    txtValue = td[j].textContent || td[j].innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        found = true;
                        break;
                    }
                }
            }

            if (found) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }

    document.getElementById("searchInput").addEventListener("input", filterTable);
};
</script>




</body>
</html>