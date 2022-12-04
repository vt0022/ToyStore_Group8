/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.nhom8.controller.admin;

import com.nhom8.context.UploadImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@WebServlet(name = "UploadFileServlet", urlPatterns = {"/UploadFileServlet"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class UploadFileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // B1: Lấy dữ liệu từ DAO
        Map result = null;
        Collection<Part> fileParts = request.getParts();
        for (Part part : fileParts) {
            String fileName = part.getSubmittedFileName();
            result = UploadImage.uploadImage(fileName, part);
            String url = String.valueOf(result.get("url"));
            System.out.println(url);
            if (result == null) {
                throw new RuntimeException("Loi upload");
            }
        }
        PrintWriter out = response.getWriter();
        out.println(result);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/upload_image.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
