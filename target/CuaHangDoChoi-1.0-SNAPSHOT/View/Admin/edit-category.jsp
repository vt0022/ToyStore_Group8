<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/View/Admin" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Thêm danh mục</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="${url}/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="${url}/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
        <link href="${url}/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans'
              rel='stylesheet' type='text/css' />
    </head>
    <body>
        <div id="wrapper">
            <jsp:include page="/View/Admin/nav-bar.jsp"></jsp:include>
                <!-- /. NAV TOP  -->
            <jsp:include page="/View/Admin/slide-bar.jsp"></jsp:include>
                <!-- /. NAV SIDE  -->
                <div id="page-wrapper">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>Chỉnh sửa danh mục</h2>
                            </div>
                        </div>
                        <!-- /. ROW  -->
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <!-- Form Elements -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">Chỉnh sửa danh mục</div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h3>Thông tin danh mục:</h3>

                                                <form role="form" action="<c:url value="/admin/category/update"/>" method="post">
                                                    <input name="id" value="${category.id}" hidden="">
                                                    <div class="form-group">
                                                        <label>Tên:</label> 
                                                        <input class="form-control" placeholder="Vui lòng nhập tên danh mục" name="name" value="${category.name}" required/>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Trạng thái:</label> 
                                                        <br>
                                                          <input type="radio" id="active" name="status" value=1 ${category.status == 1 ? "checked" : ""}>
                                                          <label for="active">Hoạt động</label><br>
                                                          <input type="radio" id="inactive" name="status" value=0 ${category.status == 0 ? "checked" : ""}>
                                                          <label for="inactive">Vô hiệu</label><br>
                                                    </div>
                                                    <input type="submit" class="btn btn-default" value="Chỉnh sửa">
                                                    <button type="reset" class="btn btn-primary">Huỷ bỏ</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Form Elements -->
                            </div>
                        </div>
                        <!-- /. ROW  -->
                        <div class="row">
                            <div class="col-md-12"></div>
                        </div>
                        <!-- /. ROW  -->
                    </div>
                    <!-- /. PAGE INNER  -->
                </div>
                <!-- /. PAGE WRAPPER  -->
            </div>
            <!-- /. WRAPPER  -->
            <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
            <!-- JQUERY SCRIPTS -->
            <script src="${url}/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="${url}/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="${url}/js/jquery.metisMenu.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="${url}/js/custom.js"></script>
        <script type="text/javascript" language="javascript">
            CKEDITOR.replace('editer', {width: '700px', height: '300px'});
        </script>
    </body>
</html>