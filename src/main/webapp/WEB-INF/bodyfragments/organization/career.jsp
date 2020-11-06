<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<link rel="stylesheet" href="resources/template/css/dataTables.bootstrap4.css">
<link  rel="stylesheet" href="resources/css/organization.css">


<div class="card" id="datatable">
    <div class="card-header">
        <h3 class="card-title">DANH SÁCH NGÀNH NGHỀ ĐƯỢC QUẢN LÝ</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <div class="dataTables_length" id="example1_length">
                    </div>
                </div>
                <div class="col-sm-12 col-md-6">
                    <div id="example1_filter" class="dataTables_filter">
<%--                        <label class="">Tìm kiếm theo cấp:--%>

<%--                            <button class="btn btn-primary" type="button" >--%>
<%--                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1" id="careervalue">--%>
<%--                                <i class="fa fa-search" id="searchCareer"></i>--%>
<%--                            </button>--%>
<%--                        </label>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <table  class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                        <thead>
                        <tr role="row">
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >STT</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tên nghề nghiệp</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >Mã nghề nghiệp</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Cấp</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >Chi tiết</th>
                        </tr>
                        </thead>
                        <tbody id="career">
                        <tr role="row" >
                            <td class="">
                                <input class="form-control form-control-navbar " type="search" placeholder="Search" aria-label="Search" id="stt">
                            </td>
                            <td class="">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="name">
                            </td>
                            <td class="">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="code">
                            </td>
                            <td class="">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="level">
                            </td>
                            <td class="">
                                <button type="button" class="btn btn-primary" id="search">TÌM KIẾM</button>
                            </td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th rowspan="1" colspan="1">STT</th>
                            <th rowspan="1" colspan="1">Tên daonh nghiệp</th>
                            <th rowspan="1" colspan="1">Mã doanh nghiệp</th>
                            <th rowspan="1" colspan="1">Cấp</th>
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





<script src="resources/js/organization/career.js" defer></script>