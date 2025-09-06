package com.xinloihuy.cart;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.util.ArrayList;

import com.xinloihuy.data.ProductIO;
import com.xinloihuy.model.Product;

@WebServlet("/loadProducts")
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String path = getServletContext().getRealPath("/WEB-INF/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/WEB-INF/cart/cartForm.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}