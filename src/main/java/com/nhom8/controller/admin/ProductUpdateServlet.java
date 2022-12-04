/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.nhom8.controller.admin;

import com.nhom8.context.UploadImage;
import com.nhom8.dao.CategoryDAOImpl;
import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.Category;
import com.nhom8.entity.Product;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
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
@WebServlet(name = "ProductUpdateServlet", urlPatterns = {"/admin/product/update"})
public class ProductUpdateServlet extends HttpServlet {

    // Lấy dữ liệu từ DAO
    private static final long serialVersionUID = 1L;

    ProductDAOImpl dao = new ProductDAOImpl();
    CategoryDAOImpl dao2 = new CategoryDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {
            int id = Integer.parseInt(request.getParameter("id"));

            List<Category> category = dao2.getAllCategories();
            Product product = dao.getProductByID(id);

            // Đặt dữ liệu cho JSP
            request.setAttribute("categorylist", category);
            request.setAttribute("product", product);

            // Chuyển tiếp yêu cầu của servlet sang jsp
            request.getRequestDispatcher("/View/Admin/edit-product.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            int catid = Integer.parseInt(request.getParameter("catid"));
            int status = Integer.parseInt(request.getParameter("status"));

            Product product = new Product();
            Category category = new Category();
            try {
                BeanUtils.populate(product, request.getParameterMap());

                //if (catid != product.getCategory().getId()) {
                //    Category category = new Category();
                category = dao2.getCategoryByID(catid);
                product.setCategory(category);
                product.setStatus(status);

                // Xử lý nếu ảnh không được up lên
                int flag = 0;
                Map result = null;
                Collection<Part> fileParts = request.getParts();
                for (Part part : fileParts) {
                    if (part.getName().equals("image")) {
                        String fileName = part.getSubmittedFileName();
                        result = UploadImage.uploadImage(fileName, part);
                        String url = String.valueOf(result.get("url"));
                        product.setImage(url);
                        if (result == null) {
                            throw new RuntimeException("Loi upload");
                        }
                    }
                }

                dao.update(product);

                request.setAttribute("message", "Đã cập nhật đồ chơi thành công!");
                request.getRequestDispatcher("/admin/product/manage").forward(request, response);

            } catch (Exception e) {
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }
    }
}