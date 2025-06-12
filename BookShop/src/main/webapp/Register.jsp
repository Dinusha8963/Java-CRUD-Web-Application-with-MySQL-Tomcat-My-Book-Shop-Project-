<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        padding: 40px;
        color: #333;
        animation: fadeInBody 1s ease-in;
    }

    h1 {
        text-align: center;
        color: #0d47a1;
        margin-bottom: 30px;
        animation: slideDown 1s ease-out;
    }

    form {
        width: 50%;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 20px 30px;
        border-radius: 15px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        animation: fadeInForm 1s ease-in;
    }

    table {
        width: 100%;
    }

    td {
        padding: 10px;
        font-weight: bold;
        color: #0d47a1;
    }

    input[type="text"], input[type="email"], input[type="password"] {
        width: 95%;
        padding: 8px;
        border: 2px solid #0d47a1;
        border-radius: 8px;
        transition: border-color 0.3s, box-shadow 0.3s;
    }

    input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus {
        border-color: #1976d2;
        box-shadow: 0 0 8px #1976d2;
        outline: none;
    }

    input[type="submit"], input[type="reset"] {
        padding: 10px 20px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        color: white;
        margin: 5px;
        background: linear-gradient(45deg, #2196f3, #1e88e5);
        transition: transform 0.2s, background 0.3s;
    }

    input[type="submit"]:hover, input[type="reset"]:hover {
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

    @keyframes fadeInForm {
        from { opacity: 0; transform: scale(0.95); }
        to { opacity: 1; transform: scale(1); }
    }
</style>
<body>
<h1>SignIn</h1>
<form action="/BookShop/UserInsertServlet" method = "post">
<table>
<tr>
<td>Name:</td>
<td><input type ="text" name ="name" required></td>
</tr>

<tr>
<td>Email:</td>
<td><input type ="email" name ="gmail" required></td>
</tr>

<tr>
<td>password:</td>
<td><input type="password" name="password" required></td>
</tr>

<tr>
<td>Mobile Number</td>
<td><input type ="text" name ="phon" required></td>
</tr>
<tr>
        <td colspan="2" style="text-align: center;">
            <input type="submit" value="Submit">
            <input type="reset" value="Clear">
        </td>
        </tr>
</table>
</form>
</body>
</html>