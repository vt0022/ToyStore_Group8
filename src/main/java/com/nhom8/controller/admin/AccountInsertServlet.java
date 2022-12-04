/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.nhom8.controller.admin;

import com.nhom8.context.UploadImage;
import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.entity.Account;
import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.beanutils.BeanUtils;

@MultipartConfig()
@WebServlet(name = "AccountInsertServlet", urlPatterns = {"/admin/account/insert"})
public class AccountInsertServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    AccountDAOImpl dao = new AccountDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {

            //int status = Integer.parseInt(request.getParameter("status"));
            Account a = new Account();
            try {
                BeanUtils.populate(a, request.getParameterMap());

                if (dao.checkExist(a.getUsername()) != null) {
                    request.setAttribute("message", "Tên đăng nhập đã tồn tại!"); // Có thể thêm phần lưu lại thông tin
                    request.getRequestDispatcher(request.getContextPath() + "/View/Admin/add-user.jsp").forward(request, response);
                } else {
                    Map result = null;
                    Collection<Part> fileParts = request.getParts();
                    for (Part part : fileParts) {
                        if (part.getName().equals("image")) {
                            String fileName = part.getSubmittedFileName();
                            result = UploadImage.uploadImage(fileName, part);
                            String url = String.valueOf(result.get("url"));
                            a.setImage(url);
                            if (result == null) {
                                throw new RuntimeException("Loi upload");
                            }
                        }
                    }
                    int status = Integer.parseInt(request.getParameter("status"));
                    a.setStatus(status);
                    
                    dao.register(a);
                    
                    request.setAttribute("message", "Đã tạo tài khoản thành công!");
                    request.getRequestDispatcher("/admin/user/manage").forward(request, response);
                }
            } catch (Exception e) {
                {
                }
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }

    }
}