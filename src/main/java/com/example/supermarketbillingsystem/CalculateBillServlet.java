package com.example.supermarketbillingsystem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/CalculateBillServlet")
public class CalculateBillServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final Map<String, Double> foodPrices = new HashMap<>();

    static {
        // Hardcode the food prices
        foodPrices.put("Bread", 2.0);
        foodPrices.put("Milk", 3.0);
        foodPrices.put("Eggs", 4.0);
        foodPrices.put("Apples", 2.5);
        foodPrices.put("Bananas", 1.5);
        foodPrices.put("Cheese", 5.0);
        foodPrices.put("Yogurt", 3.5);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Integer> boughtItems = new HashMap<>();

        // Get quantities from request parameters
        int breadQuantity = Integer.parseInt(request.getParameter("breadQuantity"));
        int milkQuantity = Integer.parseInt(request.getParameter("milkQuantity"));
        int eggsQuantity = Integer.parseInt(request.getParameter("eggsQuantity"));
        int applesQuantity = Integer.parseInt(request.getParameter("applesQuantity"));
        int bananasQuantity = Integer.parseInt(request.getParameter("bananasQuantity"));
        int cheeseQuantity = Integer.parseInt(request.getParameter("cheeseQuantity"));
        int yogurtQuantity = Integer.parseInt(request.getParameter("yogurtQuantity"));

        // Calculate total bill
        double totalBill = calculateTotalBill(breadQuantity, milkQuantity, eggsQuantity, applesQuantity,
                bananasQuantity, cheeseQuantity, yogurtQuantity);

        // Store bought items and their prices as request attributes
        storeBoughtItems(request, boughtItems, "Bread", breadQuantity);
        storeBoughtItems(request, boughtItems, "Milk", milkQuantity);
        storeBoughtItems(request, boughtItems, "Eggs", eggsQuantity);
        storeBoughtItems(request, boughtItems, "Apples", applesQuantity);
        storeBoughtItems(request, boughtItems, "Bananas", bananasQuantity);
        storeBoughtItems(request, boughtItems, "Cheese", cheeseQuantity);
        storeBoughtItems(request, boughtItems, "Yogurt", yogurtQuantity);

        request.setAttribute("totalBill", totalBill);
        request.setAttribute("boughtItems", boughtItems);

        // Forward to the JSP page for displaying the result
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

    private double calculateTotalBill(int breadQuantity, int milkQuantity, int eggsQuantity, int applesQuantity,
                                      int bananasQuantity, int cheeseQuantity, int yogurtQuantity) {
        double totalBill = 0.0;
        totalBill += breadQuantity * foodPrices.get("Bread");
        totalBill += milkQuantity * foodPrices.get("Milk");
        totalBill += eggsQuantity * foodPrices.get("Eggs");
        totalBill += applesQuantity * foodPrices.get("Apples");
        totalBill += bananasQuantity * foodPrices.get("Bananas");
        totalBill += cheeseQuantity * foodPrices.get("Cheese");
        totalBill += yogurtQuantity * foodPrices.get("Yogurt");
        return totalBill;
    }

    private void storeBoughtItems(HttpServletRequest request, Map<String, Integer> boughtItems, String item, int quantity) {
        if (quantity > 0) {
            boughtItems.put(item, quantity);
            request.setAttribute(item + "Price", foodPrices.get(item) * quantity);
        }
    }
}