<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result - Grocery Bill Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f2f2f2;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .container {
            width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        .item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .item label {
            color: #555;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>Grocery Bill Calculator</h1>
<div class="container">
    <h2>Result</h2>
    <div class="item">
        <label>Bread:</label>
        <span><%= request.getAttribute("BreadPrice") %></span>
    </div>
    <div class="item">
        <label>Milk:</label>
        <span><%= request.getAttribute("MilkPrice") %></span>
    </div>
    <div class="item">
        <label>Eggs:</label>
        <span><%= request.getAttribute("EggsPrice") %></span>
    </div>
    <div class="item">
        <label>Apples:</label>
        <span><%= request.getAttribute("ApplesPrice") %></span>
    </div>
    <div class="item">
        <label>Bananas:</label>
        <span><%= request.getAttribute("BananasPrice") %></span>
    </div>
    <div class="item">
        <label>Cheese:</label>
        <span><%= request.getAttribute("CheesePrice") %></span>
    </div>
    <div class="item">
        <label>Yogurt:</label>
        <span><%= request.getAttribute("YogurtPrice") %></span>
    </div>
    <hr>
    <div class="item">
        <label>Total Bill:</label>
        <span><%= request.getAttribute("totalBill") %></span>
    </div>
</div>
</body>
</html>
