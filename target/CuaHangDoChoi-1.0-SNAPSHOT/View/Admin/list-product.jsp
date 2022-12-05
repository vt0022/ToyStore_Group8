<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/View/Admin" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Product Management</title>
            <!-- BOOTSTRAP STYLES-->
            <link href="${url}/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="${url}/css/font-awesome.css" rel="stylesheet" />
        <!-- MORRIS CHART STYLES-->

        <!-- CUSTOM STYLES-->
        <link href="${url}/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans'
              rel='stylesheet' type='text/css' />
        <!-- TABLE STYLES-->
        <link href="${url}/js/dataTables/dataTables.bootstrap.css"
              rel="stylesheet" />
    </head>
    <body>
        <div id="wrapper">

            <jsp:include page="nav-bar.jsp"></jsp:include>

                <!-- /. NAV TOP  -->
            <jsp:include page="slide-bar.jsp"></jsp:include>
                <!-- /. NAV SIDE  -->
                <div id="page-wrapper">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>Tất cả sản phẩm</h2>
                                <h5>Bạn có thể quản lý tất cả sản phẩm ở đây</h5>

                            </div>
                        </div>
                        <!-- /. ROW  -->
                        <hr />

                        <div class="row">
                            <div class="col-md-12">
                                <!-- Advanced Tables -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">Chi tiết</div>
                                    <p class="text-success text-center">${message}</p>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <a href="${pageContext.request.contextPath}/admin/product/insert">
                                            <button type="submit" style="margin-bottom: 15px">Thêm</button>
                                            <br>
                                        </a>
                                        <table class="table table-striped table-bordered table-hover"
                                               id="dataTables-example" style="text-align: center; vertical-align: central">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Tên</th>
                                                    <!--<th>Mô tả</th>-->
                                                    <th>Giá</th>
                                                    <th>Số lượng</th>
                                                    <th class="text-center">Ảnh</th>
                                                    <th>Danh mục</th>
                                                    <th>Tình trạng</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${productlist}" var="pro" >
                                                    <tr class="odd gradeX">
                                                        <td>${pro.id}</td>
                                                        <td>${pro.name}</td>
                                                        <td>${pro.price}</td>
                                                        <td>${pro.quantity}</td>                                                        

                                                        <td><img height="50" width="50" src="<c:url value="${pro.image}"/>"/></td>
                                                        
                                                        <td>${pro.category.getName()}</td>

                                                        <c:if test="${pro.status == 1}">
                                                            <td>Đang bán</td>
                                                        </c:if>
                                                        <c:if test="${pro.status == 0}">
                                                            <td>Dừng bán</td>
                                                        </c:if>
                                                            
                                                        <td>
                                                            <a href="<c:url value="/admin/product/update?id=${pro.id}"/>"
                                                               class="btn btn-warning" style="text-align: center; margin-bottom: 5px">Chỉnh sửa
                                                            </a><br>
                                                            <a
                                                                href="<c:url value="/admin/product/delete?id=${pro.id}"/>"
                                                                class="btn btn-danger">Xoá
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                            <!--End Advanced Tables -->
                        </div>
                    </div>

                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="js/jquery.metisMenu.js"></script>
        <!-- DATA TABLE SCRIPTS -->
        <script src="js/dataTables/jquery.dataTables.js"></script>
        <script src="js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
        </script>
        <!-- CUSTOM SCRIPTS -->
        <script src="js/custom.js"></script>

    </body>
</html>