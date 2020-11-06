<%--
  Created by IntelliJ IDEA.
  User: NGUYEN TRONG HUAN
  Date: 17/03/2020
  Time: 8:43 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Timeline</title>

    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <!-- AdminLTE css -->
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->

    <link href="./css/quan_ly_nguoi_dung/nguoidung.css" rel="stylesheet" >

    <script src="resources/js/ajax/model/ajax_check_quyen.js"></script>
    <script src="resources/js/ajax/model/ajax_nguoi_dung_phong_ban.js"></script>

    <script src="resources/js/ajax/quan_ly_doanh_nghiep/ajax_lich_su_cong_tac.js"></script>

    <link rel="stylesheet" href="template/pagination/pagination.css">
    <script src="resources/template/pagination/pagination.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

    <!-- Content Wrapper. Contains page content -->
    <div class="content">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>QUÁ TRÌNH CÔNG TÁC</h1>
                        <form class="form-inline">
                            <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Hiển thị theo:</label>
                            <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                                <option selected value="1">Timeline</option>
                                <option value="2">Bảng dữ liệu</option>
                            </select>
                            <button type="button" class="btn btn-primary my-1" id="loai-bieu-do">Submit</button>
                        </form>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">lich-su-cong-tac</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">

<%--                bảng dữ liệu--%>
                <div class="row displaynone" id="data-table">
                    <div class="col-sm-12">
                        <table  class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                            <thead>
                            <tr role="row">
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >STT</th>
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Chức Vụ</th>
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >Trạng Thái</th>
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Thời Gian Bắt Đầu</th>
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >Thời Gian Kết Thúc</th>
                            </tr>
                            </thead>
                            <tbody id="danh-sach-bang">
                            <tr role="row">
                                <td >NULL</td>
                                <td >NULL</td>
                                <td >NULL</td>
                                <td >NULL</td>
                                <td >NULL</td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th rowspan="1" colspan="1">STT</th>
                                <th rowspan="1" colspan="1">Chức Vụ</th>
                                <th rowspan="1" colspan="1">Trạng thái</th>
                                <th rowspan="1" colspan="1">Thời gian bắt đầu</th>
                                <th rowspan="1" colspan="1">Thời gian kết thúc</th>
                            </tr>
                            </tfoot>

                        </table>
                    </div>
                </div>


                <!-- Timelime example  -->
                <div class="row" id="data-timeline">
                    <div class="col-md-12" >
                        <div id="timeline">

                        <!-- The time line -->
                        <div class="timeline">
                            <!-- timeline time label -->
                            <div class="time-label">
                                <span class="bg-red">Hiện tại</span>
                            </div>
                            <div>
                                <i class="fas fa-envelope bg-blue"></i>
                                <div class="timeline-item">
                                    <h3 class="timeline-header"><a href="#">VAI TRÒ</a></h3>

                                    <div class="timeline-body">
                                        <form class="form" role="form" autocomplete="off">
                                            <div class="form-group row">
                                                <label class="col-lg-3 col-form-label form-control-label">Chức vụ</label>
                                                <div class="col-lg-9">
                                                    <input class="form-control" type="text" placeholder="VD: Nhân viên hành chính" id="chuc-vu-new">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-lg-3 col-form-label form-control-label">Trạng thái hoạt động</label>
                                                <div class="col-lg-9">
                                                    <select id="trang-thai-new" class="form-control" size="0">
                                                        <option value="1">Hoạt động</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-3 col-form-label form-control-label">Thời gian cụ thể</label>
                                                <div class="col-lg-2">
                                                    <input class="form-control" type="date" value="1999-12-02" >
                                                </div>
                                                <div class="col-lg-1">
                                                    <span> đến: </span>
                                                </div>
                                                <div class="col-lg-2">
                                                    <input class="form-control" type="date"  value="2000-12-02">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- END timeline item -->
                            <!-- timeline item -->
                            <div>
                                <i class="fas fa-user bg-green"></i>
                                <div class="timeline-item">
                                    <h3 class="timeline-header no-border"><a href="#">THÔNG TIN NGƯỜI SỬA/NGƯỜI TẠO</a></h3>
                                    <div class="timeline-footer">
                                        <a class="btn btn-primary btn-sm">Xem thông tin người sửa</a>
                                    </div>
                                </div>
                            </div>
                            <!-- END timeline item -->
                            <!-- timeline item -->
                            <div>
                                <i class="fas fa-comments bg-yellow"></i>
                                <div class="timeline-item">
                                    <h3 class="timeline-header"><a href="#">GHI CHÚ</a></h3>
                                    <div class="timeline-body">

                                    </div>
                                    <div class="timeline-footer">
                                        <a class="btn btn-warning btn-sm">Xem văn bản nghị quyết</a>
                                    </div>
                                    <div class="timeline-body">
                                        <div class="embed-responsive embed-responsive-16by9">
                                            <iframe class="embed-responsive-item" src="resources/img/giayphephd.jpg" frameborder="0" allowfullscreen=""></iframe>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


<%--                    </div>--%>
                    </div>
                    <!-- /.col -->
                </div>
<%--                end row--%>

            </div>
            <!-- /.timeline -->
    <div class="row">
        <div class="col-sm-12 col-md-7">
            <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                <ul class="pagination" id="pagination">
                </ul>
            </div>
        </div>
    </div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
</body>
</html>
