<%--
  Created by IntelliJ IDEA.
  User: NGUYEN TRONG HUAN
  Date: 12/03/2020
  Time: 11:19 SA
  To change this template use File | Settings | File Templates.
--%>
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
<link rel="stylesheet" href="./css/quan_ly_doanh_nghiep/quanlynguoidung.css">
<!-- Main content -->
<section class="content">
    <div class="buifmaop">
        <div class="buifmaoptitle">
            <span class="page-title">
                <h3 >CHI TIẾT CÔNG TÁC</h3>
            </span>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 col-md-6">
            <div class="etpinfop form-group">
                <label >Username: <span class="text-red"></span></label>
                <input type="button" id="ten-nguoi-dung" class="form-control check-modifile-ttdn">
                <span class="help-block"></span>
            </div>
            <div class="etpinfopti">
                <div class="etpinfopi1ot form-group">
                    <label>Doanh Nghiệp: <span class="text-red"></span></label>
                    <input type="button" id="doanh-nghiep" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>
                <div class="etpinfopi1ot form-group">
                    <label>Chi Nhánh: <span class="text-red"></span></label>
                    <input type="button" id="chi-nhanh" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>
            </div>

            <div class="etpinfopti">
                <div class="etpinfopi1ot form-group">
                    <label>Ngày khởi tạo: <span class="text-red"></span></label>
                    <input type="date" id="created-date" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>
                <div class="etpinfopi1ot form-group">
                    <label>Chỉnh sửa gần nhất: <span class="text-red"></span></label>
                    <input type="date" id="modified-date" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>
            </div>

        </div>
        <div class="col-sm-12 col-md-6">
            <div class="etpinfop form-group">
                <label >Trạng thái: <span class="text-red">(*)</span></label>
                <select class="js-example-basic-single select2 form-control" name="state" id="trang-thai" style="width: 100%">
                    <option value="1">Hoạt động</option>
                    <option value="2">Tạm dừng</option>
                    <option value="3">Chờ duyệt</option>
                    <option value="4">Thôi việc</option>

                </select>

                <span class="help-block"></span>
            </div>


            <div class="etpinfopti">
                <div class="etpinfopi1ot form-group">
                    <label>Phòng Ban: <span class="text-red"></span></label>
                    <input type="button" id="phong-ban" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>
                <div class="etpinfopi1ot form-group">
                    <label>Chức vụ: <span class="text-red"></span></label>
                    <input type="button" id="chuc-vu" class="form-control check-modifile-ttdn">
                    <span class="help-block"></span>
                </div>
            </div>

<%--            <div class="etpinfopti">--%>
<%--                <div class="etpinfopi1ot form-group">--%>

<%--                    <label>Phòng Ban: <span class="text-red"></span></label>--%>
<%--                    <select class="js-example-basic-single select2 form-control" name="state" id="gioi-tinh" style="width: 100%">--%>
<%--                        <option value="0">Nữ</option>--%>
<%--                        <option value="1">Nam</option>--%>
<%--                    </select>--%>
<%--                    <span class="help-block"></span>--%>
<%--                </div>--%>
<%--                <div class="etpinfopi1ot form-group">--%>
<%--                    <label>Chức vụ: <span class="text-red">(*)</span></label>--%>
<%--                    <input class="form-control" type="date" value="" id="ngay-sinh">--%>
<%--                    <span class="help-block"></span>--%>
<%--                </div>--%>
<%--            </div>--%>


            <div class="etpinfopm">
                <div class="container" style="padding: unset">
                    <div class="row">
                        <div class="etpinfopi col-sm-6">
                            <div class="text-left">
                                <button class="btn btn-primary" id="xóa" style="margin: auto">XÓA</button>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="etpinfopi col-sm-6">
                            <div class="text-left">
                                <button class="btn btn-primary" id="save-nguoi-dung" style="margin: auto">Lưu lại</button>
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="resources/js/js_style/thong_tin_doanh_nghiep.js"></script>
<!-- /.content -->
