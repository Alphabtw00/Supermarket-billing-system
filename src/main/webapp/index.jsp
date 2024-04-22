<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grocery Bill Calculator</title>
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
        form {
            width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #555;
        }
        input[type="number"] {
            width: 80px;
            padding: 5px;
            border-radius: 3px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            display: block;
            margin: 20px auto 0;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .total-bill {
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
            color: #333;
        }
        .item-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<h1>Grocery Bill Calculator</h1>
<form action="CalculateBillServlet" method="post">
    <div class="item-row">
        <label>Bread</label>
        <input type="number" min="0" value="0" name="breadQuantity">
        <span>x $2</span>
    </div>
    <div class="item-row">
        <label>Milk</label>
        <input type="number" min="0" value="0" name="milkQuantity">
        <span>x $3</span>
    </div>
    <div class="item-row">
        <label>Eggs</label>
        <input type="number" min="0" value="0" name="eggsQuantity">
        <span>x $4</span>
    </div>
    <div class="item-row">
        <label>Apples</label>
        <input type="number" min="0" value="0" name="applesQuantity">
        <span>x $2.5</span>
    </div>
    <div class="item-row">
        <label>Bananas</label>
        <input type="number" min="0" value="0" name="bananasQuantity">
        <span>x $1.5</span>
    </div>
    <div class="item-row">
        <label>Cheese</label>
        <input type="number" min="0" value="0" name="cheeseQuantity">
        <span>x $5</span>
    </div>
    <div class="item-row">
        <label>Yogurt</label>
        <input type="number" min="0" value="0" name="yogurtQuantity">
        <span>x $3.5</span>
    </div>
    <input type="submit" value="Calculate Total">
</form>
</body>
</html>