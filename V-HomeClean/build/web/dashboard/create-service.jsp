<%-- 
    Document   : group-history
    Created on : May 28, 2023, 11:32:53 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=0"
            />
        <title>Dreamchat - Dashboard</title>

        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="css/assets/img/favicon.png"
            />

        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="css/assets/css/style.css" />
    </head>
    <body>
        <div class="main-wrapper">
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="sidebar.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">Tạo mới dịch vụ</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="dashboard/index.jsp">Bảng điều khiển</a>
                                    </li>
                                    <li class="breadcrumb-item active">Tạo mới dịch vụ</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header text-center">
                                    <h4 class="card-title text-primary">Điền Thông Tin</h4>
                                </div>
                                <div class="card-body">


                                    <form action="ServiceCreateController" method="post" enctype="multipart/form-data">
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Tên Dịch Vụ</label>
                                            <div class="col-md-10">
                                                <input required="" name="serviceName" type="text" class="form-control" placeholder="Điền đầy đủ tên dịch vụ">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Hình Ảnh</label>
                                            <div class="col-md-10">
                                                <input required="" name="serviceImage" class="form-control" type="file">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Thể loại</label>
                                            <div class="col-md-10">
                                                <select required="" name="serviceType" class="form-control form-select">
                                                    <option disabled selected>-- Chọn --</option>
                                                    <option value="2">Dịch vụ sửa chữa</option>
                                                    <option value="1">Dịch vụ dọn dẹp</option>                                 
                                                </select>
                                            </div>
                                            <div id="error-message" class="text-center" style="display: none; color: red;"></div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-form-label col-md-2 text-info">Mô tả dịch vụ</label>
                                            <div class="col-md-10">
                                                <textarea name="serviceDetails" rows="5" cols="5" class="form-control" required="" placeholder="Mô tả chi tiết cho dịch vụ ở đây"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group mb-0 row">
                                            <label class="col-form-label col-md-2 text-info">Giá dịch vụ</label>
                                            <div class="col-md-10">
                                                <div class="input-group">
                                                    <span class="input-group-text">$</span>
                                                    <input name="servicePrice" class="form-control" required="" type="number">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group row text-center mt-3">
                                            <div>
                                                <input class="btn btn-primary w-25" type="submit" name="action" value="Tạo mới dịch vụ"/>
                                            </div>
                                        </div>

                                    </form>



                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>




    </div>
</div>
</div>

<script src="css/assets/js/jquery-3.6.0.min.js"></script>

<script src="css/assets/js/bootstrap.bundle.min.js"></script>

<script src="css/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="css/assets/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $('form').submit(function (e) {
            var selectedValue = $('select[name="serviceType"]').val();
            if (!selectedValue) {
                e.preventDefault();
                $('#error-message').text('Vui lòng chọn một giá trị cho trường Thể loại.').show();
            } else {
                $('#error-message').hide();
            }
        });
    });
</script>

</body>
</html>

