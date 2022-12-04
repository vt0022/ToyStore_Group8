/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.nhom8.controller.customer;

import com.nhom8.dao.CartDAOImpl;
import com.nhom8.dao.CartItemDAOImpl;
import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.Account;
import com.nhom8.entity.Product;
import com.nhom8.entity.Cart;
import com.nhom8.entity.CartItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddCartServlet", urlPatterns = {"/addcart"})
public class CartAddServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    CartDAOImpl dao = new CartDAOImpl();
    CartItemDAOImpl dao2 = new CartItemDAOImpl();
    ProductDAOImpl dao3 = new ProductDAOImpl();

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();

        if (session != null && session.getAttribute("account") != null) {
            int productid = Integer.parseInt(request.getParameter("id"));//
            Product product = dao3.getProductByID(productid);
            System.out.println(productid);
            String quant = request.getParameter("quantity");
            if (quant == null) {
                quant = "1";
            }
            int quantity = Integer.parseInt(quant);
            Account a = (Account) session.getAttribute("account");
            Cart cart = dao.getCartByCusID(a.getId());
            if (cart == null) {
                cart = new Cart();
                cart.setAccount(a);
                dao.insert(cart);
            }

            List<CartItem> cartItem = dao2.getCartItemByCart(cart.getId());
            session.setAttribute("list-cart", cartItem);
            List<CartItem> cart_Item = (List<CartItem>) session.getAttribute("list-cart");

            if (cart_Item == null) {
                CartItem ci = new CartItem();
                ci.setQuantity(quantity);
                ci.setCart(cart);
                ci.setProduct(product);
                dao2.insert(ci);
                cartItem = dao2.getCartItemByCart(cart.getId());
                session.setAttribute("list-cart", cartItem);
                response.sendRedirect(request.getContextPath() + "/productlist");
            } else {
                boolean exist = false;
                for (CartItem ci : cart_Item) {
                    if (ci.getProduct().getId() == productid) {
                        ci.setId(ci.getId());
                        ci.setQuantity(ci.getQuantity() + quantity);
                        ci.setCart(cart);
                        ci.setProduct(product);
                        dao2.update(ci);
                        response.sendRedirect(request.getContextPath() + "/productlist");
                        return;
                    }
                }
                if (!exist) {
                    CartItem ci = new CartItem();
                    ci.setQuantity(quantity);
                    ci.setCart(cart);
                    ci.setProduct(product);
                    dao2.insert(ci);
                    response.sendRedirect(request.getContextPath() + "/productlist");
                }
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Customer/user-login.jsp");
        }
    }

}
