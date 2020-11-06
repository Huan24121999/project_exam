<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="./template/css/select2.min.css" rel="stylesheet" >
<script src="resources/template/js/select2.min.js"></script>
<link rel="stylesheet" href="template/pagination/pagination.css">
<script src="resources/template/pagination/pagination.js"></script>

<div class="card" id="datatable">
    <div class="card-header">
        <div class="row">
            <div class="col-sm-12 col-md-4">
                <h3 class="card-title">DANH SÁCH HƯỚNG DẪN SỬ DỤNG PHẦN MỀM</h3>
            </div>
            <div class="col-sm-12 col-md-4">
                <input type="text" id="search-title" class="form-control check-modifile-ttdn" placeholder="Tìm kiếm bài viết">
            </div>
            <div class="col-sm-12 col-md-2">
                <div class="etpinfop form-group">
                    <select class="js-example-basic-single select2" name="state" id="select1" style="width: 100%">
                        <option value="BG">NULL</option>
                    </select>
                    <span class="help-block"></span>
                </div>
            </div>
            <div class="col-sm-12 col-md-2">
                    <button type="button" class="btn-primary btn displaynone" id="them-moi">Thêm Mới</button>
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
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tiêu đề</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >Quản lý</th>
                        </tr>
                        </thead>
                        <tbody id="danh-sach">
                        <tr role="row" >
                            <td class="">
                                <input class="form-control form-control-navbar" type="search"  aria-label="Search">
                            </td>
                            <td class="">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="search-by-title" >
                            </td>
                            <td class="">
                                <input class="form-control form-control-navbar" type="search"  aria-label="Search">
                            </td>
                        </tr>

                        </tbody>
                        <tfoot>
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


<script src="resources/template/pagination/pagination.js"></script>
<script src="./js/ajax/model/ajax_chinh_sua_huong_dan.js"></script>
<script src="./js/ajax/model/ajax_phan_mem.js"></script>
<script src="./js/ajax/application/ajax_danh_sach_huong_dan.js"></script>