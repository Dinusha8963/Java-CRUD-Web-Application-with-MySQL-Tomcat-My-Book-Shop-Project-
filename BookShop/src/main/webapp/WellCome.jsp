<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #a1c4fd, #c2e9fb);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        animation: fadeInBody 1s ease-in;
    }

    .container {
        text-align: center;
        background-color: #ffffff;
        padding: 50px 40px;
        border-radius: 20px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        animation: fadeInContainer 1s ease-in;
    }

    h1 {
        color: #0d47a1;
        margin-bottom: 40px;
        animation: slideDown 1s ease-out;
    }

    a {
        text-decoration: none;
        margin: 0 15px;
    }

    button {
        padding: 12px 25px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        color: white;
        font-size: 16px;
        background: linear-gradient(45deg, #2196f3, #1e88e5);
        transition: transform 0.3s, background 0.3s, box-shadow 0.3s;
    }

    button:hover {
        transform: scale(1.1);
        background: linear-gradient(45deg, #1e88e5, #1565c0);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }

    @keyframes fadeInBody {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes fadeInContainer {
        from { opacity: 0; transform: scale(0.9); }
        to { opacity: 1; transform: scale(1); }
    }

    @keyframes slideDown {
        from { transform: translateY(-50px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>
</head>
<body>
<div class="container">
    <h1>Welcome to My Book Shop Project</h1>

    <a href="Register.jsp">
        <button>Sign In</button>
    </a>
    <a href="login.jsp">
        <button>Sign Up</button>
    </a>
</div>
</body>
</html>
