<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="./template/css/select2.min.css" rel="stylesheet" >
<link href="./css/quan_ly_doanh_nghiep/qlttdn.css" rel="stylesheet" >

<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.913/styles/kendo.common.min.css"/>
<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.913/styles/kendo.default.min.css"/>

<script src="resources/js/ajax/model/ajax_file.js"></script>
<script src="resources/js/ajax/model/ajax_check_quyen.js"></script>
<script src="resources/js/ajax/model/ajax_nguoi_dung.js"></script>
<script src="resources/js/ajax/model/ajax_permission.js"></script>
<script src="resources/js/ajax/model/ajax_role.js"></script>
<script src="resources/js/ajax/model/ajax_group.js"></script>
<script src="resources/js/ajax/model/ajax_dia_gioi.js"></script>
<script src="resources/js/ajax/model/ajax_doanh_nghiep.js"></script>
<script src="resources/js/ajax/model/ajax_chi_nhanh.js"></script>
<script src="resources/js/ajax/model/ajax_nguoi_dung_phong_ban.js"></script>
<script src="resources/js/ajax/model/ajax_phong_ban.js"></script>
<script src="resources/js/ajax/model/ajax_nganh_nghe.js"></script>

<script src="resources/template/js/select2.min.js"></script>
<link rel="stylesheet" href="template/pagination/pagination.css">
<script src="resources/template/pagination/pagination.js"></script>

<script src="resources/js/ajax/quan_ly_doanh_nghiep/ajax_thong_tin_phong_ban.js"></script>

<script src="https://kendo.cdn.telerik.com/2017.3.913/js/kendo.all.min.js"></script>
<!-- Quản lí thông tin doanh nghiệp Css -->
<link rel="stylesheet" href="./css/quan_ly_doanh_nghiep/qlttdn.css">
<!-- Main content -->
<section class="content">
    <div class="buifmaop">
        <div class="buifmaoptitle">
            <span class="page-title">
                <h3>THÔNG TIN PHÒNG BAN</h3>
            </span>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 col-md-6">
            <div class="etpinfop form-group">
                <label >Tên phòng ban: <span class="text-red">(*)</span></label>
                <input type="text" id="ten-phong-ban" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>

            <div class="etpinfop form-group">
                <label >Trực thuộc chi nhánh: <span class="text-red"></span></label>
                <a href="/thong-tin-chi-nhanh?" id="link-chi-nhanh">
                    <input type="button" id="chi-nhanh" class="form-control check-modifile-ttdn">
                </a>

                <span class="help-block"></span>
            </div>
            <div class="etpinfop form-group">

                <label >Trực thuộc tổ chức: <span class="text-red"></span></label>
                <a href="/thong-tin-doanh-nghiep?" id="link-doanh-nghiep">
                    <input type="button" id="to-chuc" class="form-control check-modifile-ttdn">
                </a>
                <span class="help-block"></span>

            </div>
            <div class="etpinfop form-group">
                <label >Địa chỉ: <span></span></label>
                <input type="button" id="dia-chi" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>
            <div class="etpinfop form-group">
                <label >Mô tả: <span class="text-red">(*)</span></label>
                <input type="text" id="mo-ta" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>

        </div>
        <div class="col-sm-12 col-md-6">
            <div class="etpinfop form-group">
                <label >Mã phòng ban: <span class="text-red">(*)</span></label>
                <input type="text" id="ma-phong-ban" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>

            <div class="etpinfop form-group">
                <label>Email: <span class="text-red">(*)</span></label>
                <input type="text" id="email" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>
            <div class="etpinfop form-group">
                <label>Điện thoại: <span class="text-red">(*)</span></label>
                <input type="text" id="so-dien-thoai" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>

            <div class="etpinfopm">
                <div class="container" style="padding: unset">
                    <div class="row">
                        <div class="etpinfopi2 col-sm-4">
                           <%-- <label ><span>Tỉnh</span></label>
                                <input type="button" id="tinh" class="form-control check-modifile-ttdn">
                            <span class="help-block"></span>--%>
                               <label ><span>Tỉnh</span></label>
                               <input type="button" id="tinh" class="form-control check-modifile-ttdn">
                               <span class="help-block"></span>

                        </div>
                        <div class="etpinfopi2 col-sm-4">
                            <label ><span>Huyện/TP</span></label>
                                <input type="button" id="huyen" class="form-control check-modifile-ttdn">
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfopi2 col-sm-4">
                            <label ><span>Xã/Phường</span></label>
                                <input type="button" id="xa" class="form-control check-modifile-ttdn">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-left" style="text-align: center!important;">
                <button class="btn btn-primary displaynone" id="save-phong-ban" >Lưu lại</button>

                <button type="button" class="btn btn-danger displaynone" data-toggle="modal" data-target="#xoa-phong-ban" id="xoa-pb">
                    XÓA PHÒNG BAN
                </button>

                <!-- Modal -->
                <div class="modal fade" id="xoa-phong-ban" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">CẢNH BÁO</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Bạn có thể sẽ mất toàn bộ dữ liệu của phòng ban, bạn có muốn tiếp tục không?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" id="tiep-tuc-xoa">Vẫn xóa</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

<%--    <div class="row">--%>
<%--        <div class="col-md-12" id="detail">--%>
<%--            <div class="card" id="datatable-detail">--%>
<%--                <div class="card-header">--%>
<%--                    <h3 class="card-title">DANH SÁCH NHÂN SỰ--%>
<%--                    </h3>--%>
<%--                  --%>
<%--                </div>--%>
<%--                <!-- /.card-header -->--%>
<%--                <div class="card-body">--%>
<%--                    <div class="dataTables_wrapper dt-bootstrap4">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-sm-12 col-md-6">--%>
<%--                                <div class="dataTables_length">--%>
<%--                                    <label id="notification">--%>

<%--                                    </label>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-12 col-md-6">--%>
<%--                                <div class="dataTables_filter">--%>

<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-sm-12">--%>
<%--                                <table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">--%>
<%--                                    <thead>--%>
<%--                                    <tr role="row">--%>
<%--                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >STT</th>--%>
<%--                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tên nhân viên</th>--%>
<%--                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Chức vụ</th>--%>
<%--                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Liên hệ</th>--%>
<%--                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Chi tiết</th>--%>
<%--                                    </tr>--%>
<%--                                    </thead>--%>
<%--                                    <tbody id="danh-sach-nhan-su">--%>
<%--                                    <tr role="row">--%>
<%--                                        <td class="">--%>
<%--                                            <input class="form-control form-control-navbar " type="search" placeholder="Search" aria-label="Search" id="stt-detail">--%>
<%--                                        </td>--%>
<%--                                        <td class="">--%>
<%--                                            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="name-detail">--%>
<%--                                        </td>--%>
<%--                                        <td class="">--%>
<%--                                            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="code-detail">--%>
<%--                                        </td>--%>
<%--                                        <td class="">--%>
<%--                                            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="eportal-detail">--%>
<%--                                        </td>--%>
<%--                                        <td class="">--%>
<%--                                            <button type="button" class="btn btn-primary" id="search-detail">TÌM KIẾM</button>--%>
<%--                                        </td>--%>
<%--                                    </tr>--%>

<%--                                    <tr role="row" class="data-detail">--%>
<%--                                        <td class="">52</td>--%>
<%--                                        <td class="">Casper, Jacobi and Wyman</td>--%>
<%--                                        <td class="">#a8bc6e        </td>--%>
<%--                                        <td class="">gfirthk@sakura.ne.jp</td>--%>
<%--                                        <td class=""><button type="button" class="btn btn-outline-primary" id="agency1" value="52">Chi tiết</button></td>--%>
<%--                                    </tr>--%>
<%--                                    <tr role="row" class="data-detail">--%>
<%--                                        <td class="">52</td>--%>
<%--                                        <td class="">Casper, Jacobi and Wyman</td>--%>
<%--                                        <td class="">#a8bc6e        </td>--%>
<%--                                        <td class="">gfirthk@sakura.ne.jp</td>--%>
<%--                                        <td class=""><button type="button" class="btn btn-outline-primary" id="agency1" value="52">Chi tiết</button></td>--%>
<%--                                    </tr>--%>
<%--                                    </tbody>--%>
<%--                                    <tfoot>--%>
<%--                                    <tr>--%>
<%--                                        <th rowspan="1" colspan="1">STT</th>--%>
<%--                                        <th rowspan="1" colspan="1">Tên Nhân viên</th>--%>
<%--                                        <th rowspan="1" colspan="1">Chức vụ</th>--%>
<%--                                        <th rowspan="1" colspan="1">Liên Hệ</th>--%>
<%--                                        <th rowspan="1" colspan="1">Chi tiết</th>--%>
<%--                                    </tr>--%>
<%--                                    </tfoot>--%>
<%--                                </table>--%>
<%--                            </div>--%>
<%--                        </div>--%>


<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- /.card-body -->--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

    <div class="row">

        <div class="col-md-12" id="list-detail">
            <div class="card" id="datatable-detail">
                <div class="card-header">
                    <h3 class="card-title">DANH SÁCH NHÂN VIÊN
                        <button type="button" class="btn-primary btn displaynone" id="xem-danh-sach-phong-ban"> XEM</button>
                        <button type="button" class="btn-primary btn displaynone" id="them-moi-nhan-vien">Thêm Mới Nhân Viên</button>
                        <button type="button" class="btn-primary btn displaynone" id="cau-hinh-phan-quyen">Phân Quyền</button>
                        <button type="button" class="btn-primary btn " id="group-cua-toi">Group Của Tôi</button>
                    </h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body displaynone" id="table-data">
                    <div class="row etpinfopi row">
                        <label>Trạng thái: <span class="text-red col-sm-12 col-md-4">(*)</span></label>
                        <select class="js-example-basic-single select2 form-control col-sm-12 col-md-4 " name="state" id="trang-thai" style="width: 100%">
                            <option value="0">Tất cả</option>
                            <option value="1">Đang làm việc</option>
                            <option value="2">Tạm dừng làm việc</option>
                            <option value="3">Chờ phê duyệt</option>
                            <option value="4">Dừng làm việc</option>
                        </select>
                        <button type="button" class="btn-primary btn" id="tim-kiem-theo-trang-thai">SEARCH</button>

                    </div>

                    <div class="dataTables_wrapper dt-bootstrap4">
                        <div class="row">
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_length">
                                    <label id="notification">

                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_filter">

                                </div>
                            </div>
                        </div>
                        <div class="row" >
                            <div class="col-sm-12">
                                <table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                    <thead>
                                    <tr role="row">
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1"> STT</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Username</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tên Nhân viên</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Chức vụ</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Trạng thái</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Qúa Trình Công Tác</th>
                                    </tr>
                                    </thead>
                                    <tbody id="danh-sach-user-department">
                                    <tr role="row">

                                    </tr>

                                    <tr role="row" class="data-detail">
                                        <td class="">NULL</td>
                                        <td class="">NULL</td>
                                        <td class="">NULL</td>
                                        <td class="">NULL</td>
                                        <td class="">NULL</td>
                                        <td class="">NULL</td>
                                    </tr>


                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th rowspan="1" colspan="1">STT</th>
                                        <th rowspan="1" colspan="1">Username</th>
                                        <th rowspan="1" colspan="1">Tên Nhân Viên</th>
                                        <th rowspan="1" colspan="1">Chức vụ</th>
                                        <th rowspan="1" colspan="1">Trạng thái</th>
                                        <th rowspan="1" colspan="1">Qúa Trình Công Tác</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-sm-12 col-md-7">
                                <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                                    <ul class="pagination" id="pagination">

                                    </ul>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <!-- /.card-body -->
            </div>
        </div>

        <div class="col-md-8 offset-md-2 displaynone" id="add-new-user-department">

            <!-- form user info -->
            <div class="card card-outline-secondary">
                <div class="card-header">
                    <h3 class="mb-0">THÊM NHÂN VIÊN MỚI</h3>
                </div>
                <div class="card-body">
                    <form class="form" role="form" autocomplete="off">

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Phòng Ban</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="button" value="Phòng ban nhân sự"  id="phong-ban-new">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Username</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" placeholder="VD: cmsuseertest" id="nguoi-dung-new">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Chức vụ</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" placeholder="VD: Nhân viên hành chính" id="chuc-vu-new">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Mô tả</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" placeholder="" id="mo-ta-new">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Trạng thái hoạt động</label>
                            <div class="col-lg-9">
                                <select id="trang-thai-new" class="form-control" size="0">
                                    <option value="1">Hoạt động</option>
                                    <option value="2">Tạm dừng</option>
                                    <option value="3">Chờ duyệt</option>
                                    <option value="4">Thôi việc</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Giấy quyết định</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="file" value="trưởng phòng" id="quyet-dinh-new">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <input type="reset" class="btn btn-secondary" value="Cancel" id="cancel-new">
                                <input type="button" class="btn btn-primary" value="Thêm mới" id="save-new">
                            </div>
                        </div>


                    </form>
                </div>
            </div>
            <!-- /form user info -->
        </div>

        <div class="col-md-8 offset-md-2 displaynone" id="group-phan-quyen">
            <!-- form user info -->
            <div class="card card-outline-secondary">
                <div class="card-header">
                    <h3 class="mb-0" id="text-group">GROUP PHÂN QUYỀN</h3>
                </div>
                <div class="card-body">
                    <div class="btn-group-vertical col-md-12 " id="danh-sach-group">
                    </div>
                </div>
            </div>
            <!-- /form user info -->
        </div>
        <div class="col-md-8 offset-md-2 displaynone" id="group-phan-quyen-ct">
            <!-- form user info -->
            <div class="card card-outline-secondary">
                <div class="card-header">
                    <h3 class="mb-0" id="text-group-ct">GROUP CỦA TÔI</h3>
                </div>
                <div class="card-body">
                    <div class="btn-group-vertical col-md-12 " id="danh-sach-group-ct">
                    </div>
                </div>
            </div>
            <!-- /form user info -->
        </div>

        <div class="col-md-12 displaynone" id="chi-tiet-phan-quyen" style="background: white;">

            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-header">
                            <h3 class="mb-0">
                                <div class="form-group">
                                    <label style="text-decoration: underline;display: block;text-align: center">QUẢN LÝ NHÓM</label>
                                    <input type="text" id="input-ten-group" class="form-control" style="text-transform: uppercase;font-size: larger;text-align: center">
                                </div>
                            </h3>
                        </div>
                        <div>
                            <div class="form-group">
                                <label >Mô tả:</label>
                                <textarea id="input-mo-ta-group" class="form-control" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                </div>

               <%-- cáu hình riêng--%>
                <div class="row displaynone" id="cau-hinh-rieng-user" >
                    <div class="col-sm-4">
                        <div class="etpinfop form-group">
                            <label>Username:</label>
                                <input type="button" id="username-nguoi-dung" class="form-control check-modifile-ttdn" >
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfop form-group">
                            <label>Họ và Tên:</label>
                            <input type="button" id="ho-va-ten" class="form-control check-modifile-ttdn" >
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfop form-group">
                            <a href="#" id="link-user">
                                <label>Xem thông tin chi tiết:</label>
                            </a>
                        </div>

                    </div>
                    <div class="col-sm-8">
                        <table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                            <thead>
                                <tr role="row">
                                    <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Quyền</th>
                                    <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Trạng Thái</th>
                                </tr>
                            </thead>

                            <tbody id="danh-sach-quyen-rieng">
                                <tr role="row">
                                    <td class="" >
                                        Thêm danh sách nhân viên
                                    </td>
                                    <td class="" >
                                        <div class="custom-control custom-checkbox checkbox-xl">
                                            <input type="checkbox" class="custom-control-input" id="checkbox-3" checked="">
                                            <label class="custom-control-label" for="checkbox-3">Cho Phép</label>
                                        </div>
                                    </td>
                                </tr>

                            </tbody>
                            <tfoot>
                            <tr>
                                <th rowspan="1" colspan="1">
                                    <div class="etpinfop form-group">
                                    </div>
                                </th>
                                <th rowspan="1" colspan="1">
                                    <button type="button" class="btn-primary btn" id="luu-cau-hinh-rieng">Lưu lại Cấu hình riêng</button>
                                </th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>

            <%--hết cấu hình riêng--%>

                <div class="row">
                    <div class="col-sm-6">
                        <table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                            <thead>
                            <tr role="row">
                                <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Username</th>
                                <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Thêm/Xóa</th>
                            </tr>
                            </thead>
                            <tbody id="danh-sach">
                                <tr role="row">
                                    <td class="">
                                        <input class="form-control form-control-navbar " type="search" placeholder="Tìm kiếm người dùng không thuộc phòng ban bằng username" aria-label="Search" id="tim-kiem-username">
                                    </td>

                                    <td class="">
                                        <button type="button" class="btn btn-primary" id="tim-kiem">TÌM KIẾM</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th rowspan="1" colspan="1">
                                    <div class="etpinfop form-group">
                                        <select class="js-example-basic-single select2" name="state" id="select1" style="width: 100%">
                                            <option value="BG">NULL</option>
                                        </select>
                                        <span class="help-block"></span>
                                    </div>
                                </th>
                                <th rowspan="1" colspan="1">
                                  <%--  <button type="button" class="btn-primary btn" id="luu-danh-sach-username">Lưu lại</button>
                                    --%>
                                </th>
                            </tr>
                            </tfoot>
                        </table>

                    </div>

                    <div class="col-sm-6">

                        <table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                            <thead>
                            <tr role="row">
                                <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Quyền</th>
                                <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Thêm/Xóa</th>
                            </tr>
                            </thead>
                            <tbody id="danh-sach-quyen">


                            </tbody>
                            <tfoot>
                            <tr>
                                <th rowspan="1" colspan="1">
                                    <div class="etpinfop form-group">
                                        <select class="js-example-basic-single select2" name="state" id="select2" style="width: 100%">
                                            <option value="BG">NULL</option>
                                        </select>
                                        <span class="help-block"></span>
                                    </div>
                                </th>
                                <th rowspan="1" colspan="1">
<%--                                    <button type="button" class="btn-primary btn" id="luu-cac-quyen">Lưu lại</button>--%>
<%--                                    --%>
                                </th>
                            </tr>
                            </tfoot>
                        </table>


                        <%--<table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                            <div>
                                <div id="example">
                                    <div class="demo-section k-content">
                                        <div>
                                            <!-- <h4>CÁC QUYỀN ĐƯỢC QUẢN LÝ</h4> -->
                                            <div id="treeview"></div>

                                        </div>
                                        <div style="padding-top: 2em;">
                                        </div>
                                    </div>

                                    <style>
                                        #treeview .k-sprite {
                                        }

                                        .rootfolder { background-position: 0 0; }
                                        .folder     { background-position: 0 -16px; }
                                        .pdf        { background-position: 0 -32px; }
                                        .html       { background-position: 0 -48px; }
                                        .image      { background-position: 0 -64px; }
                                    </style>

                                </div>
                            </div>
                        </table>
--%>

                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-8">
                        <button class="btn btn-primary displaynone" id="luu-nhom-moi">Lưu lại</button>

                        <button type="button" class="btn btn-danger displaynone" data-toggle="modal" data-target="#xoa-group" id="xoa-g">
                            Xóa Group
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="xoa-group" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">CẢNH BÁO</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Bạn có thể sẽ mất toàn bộ dữ liệu của phòng ban, bạn có muốn tiếp tục không?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" id="tiep-tuc-xoa-group">Vẫn xóa</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-4">
                        <button class="btn btn-primary" id="cancel-nhom">Cancel</button>
                    </div>

                </div>
            </div>

        </div>


        <div class="col-md-12 displaynone" id="chi-tiet-phan-quyen-ct" style="background: white;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-header">
                            <h3 class="mb-0">
                                <div class="form-group">
                                    <label style="text-decoration: underline;display: block;text-align: center">QUẢN LÝ NHÓM</label>
                                    <input type="text" id="input-ten-group-ct" class="form-control" style="text-transform: uppercase;font-size: larger;text-align: center">
                                </div>
                            </h3>
                        </div>
                        <div>
                            <div class="form-group">
                                <label >Mô tả:</label>
                                <textarea id="input-mo-ta-group-ct" class="form-control" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                </div>

                <%-- cáu hình riêng--%>
                <div class="row" id="cau-hinh-rieng-user" >
                    <div class="col-sm-4">
                        <div class="etpinfop form-group">
                            <label>Username:</label>
                            <input type="button" id="username-nguoi-dung-ct" class="form-control check-modifile-ttdn" >
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfop form-group">
                            <label>Họ và Tên:</label>
                            <input type="button" id="ho-va-ten-ct" class="form-control check-modifile-ttdn" >
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfop form-group">
                            <a href="#" id="link-user-ct">
                                <label>Xem thông tin chi tiết:</label>
                            </a>
                        </div>

                    </div>
                    <div class="col-sm-8">
                        <table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                            <thead>
                            <tr role="row">
                                <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Quyền</th>
                                <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Trạng Thái</th>
                            </tr>
                            </thead>

                            <tbody id="danh-sach-quyen-rieng-ct">
                            <tr role="row">
                                <td class="" >
                                    Thêm danh sách nhân viên
                                </td>
                                <td class="" >
                                    <div class="custom-control custom-checkbox checkbox-xl">
                                        <input type="checkbox" class="custom-control-input" id="checkbox-3-ct" checked="">
                                        <label class="custom-control-label" for="checkbox-3">Cho Phép</label>
                                    </div>
                                </td>
                            </tr>

                            </tbody>
                            <tfoot>
                            <tr>
                                <th rowspan="1" colspan="1">
                                    <div class="etpinfop form-group">
                                    </div>
                                </th>
                                <th rowspan="1" colspan="1">

                                </th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>

                <%--hết cấu hình riêng--%>
                <div class="row">
                    <div class="col-sm-8">
                    </div>
                    <div class="col-sm-4">
                        <button class="btn btn-primary" id="cancel-nhom-ct">Cancel</button>
                    </div>
                </div>

            </div>

        </div>


        <div class="col-md-8 offset-md-2 displaynone" id="info-detail">
            <!-- form user info -->
            <div class="card card-outline-secondary">
                <div class="card-header">
                    <h3 class="mb-0">CHI TIẾT CÔNG TÁC</h3>
                </div>
                <div class="card-body">
                    <form class="form" role="form" autocomplete="off">
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Doanh Nghiệp</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="button" value="Công ty TÂM VIỆT" id="doanh-nghiep-detail">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Chi Nhánh</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="button" value="Chi nhánh Hai Bà Trưng"  id="chi-nhanh-detail">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Phòng Ban</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="button" value="Phòng ban nhân sự"  id="phong-ban-detail">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"><span class="text-red">(*)</span>Chức vụ</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="trưởng phòng" id="chuc-vu-detail">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Ngày khởi tạo</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="button" value="trưởng phòng" id="ngay-khoi-tao-detail">
                            </div>

                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Chỉnh sửa gần nhất</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="button" value="trưởng phòng" id="ngay-chinh-sua-detail">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"><span class="text-red">(*)</span>Trạng thái hoạt động</label>
                            <div class="col-lg-9">
                                <select id="trang-thai-detail" class="form-control" size="0">
                                    <option value="1">Hoạt động</option>
                                    <option value="2">Tạm dừng</option>
                                    <option value="3">Chờ duyệt</option>
                                    <option value="4">Thôi việc</option>
                                </select>
                            </div>
                        </div>
                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label form-control-label"><span class="text-red">(*)</span>Lý do chỉnh sửa?</label>
                                <div class="col-lg-9">
                                    <input class="form-control" type="text" placeholder="Ghi chú nếu có sửa đổi và kèm văn bản bên dưới!" id="mo-ta-chinh-sua">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label form-control-label"><span class="text-red">(*)</span>Văn bản quyết định</label>
                                <div class="col-lg-9">
                                    <input class="form-control" type="file"  id="url-nghi-quyet">
                                </div>
                            </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <input type="reset" class="btn btn-secondary" value="Cancel" id="cancel-detail">
                                <input type="button" class="btn btn-primary" value="Lưu thay đổi" id="save-detail">
                                <input type="reset" class="btn btn-dark" value="Xem  quá trình hoạt động" id="history-detail">
                            </div>
                        </div>


                    </form>
                </div>
            </div>
            <!-- /form user info -->

        </div>


    </div>

</section>
<script src="resources/js/js_style/thong_tin_doanh_nghiep.js"></script>
<!-- /.content -->