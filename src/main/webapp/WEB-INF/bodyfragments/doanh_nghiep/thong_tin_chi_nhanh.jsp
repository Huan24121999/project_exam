<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="./template/css/select2.min.css" rel="stylesheet" >
<link href="./css/quan_ly_doanh_nghiep/qlttdn.css" rel="stylesheet" >
<script src="resources/js/ajax/model/ajax_check_quyen.js"></script>
<script src="resources/js/ajax/model/ajax_dia_gioi.js"></script>
<script src="resources/js/ajax/model/ajax_doanh_nghiep.js"></script>
<script src="resources/js/ajax/model/ajax_chi_nhanh.js"></script>
<script src="resources/js/ajax/model/ajax_phong_ban.js"></script>
<script src="resources/js/ajax/model/ajax_nganh_nghe.js"></script>
<script src="resources/template/js/select2.min.js"></script>
<link rel="stylesheet" href="template/pagination/pagination.css">
<script src="resources/template/pagination/pagination.js"></script>
<script src="resources/js/ajax/quan_ly_doanh_nghiep/ajax_thong_tin_chi_nhanh.js"></script>
<!-- Quản lí thông tin doanh nghiệp Css -->
<link rel="stylesheet" href="./css/quan_ly_doanh_nghiep/qlttdn.css">
<!-- Main content -->
<section class="content">
    <div class="buifmaop">
        <div class="buifmaoptitle">
            <span class="page-title">
                <h3>THÔNG TIN CHI NHÁNH</h3>
            </span>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 col-md-6">
            <div class="etpinfop form-group">
                <label >Tên chi nhánh: <span class="text-red">(*)</span></label>
                <input type="text" id="ten-chi-nhanh" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>

            <div class="etpinfop form-group">
                <label >Trực thuộc tổ chức: <span class="text-red">(*)</span></label>
                <a href="/thong-tin-doanh-nghiep?" id="link-doanh-nghiep">
                    <input type="button" id="to-chuc" class="form-control check-modifile-ttdn">
                </a>
                <span class="help-block"></span>
            </div>
            <div class="etpinfop form-group">

                    <label >Mô tả: <span class="text-red">(*)</span></label>
                    <input type="text" id="mo-ta" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>

            </div>
            <div class="etpinfop form-group">

                <label >Địa chỉ: <span class="text-red">(*)</span></label>
                <input type="text" id="dia-chi" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>

            </div>

        </div>
        <div class="col-sm-12 col-md-6">
            <div class="etpinfop form-group">
                <label >Mã chi nhánh: <span class="text-red">(*)</span></label>
                <input type="text" id="ma-chi-nhanh" class="form-control check-modifile-ttdn">
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
                            <label ><span>Tỉnh</span></label>
                            <select class="js-example-basic-single select2" name="state" id="select1" style="width: 100%">
                                <option value="BG">NULL</option>
                            </select>
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfopi2 col-sm-4">
                            <label ><span>Huyện/TP</span></label>
                            <select class="js-example-basic-single select2" name="state" id="select2" style="width: 100%">
                                <option value="TBG">NULL</option>
                            </select>
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfopi2 col-sm-4">
                            <label ><span>Xã/Phường</span></label>
                            <select class="js-example-basic-single select2" name="state" id="select3" style="width: 100%">
                                <option value="AL">NULL</option>
                            </select>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-left">

                <button class="btn btn-primary displaynone" id="save-chi-nhanh">Lưu lại</button>

                <button type="button" class="btn btn-primary displaynone" data-toggle="modal" data-target="#xoa-chi-nhanh" id="xoa-cn">
                    XÓA
                </button>

                <!-- Modal -->
                <div class="modal fade" id="xoa-chi-nhanh" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">CẢNH BÁO</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Bạn có thể sẽ mất toàn bộ dữ liệu của chi nhánh, bạn có muốn tiếp tục không?
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

    <div class="row">
        <div class="col-md-12" id="detail">
            <div class="card" id="datatable-detail">
                <div class="card-header">
                    <h3 class="card-title">DANH SÁCH CÁC PHÒNG BAN
                        <a href="./thong-tin-phong-ban?id=0">
                            <button type="button" class="btn-primary btn displaynone" id="them-moi-phong-ban">Thêm Mới</button>
                        </a>
                    </h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
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
                        <div class="row">
                            <div class="col-sm-12">
                                <table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                    <thead>
                                    <tr role="row">
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >STT</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tên Phòng Ban</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Mã Phòng Ban</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Liên hệ</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Chi tiết</th>
                                    </tr>
                                    </thead>
                                    <tbody id="danh-sach-phong-ban">
                                    <tr role="row">
                                        <td class="">
                                            <input type="button" class="form-control form-control-navbar "  placeholder="Search" aria-label="Search" id="stt-detail">
                                        </td>
                                        <td class="">
                                            <input class="form-control form-control-navbar" type="button" placeholder="Search" aria-label="Search" id="name-detail">
                                        </td>
                                        <td class="">
                                            <input class="form-control form-control-navbar" type="button" placeholder="Search" aria-label="Search" id="code-detail">
                                        </td>
                                        <td class="">
                                            <input class="form-control form-control-navbar" type="button" placeholder="Search" aria-label="Search" id="eportal-detail">
                                        </td>
                                        <td class="">
                                            <button type="button" class="btn btn-primary" id="search-detail">TÌM KIẾM</button>
                                        </td>
                                    </tr>

                                    <tr role="row" class="data-detail">
                                        <td class="">NULL</td>
                                        <td class="">NULL</td>
                                        <td class="">NULL</td>
                                        <td class="">NULL</td>
                                        <td class=""><button type="button" class="btn btn-outline-primary" id="agency1" value="52">Chi tiết</button></td>
                                    </tr>

                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th rowspan="1" colspan="1">STT</th>
                                        <th rowspan="1" colspan="1">Tên Phòng Ban</th>
                                        <th rowspan="1" colspan="1">Mã Phòng Bans</th>
                                        <th rowspan="1" colspan="1">Liên Hệ</th>
                                        <th rowspan="1" colspan="1">Chi tiết</th>
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
    </div>

</section>
<script src="resources/js/js_style/thong_tin_doanh_nghiep.js"></script>
<!-- /.content -->