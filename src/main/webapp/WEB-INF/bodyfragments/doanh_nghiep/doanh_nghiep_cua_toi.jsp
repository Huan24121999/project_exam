<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="./template/css/select2.min.css" rel="stylesheet" >
<link rel="stylesheet" href="resources/template/css/dataTables.bootstrap4.css">
<link  rel="stylesheet" href="resources/css/organization.css">
<link rel="stylesheet" href="resources/css/quan_ly_doanh_nghiep/qlttdn.css">
<script src="resources/js/ajax/model/ajax_doanh_nghiep.js"></script>
<script src="resources/js/ajax/model/ajax_check_quyen.js"></script>
<link rel="stylesheet" href="template/pagination/pagination.css">
<script src="resources/template/pagination/pagination.js"></script>

<%--<script src="resources/js/ajax/quan_ly_doanh_nghiep/ajax_thong_tin_doanh_nghiep.js"></script>--%>

<div class="card" id="datatable">
    <div class="card-header">
        <div class="row">
            <div class="col-sm-12 col-md-10">
                <h3 class="card-title">DANH SÁCH TỔ CHỨC DOANH NGHIỆP</h3>
            </div>
            <div class="col-sm-12 col-md-2">
                <a href="./thong-tin-doanh-nghiep?id=0">
                    <button type="button" class="btn-primary btn" id="them-moi">Thêm Mới</button>
                </a>
            </div>
        </div>

    </div>
    <!-- /.card-header -->
    <div class="card-body">

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


<script src="resources/js/ajax/quan_ly_doanh_nghiep/ajax_doanh_nghiep_cua_toi.js" defer></script>
<script src="resources/template/pagination/pagination.js"></script>