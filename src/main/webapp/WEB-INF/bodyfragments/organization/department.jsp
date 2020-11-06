<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<link rel="stylesheet" href="resources/template/css/dataTables.bootstrap4.css">
<link  rel="stylesheet" href="resources/css/organization.css">


<div class="card" id="datatable">
    <div class="card-header">
        <h3 class="card-title">DANH SÁCH CÁC PHÒNG BAN</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <div class="dataTables_length" id="example1_length">
<%--                        <label>Show--%>
<%--                            <select name="example1_length" aria-controls="example1" class="custom-select custom-select-sm form-control form-control-sm">--%>
<%--                                <option value="10">10</option>--%>
<%--                                <option value="25">25</option>--%>
<%--                                <option value="50">50</option>--%>
<%--                            </select> Phần tử--%>
<%--                        </label>--%>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6">
                    <div id="example1_filter" class="dataTables_filter">
<%--                        <label class="display">Tìm kiếm theo Nghề nghiệp:--%>

<%--                            <button class="btn btn-primary" type="button" >--%>
<%--                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1" id="careervalue">--%>
<%--                                <i class="fa fa-search" id="searchCareer"></i>--%>
<%--                            </button>--%>
<%--                        </label>--%>
                        <label class="display">Tìm kiếm theo Tổ chức :

                            <button class="btn btn-primary" type="button" >
                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1" id="organizationvalue">
                                <i class="fa fa-search" id="searchorganization"></i>
                            </button>
                        </label>
<%--                        <label class="dispaly">Tìm kiếm theo Địa chỉ:--%>

<%--                            <button class="btn btn-primary" type="button" >--%>
<%--                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1" id="addressvalue">--%>
<%--                                <i class="fa fa-search" id="searchaddress"></i>--%>
<%--                            </button>--%>
<%--                        </label>--%>
                        <label >Tìm kiếm theo Chi Nhánh:

                            <button class="btn btn-primary" type="button" >
                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1" id="agencyvalue">
                                <i class="fa fa-search" id="searchagency"></i>
                            </button>
                        </label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <table  class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                        <thead>
                        <tr role="row">
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending">STT</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column descending" aria-sort="ascending">Tên Phòng Ban</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" >Mã Phòng Ban</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" >Liên hệ</th>
                            <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Chi tiết</th>
                        </tr>
                        </thead>
                        <tbody id="organization">
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
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="eportal">
                            </td>
                            <td class="">
                                <button type="button" class="btn btn-primary" id="search">TÌM KIẾM</button>
                            </td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th rowspan="1" colspan="1">STT</th>
                            <th rowspan="1" colspan="1">Tên Phòng Ban</th>
                            <th rowspan="1" colspan="1">Mã Phòng Ban</th>
                            <th rowspan="1" colspan="1">Liên hệ</th>
                            <th rowspan="1" colspan="1">Chi tiết</th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="row">
                <!-- <div class="col-sm-12 col-md-5">
                    <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                </div> -->
                <div class="col-sm-12 col-md-7">
                    <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                        <ul class="pagination" id="pagination">
                            <!-- <li class="paginate_button page-item previous disabled" id="example1_previous">
                                <a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                            </li>
                            <li class="paginate_button page-item active">
                                <a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0" class="page-link">1</a>
                            </li>

                            <li class="paginate_button page-item next" id="next">
                                <a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
                            </li> -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.card-body -->
</div>


<div class=" display" id="profile"  >
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Hồ Sơ Phòng Ban</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">

                        <button type="button" class="btn btn-primary" id="close">CLOSE</button>

                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">

                    <!-- Profile Image -->
                    <div class="card card-primary card-outline">
                        <div class="card-body box-profile">
                            <div class="text-center">
                                <img class="profile-user-img img-fluid img-circle" src="resources/img/doanhnghiep.jpg" alt="User profile picture">
                            </div>

                            <h3 class="profile-username text-center" id="name_organization">Tên Phòng Ban</h3>

                            <p class="text-muted text-center" id="enable">Trạng thái hoạt động</p>

                            <ul class="list-group list-group-unbordered mb-3">
                                <li class="list-group-item">
                                    <b>Điện thoại</b> <a class="float-right" id="phone_number">09798777334</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Mã chi nhánh</b> <a class="float-right" id="code_organization">XHFHAKFKHA</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Trạng thái</b> <a class="float-right" id="enable2">Hoạt động</a>
                                </li>
                            </ul>

                            <a href="#" class="btn btn-primary btn-block"><b>Theo dõi</b></a>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->

                    <!-- About Me Box -->

                    <!-- /.card -->
                </div>
                <!-- /.col -->
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-header p-2">
                            <ul class="nav nav-pills">
                                <li class="nav-item active"><a class="nav-link" href="#activity" data-toggle="tab">Thông tin </a></li>

                                <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Cài đặt</a></li>
                            </ul>
                        </div><!-- /.card-header -->
                        <div class="card-body">
                            <div class="tab-content">
                                <div class="tab-pane active" id="activity">
                                    <!-- Post -->
                                    <div class="post">
                                        <div class="user-block">
                                            <img class="img-circle img-bordered-sm" src="resources/img/tamviet.jfif" alt="user image">
                                            <span class="username">
                                              <a href="#">MÔ TẢ</a>
                                              <a href="#" class="float-right btn-tool"><i class="fas fa-times"></i></a>
                                            </span>
                                            <span class="description" id="modify_date1">Thời gian chỉnh sửa</span>
                                        </div>
                                        <!-- /.user-block -->
                                        <p id="description">
                                            VĂN BẢN DÙNG ĐỂ MÔ TẢ VỀ CHI NHÁNH NÀY
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                            Aliquam eligendi incidunt odit quae voluptas. Ad adipisci aliquam
                                            eligendi expedita hic iste labore necessitatibus nihil quae reiciendis,
                                            rem similique vero voluptas.
                                        </p>
                                    </div>
                                    <!-- /.post -->

                                    <!-- Post -->
                                    <div class="post clearfix">
                                        <div class="user-block">
                                            <img class="img-circle img-bordered-sm" src="resources/img/tamviet.jfif" alt="User Image">
                                            <span class="username">
                                              <a href="#">LĨNH VỰC HOẠT ĐỘNG</a>
                                              <a href="#" class="float-right btn-tool"><i class="fas fa-times"></i></a>
                                            </span>
                                            <span class="description" id="modify_date2">Thời gian chỉnh sửa</span>
                                        </div>
                                        <!-- /.user-block -->
                                        <p id="career">
                                            Chức năng này chưa hỗ trợ API, chút nữa sẽ làm cái này để hiện lĩnh vực mà doanh nghiệp quan tâm ở đây
                                        </p>

                                    </div>
                                    <!-- /.post -->

                                    <!-- Post -->
                                    <div class="post">
                                        <div class="user-block">
                                            <img class="img-circle img-bordered-sm" src="resources/img/tamviet.jfif" alt="User Image">
                                            <span class="username">
                                                  <a href="#">GIẤY PHÉP KINH DOANH </a>
                                                  <a href="#" class="float-right btn-tool"><i class="fas fa-times"></i></a>
                                            </span>
                                            <span class="description" id="modify_date3">Thời gian chỉnh sửa</span>
                                        </div>
                                        <!-- /.user-block -->
                                        <div class="row mb-3">
                                            <div class="col-sm-6">
                                                <img class="img-fluid" src="resources/img/giayphephd.jpg" alt="Photo">
                                            </div>
                                            <!-- /.col -->

                                        </div>
                                        <!-- /.row -->
                                    </div>
                                    <!-- /.post -->
                                </div>
                                <!-- /.tab-pane -->

                                <!-- /.tab-pane -->

                                <div class="tab-pane" id="settings">
                                    <form class="form-horizontal">
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label" id="name_organization_update">Tên doanh nghiệp</label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" id="inputName" placeholder="Name">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail" class="col-sm-2 col-form-label"id="e_portal_update">Eportal</label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputName2" class="col-sm-2 col-form-label" id="address_update">Địa chỉ</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputName2" placeholder="Address">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputNumber" class="col-sm-2 col-form-label" id="phone_number_update">Số điện thoại</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputNumber" placeholder="Phome Number">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputCharter" class="col-sm-2 col-form-label" id="charter_capital_update">Vốn điều lệ</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputCharter" placeholder="Charter Capital">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputRepresetative" class="col-sm-2 col-form-label" id="representative_update">Người đại điện</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputRepresetative" placeholder="Represetative">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputBusinessLicense" class="col-sm-2 col-form-label" id="business_license_update">Giấy phép kinh doanh</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputBusinessLicense" placeholder="Business License">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputExperience" class="col-sm-2 col-form-label" id="description_id">Mô tả</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="inputExperience" placeholder="Description"></textarea>
                                            </div>
                                        </div>



                                        <div class="form-group row">
                                            <div class="offset-sm-2 col-sm-10">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="offset-sm-2 col-sm-10">
                                                <button type="button" class="btn btn-danger" id="submit">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content -->
                        </div><!-- /.card-body -->
                    </div>
                    <!-- /.nav-tabs-custom -->
                </div>
                <!-- /.col -->

                <div class="col-md-9 display">
                    <div class="card" id="datatable-detail">
                        <div class="card-header">
                            <h3 class="card-title">DANH SÁCH CÁC CHI NHÁNH</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="dataTables_wrapper dt-bootstrap4">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="dataTables_length">
                                            <label>Show
                                                <select name="example1_length" aria-controls="example1" class="custom-select custom-select-sm form-control form-control-sm">
                                                    <option value="10">10</option>
                                                </select> Phần tử
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div  class="dataTables_filter">

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table  class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                            <thead>
                                            <tr role="row">
                                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending">STT</th>
                                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column descending" aria-sort="ascending">Tên chi nhánh</th>
                                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" >Mã chi nhánh</th>
                                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" >Liên hệ</th>
                                                <th  tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" ></th>Chi tiết</th>
                                            </tr>
                                            </thead>
                                            <tbody id="organization-detail">
                                            <tr role="row" >
                                                <td class="">
                                                    <input class="form-control form-control-navbar " type="search" placeholder="Search" aria-label="Search" id="stt-detail">
                                                </td>
                                                <td class="">
                                                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="name-detail">
                                                </td>
                                                <td class="">
                                                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="code-detail">
                                                </td>
                                                <td class="">
                                                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="eportal-detail">
                                                </td>
                                                <td class="">
                                                    <button type="button" class="btn btn-primary" id="search-detail">TÌM KIẾM</button>
                                                </td>
                                            </tr>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                                <th rowspan="1" colspan="1">STT</th>
                                                <th rowspan="1" colspan="1">Tên Chi Nhánh</th>
                                                <th rowspan="1" colspan="1">Mã Chi Nhánh</th>
                                                <th rowspan="1" colspan="1">Liên Hệ</th>
                                                <th rowspan="1" colspan="1">Chi tiết</th>
                                            </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-sm-12 col-md-7">
                                        <div class="dataTables_paginate paging_simple_numbers" >
                                            <ul class="pagination" id="pagination-detail">

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
            <!-- /.row -->

            </div>
            <!-- /.row -->
<%--        </div><!-- /.container-fluid -->--%>
    </section>
    <!-- /.content -->
</div>



<script src="resources/js/organization/department.js" defer></script>