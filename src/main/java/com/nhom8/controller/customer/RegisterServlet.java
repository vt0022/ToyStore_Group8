/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.nhom8.controller.customer;

import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author Admin
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

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
        
        String username = request.getParameter("username");
        /*
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        */
        AccountDAOImpl dao = new AccountDAOImpl();

        Account a = dao.checkExist(username);
        Account b = new Account();
        if (a != null) {
            request.setAttribute("message", "Tên đăng nhập đã tồn tại!");
            request.getRequestDispatcher(request.getContextPath() + "/View/Customer/user-register.jsp").forward(request, response);
        } else {
            try {
                BeanUtils.populate(b, request.getParameterMap());
                b.setType(1);
                b.setStatus(1);
                
                dao.register(b);

                request.setAttribute("message", "Đăng ký thành công! Vui lòng đăng nhập!");
                request.getRequestDispatcher(request.getContextPath() + "/View/Customer/user-login.jsp").forward(request, response);
                //response.sendRedirect(request.getContextPath()+"/View/Customer/user-login.jsp");
            } catch (Exception e) {
            }
        }
    }
}
