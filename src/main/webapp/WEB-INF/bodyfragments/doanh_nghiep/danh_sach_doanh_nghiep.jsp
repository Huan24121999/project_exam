<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="./template/css/select2.min.css" rel="stylesheet" >
<link rel="stylesheet" href="resources/template/css/dataTables.bootstrap4.css">
<link  rel="stylesheet" href="resources/css/organization.css">
<link rel="stylesheet" href="resources/css/quan_ly_doanh_nghiep/qlttdn.css">
<script src="resources/js/ajax/model/ajax_doanh_nghiep.js"></script>
<script src="resources/js/ajax/model/ajax_check_quyen.js"></script>
<script src="resources/js/ajax/model/ajax_dia_gioi.js"></script>
<script src="resources/js/ajax/model/ajax_nganh_nghe.js"></script>
<script src="resources/js/ajax/model/ajax_chi_nhanh.js"></script>
<script src="resources/template/js/select2.min.js"></script>
<link rel="stylesheet" href="template/pagination/pagination.css">
<script src="resources/template/pagination/pagination.js"></script>

<%--<script src="resources/js/ajax/quan_ly_doanh_nghiep/ajax_thong_tin_doanh_nghiep.js"></script>--%>
<link rel="stylesheet" href="./css/quan_ly_doanh_nghiep/qlttdn.css">
<div class="card" id="datatable">
    <div class="card-header">
        <div class="row">
            <div class="col-sm-12 col-md-10">
                <h3 class="card-title">DANH SÁCH TỔ CHỨC DOANH NGHIỆP</h3>
            </div>

        </div>

    </div>
    <!-- /.card-header -->
    <div class="card-body">

        <section class="content">
            <div class="row">

                <div class="col-sm-12 col-md-12">
                    <div class="etpinfopm">
<%--                        <div class="container" style="padding: unset">--%>
<%--                            <div class="row">--%>

                                <div class="etpinfopi2 col-sm-4">
                                    <select class="js-example-basic-single select2" name="state" id="select4" style="width: 100%">
                                        <option value="A01110">Trồng lúa</option>
                                        <option value="A01120">Trồng ngô và cây lương thực có hạt khác</option>
                                    </select>
                                    <span class="help-block"></span>
                                </div>

                                <div class="etpinfopi2 col-sm-2">
                                    <select class="js-example-basic-single select2" name="state" id="select1" style="width: 100%">
                                        <option value="BG">Bắc Giang</option>
                                    </select>
                                    <span class="help-block"></span>
                                </div>
                                <div class="etpinfopi2 col-sm-2">

                                    <select class="js-example-basic-single select2" name="state" id="select2" style="width: 100%">
                                       <option value="1">Quận Ba Đình</option><option value="2">Quận Hoàn Kiếm</option><option value="3">Quận Tây Hồ</option><option value="4">Quận Long Biên</option><option value="5">Quận Cầu Giấy</option><option value="6">Quận Đống Đa</option><option value="7">Quận Hai Bà Trưng</option><option value="8">Quận Hoàng Mai</option><option value="9">Quận Thanh Xuân</option><option value="16">Huyện Sóc Sơn</option><option value="17">Huyện Đông Anh</option><option value="18">Huyện Gia Lâm</option><option value="19">Quận Nam Từ Liêm</option><option value="20">Huyện Thanh Trì</option><option value="21">Quận Bắc Từ Liêm</option><option value="250">Huyện Mê Linh</option><option value="268">Quận Hà Đông</option><option value="269">Thị xã Sơn Tây</option><option value="271">Huyện Ba Vì</option><option value="272">Huyện Phúc Thọ</option><option value="273">Huyện Đan Phượng</option><option value="274">Huyện Hoài Đức</option><option value="275">Huyện Quốc Oai</option><option value="276">Huyện Thạch Thất</option><option value="277">Huyện Chương Mỹ</option><option value="278">Huyện Thanh Oai</option><option value="279">Huyện Thường Tín</option><option value="280">Huyện Phú Xuyên</option><option value="281">Huyện Ứng Hòa</option><option value="282">Huyện Mỹ Đức</option>
                                    </select>
                                    <span class="help-block"></span>
                                </div>
                                <div class="etpinfopi2 col-sm-2">

                                    <select class="js-example-basic-single select2" name="state" id="select3" style="width: 100%">
                                        <option value="1">Phường Phúc Xá</option><option value="4">Phường Trúc Bạch</option><option value="6">Phường Vĩnh Phúc</option><option value="7">Phường Cống Vị</option><option value="8">Phường Liễu Giai</option><option value="10">Phường Nguyễn Trung Trực</option><option value="13">Phường Quán Thánh</option><option value="16">Phường Ngọc Hà</option><option value="19">Phường Điện Biên</option><option value="22">Phường Đội Cấn</option><option value="25">Phường Ngọc Khánh</option><option value="28">Phường Kim Mã</option><option value="31">Phường Giảng Võ</option><option value="34">Phường Thành Công</option>
                                    </select>
                                    <span class="help-block"></span>
                                </div>

                                <div class="etpinfopi2 col-sm-2" style="align-items: center">
                                    <button type="button" class="btn btn-primary" id="tim-kiem-nghe-tp">TÌM KIẾM</button>
                                </div>
                          <%--  </div>
                        </div>--%>
                    </div>
                </div>


            </div>

        </section>

        <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
            <div class="row">
                <div class="col-sm-12">
                    <table  class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                        <thead>
                            <tr role="row">
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >STT</th>
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tên doanh nghiệp</th>
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >Mã doanh nghiệp</th>
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Email liên hệ</th>
                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >Chi tiết</th>
                            </tr>
                        </thead>
                        <tbody id="danh-sach">
                            <tr role="row" >
                                <td class="">
                                    <input class="form-control form-control-navbar " type="search" placeholder="" aria-label="Search" id="tim-kiem-theo-stt">
                                </td>
                                <td class="">
                                    <input class="form-control form-control-navbar" type="search" placeholder="tìm kiếm" aria-label="Search" id="tim-kiem-theo-ten">
                                </td>
                                <td class="">
                                    <input class="form-control form-control-navbar" type="search" placeholder="tìm kiếm" aria-label="Search" id="tim-kiem-theo-ma">
                                </td>
                                <td class="">
                                    <input class="form-control form-control-navbar" type="search" placeholder="tìm kiếm" aria-label="Search" id="tim-kiem-theo-eportal">
                                </td>
                                <td class="">
                                    <button type="button" class="btn btn-primary" id="tim-kiem">TÌM KIẾM</button>
                                </td>
                            </tr>

                            <tr role="row">
                                <td >1231</td>
                                <td >Công ty Bình Minh</td>
                                <td >null</td>
                                <td >null</td>
                                <td ><button type="button" class="btn btn-outline-primary" id="organization1" value="1231">Chi tiết</button></td>
                            </tr>

                        </tbody>
                        <tfoot>
                            <tr>
                                <th rowspan="1" colspan="1">STT</th>
                                <th rowspan="1" colspan="1">Tên daonh nghiệp</th>
                                <th rowspan="1" colspan="1">Mã doanh nghiệp</th>
                                <th rowspan="1" colspan="1">Email liên hệ</th>
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


<script src="resources/js/ajax/quan_ly_doanh_nghiep/ajax_danh_sach_doanh_nghiep.js" defer></script>
<script src="resources/template/pagination/pagination.js"></script>