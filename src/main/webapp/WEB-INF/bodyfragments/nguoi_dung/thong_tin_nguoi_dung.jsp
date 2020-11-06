<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="./template/css/select2.min.css" rel="stylesheet" >
<%--<link href="./css/quan_ly_doanh_nghiep/qlttdn.css" rel="stylesheet" >--%>
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

<script src="resources/js/ajax/model/ajax_dia_gioi.js"></script>
<script src="resources/js/ajax/model/ajax_nguoi_dung.js"></script>
<script src="resources/js/ajax/model/ajax_nguoi_dung_phong_ban.js"></script>
<script src="resources/js/ajax/model/ajax_chi_nhanh.js"></script>
<script src="resources/template/js/select2.min.js"></script>
<link rel="stylesheet" href="template/pagination/pagination.css">
<script src="resources/template/pagination/pagination.js"></script>
<script src="resources/js/ajax/quan_ly_user/ajax_thong_tin_nguoi_dung.js"></script>
<!-- Quản lí thông tin doanh nghiệp Css -->
<link rel="stylesheet" href="./css/quan_ly_doanh_nghiep/qlttdn.css">
<link rel="stylesheet" href="./css/quan_ly_doanh_nghiep/qlttdn.css">
<link rel="stylesheet" href="./css/quan_ly_nguoi_dung/nguoidung.css">
<!-- Main content -->
<section class="content nguoidung">
    <div class="buifmaop">
        <div class="buifmaoptitle">
            <span class="page-title">
                <h3 >THÔNG TIN NGƯỜI DÙNG</h3>
            </span>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 col-md-6">

            <div class="etpinfopti">
                <div class="etpinfopi1ot form-group">
                    <div class="avatar-wrapper">
                        <img class="profile-pic" src="resources/img/avataruser.png" style="width: 100%;" id="img-avatar"/>
                        <div class="upload-button" id="upload-avatar">
                           Chưa có, Vui lòng thêm mới!
                        </div>
                        <input class="file-upload" type="file"  accept=".png, .jpg, .jpeg" id="url-avatar"/>
                    </div>

                </div>
                <div class="etpinfopi1ot form-group">
                    <div class="etpinfopti1 form-group">
                        <label>USERNAME:</label>
                        <input type="text" id="ten-nguoi-dung" class="form-control check-modifile-ttdn">
                        <span class="help-block"></span>
                    </div>
                    <div class="etpinfopti1 form-group">
                        <label>Firstname: <span class="text-red">(*)</span></label>
                        <input type="text" id="firstname" class="form-control check-modifile-ttdn">
                        <span class="help-block"></span>
                    </div>
                    <div class="etpinfopti1 form-group">
                        <label>Lastname: <span class="text-red">(*)</span></label>
                        <input type="text" id="lastname" class="form-control check-modifile-ttdn">
                        <span class="help-block"></span>
                    </div>

                    <div class="etpinfopti1 form-group">
                        <label>Giới tính: <span class="text-red">(*)</span></label>
                        <select class="js-example-basic-single select2 form-control" name="state" id="gioi-tinh" style="width: 100%">
                            <option value="0">Nữ</option>
                            <option value="1">Nam</option>
                        </select>
                        <span class="help-block"></span>
                    </div>
                    <div class="etpinfopti1 form-group">
                        <label>Ngày sinh: <span class="text-red">(*)</span></label>
                        <input class="form-control" type="date" value="" id="ngay-sinh">
                        <span class="help-block"></span>
                    </div>
                </div>

            </div>
            <div class="etpinfopm" id="chia-se-thong-tin">
                <div class="container" style="padding: unset">
                    <div class="row">
                        <div class="etpinfopi col-sm-4">
                            <label ><span>Chia sẻ email?</span></label>
                            <input type="checkbox" checked data-toggle="toggle" data-onstyle="primary" id="share-email">
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfopi col-sm-4">
                            <label ><span>Chia sẻ sđt?</span></label>

                            <input type="checkbox" checked data-toggle="toggle" data-onstyle="primary" id="share-sdt">
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfopi col-sm-4">
                            <label ><span>Chia sẻ địa chỉ?</span></label>
                            <input type="checkbox" checked data-toggle="toggle" data-onstyle="primary" id="share-address">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </div>
            </div>

<%--            <div class="etpinfop form-group">--%>
<%--                <label >Username: <span class="text-red">(*)</span></label>--%>
<%--                <input type="button" id="ten-nguoi-dung" class="form-control check-modifile-ttdn">--%>
<%--                <span class="help-block"></span>--%>
<%--            </div>--%>
<%--            <div class="etpinfopti">--%>
<%--                <div class="etpinfopi1ot form-group">--%>
<%--                    <label>Firstname: <span class="text-red">(*)</span></label>--%>
<%--                    <input type="text" id="firstname" class="form-control check-modifile-ttdn">--%>
<%--                    <span class="help-block"></span>--%>
<%--                </div>--%>
<%--                <div class="etpinfopi1ot form-group">--%>
<%--                    <label>Lastname: <span class="text-red">(*)</span></label>--%>
<%--                    <input type="text" id="lastname" class="form-control check-modifile-ttdn">--%>
<%--                    <span class="help-block"></span>--%>
<%--                </div>--%>
<%--            </div>--%>

        </div>
        <div class="col-sm-12 col-md-6">
            <div class="etpinfop form-group">
                <label >Social: <span class="text-red">(*)</span></label>

                <input type="text" id="social" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>
            <div class="etpinfop form-group">
                <label >Giới thiệu: <span class="text-red">(*)</span></label>
                <input type="text" id="gioi-thieu" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>
            <div class="etpinfopti">
                <div class="etpinfopi1ot form-group">
                    <label>Email: <span class="text-red">(*)</span></label>
                    <input type="text" id="email" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>
                <div class="etpinfopi1ot form-group">
                    <label>Điện thoại: <span class="text-red">(*)</span></label>
                    <input type="text" id="so-dien-thoai" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>
            </div>

                <div class="etpinfop form-group">
                    <label >Địa chỉ: <span class="text-red">(*)</span></label>
                    <input type="text" id="dia-chi" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>



            <div class="etpinfopm">
                <div class="container" style="padding: unset">
                    <div class="row">
                        <div class="etpinfopi2 col-sm-4">
                            <label ><span>Tỉnh</span></label>
                            <select class="js-example-basic-single select2 form-control" name="state" id="select1" style="width: 100%">
                                <option value="">Thành phố Hà Nội</option>
                            </select>
                            <span class="help-block"></span>
                        </div>
                        <div class="etpinfopi2 col-sm-4">
                            <label ><span>Huyện/TP</span></label>
                            <select class="js-example-basic-single select2 form-control" name="state" id="select2" style="width: 100%">
                                <option value="1">Quận Ba Đình</option><option value="2">Quận Hoàn Kiếm</option><option value="3">Quận Tây Hồ</option><option value="4">Quận Long Biên</option><option value="5">Quận Cầu Giấy</option><option value="6">Quận Đống Đa</option><option value="7">Quận Hai Bà Trưng</option><option value="8">Quận Hoàng Mai</option><option value="9">Quận Thanh Xuân</option><option value="16">Huyện Sóc Sơn</option><option value="17">Huyện Đông Anh</option><option value="18">Huyện Gia Lâm</option><option value="19">Quận Nam Từ Liêm</option><option value="20">Huyện Thanh Trì</option><option value="21">Quận Bắc Từ Liêm</option><option value="250">Huyện Mê Linh</option><option value="268">Quận Hà Đông</option><option value="269">Thị xã Sơn Tây</option><option value="271">Huyện Ba Vì</option><option value="272">Huyện Phúc Thọ</option><option value="273">Huyện Đan Phượng</option><option value="274">Huyện Hoài Đức</option><option value="275">Huyện Quốc Oai</option><option value="276">Huyện Thạch Thất</option><option value="277">Huyện Chương Mỹ</option><option value="278">Huyện Thanh Oai</option><option value="279">Huyện Thường Tín</option><option value="280">Huyện Phú Xuyên</option><option value="281">Huyện Ứng Hòa</option><option value="282">Huyện Mỹ Đức</option>

                            </select>
                            <span class="help-block"></span>
                        </div>

                        <div class="etpinfopi2 col-sm-4">
                            <label ><span>Xã/Phường</span></label>
                            <select class="js-example-basic-single select2 form-control" name="state" id="select3" style="width: 100%">
                                <option value="1">Phường Phúc Xá</option><option value="4">Phường Trúc Bạch</option><option value="6">Phường Vĩnh Phúc</option><option value="7">Phường Cống Vị</option><option value="8">Phường Liễu Giai</option><option value="10">Phường Nguyễn Trung Trực</option><option value="13">Phường Quán Thánh</option><option value="16">Phường Ngọc Hà</option><option value="19">Phường Điện Biên</option><option value="22">Phường Đội Cấn</option><option value="25">Phường Ngọc Khánh</option><option value="28">Phường Kim Mã</option><option value="31">Phường Giảng Võ</option><option value="34">Phường Thành Công</option>
                            </select>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </div>
            </div>



            <div class="text-left">
                <button class="btn btn-primary" id="save-nguoi-dung">Lưu lại</button>
                <span class="help-block"></span>

                <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#thay-doi-pass" id="doi-mk">
                    Thay đổi mật khẩu
                </button>

                <!-- Modal -->
                <div class="modal fade" id="thay-doi-pass" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">VUI LÒNG ĐIỀN ĐẦY ĐỦ THÔNG TIN</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label >Mật khẩu hiện tại:</label>
                                        <input type="password" class="form-control" id="old-password"  placeholder="Mật khẩu hiện tại">
                                    </div>
                                    <div class="form-group">
                                        <label >Mật khẩu mới:</label>
                                        <input type="password" class="form-control" id="new-password1" placeholder="Mật khẩu mới">
                                    </div>

                                    <div class="form-group">
                                        <label >Nhập lại mật khẩu mới:</label>
                                        <input type="password" class="form-control" id="new-password2" placeholder="Nhập lại mật khẩu mới">
                                    </div>


                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" id="tiep-tuc-thay-doi">Thay đổi</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="row">

    </div>


    <div class="row">

        <div class="col-md-12" id="list-detail">
            <div class="card" id="datatable-detail">
                <div class="card-header">
                    <h3 class="card-title">DANH SÁCH DOANH NGHIỆP TRỰC THUỘC
                        <button type="button" class="btn-primary btn" id="xem-danh-sach-phong-ban"> XEM</button>
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
                        <div class="row" id="chi-nhanh">
                            <div class="col-sm-12">
                                <table class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                    <thead>
                                    <tr role="row">
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1"> STT</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tên Doanh Nghiệp</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tên Chi Nhánh</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tên Phòng Ban</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Chức Vụ</th>
                                        <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Trạng Thái</th>
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
                                        <td class="">NULL</td>
                                    </tr>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th rowspan="1" colspan="1">STT</th>
                                        <th rowspan="1" colspan="1">Tên Doanh Nghiệp</th>
                                        <th rowspan="1" colspan="1">Tên Chi Nhánh</th>
                                        <th rowspan="1" colspan="1">Tên Phòng Ban</th>
                                        <th rowspan="1" colspan="1">Chức Vụ</th>
                                        <th rowspan="1" colspan="1">Trạng Thái</th>
                                        <th rowspan="1" colspan="1">Qúa Trình Công tác</th>
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
                                <input class="form-control" type="text" value="Công ty TÂM VIỆT" id="doanh-nghiep-detail">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Chi Nhánh</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="Chi nhánh Hai Bà Trưng"  id="chi-nhanh-detail">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Phòng Ban</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="Phòng ban nhân sự"  id="phong-ban-detail">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Chức vụ</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="url" value="trưởng phòng" id="chuc-vu-detail">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Ngày khởi tạo</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="trưởng phòng" id="ngay-khoi-tao-detail">
                            </div>

                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Chỉnh sửa gần nhất</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="trưởng phòng" id="ngay-chinh-sua-detail">
                            </div>

                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Trạng thái hoạt động</label>
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
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <input type="reset" class="btn btn-secondary" value="Cancel" id="cancel-detail">
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