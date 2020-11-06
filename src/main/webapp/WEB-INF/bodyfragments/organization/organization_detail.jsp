<%--
  Created by IntelliJ IDEA.
  User: NGUYEN TRONG HUAN
  Date: 18/02/2020
  Time: 7:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<link  rel="stylesheet" href="resources/css/organization.css">

<script src="resources/js/organization/organization_detail.js"></script>>


<div class="" id="profile"  >
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Hồ Sơ Chi Nhánh</h1>
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
                                <img class="profile-user-img img-fluid img-circle" src="resources/img/tamviet.jfif" alt="User profile picture">
                            </div>

                            <h3 class="profile-username text-center" id="name_organization">Tên Chi Nhánh</h3>

                            <p class="text-muted text-center" id="enable">Trạng thái hoạt động</p>

                            <ul class="list-group list-group-unbordered mb-3">
                                <li class="list-group-item">
                                    <b>Điện thoại</b> <a class="float-right" id="phone_number">09798777334</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Mã Tổ Chức</b> <a class="float-right" id="code_organization">XHFHAKFKHA</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Trạng Thái</b> <a class="float-right" id="enable2">Hoạt động</a>
                                </li>

                            </ul>

                            <a href="" class="btn btn-primary btn-block" id="next_child"><b>Xem thông tin Chi Nhánh</b></a>

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
                                <li class="nav-item active"><a class="nav-link" href="#activity" data-toggle="tab">Thông tin</a></li>

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
                                            Lorem ipsum represents a long-held tradition for designers,
                                            typographers and the like. Some people hate it and argue for
                                            its demise, but others ignore the hate as they create awesome
                                            tools to help create filler text for everyone from bacon lovers
                                            to Charlie Sheen fans.
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
                          <a href="#">Các phòng ban của Chi Nhánh </a>
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
                                            <label for="inputName" class="col-sm-2 col-form-label" id="name_organization_update">Tên chi nhánh</label>
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
                                            <label for="inputSkills" class="col-sm-2 col-form-label" id="phone_number_update">Số điện thoại</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputSkills" placeholder="Phome Number">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputSkills" class="col-sm-2 col-form-label" id="charter_capital_update">Vốn điều lệ</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputSkills" placeholder="Charter Capital">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputSkills" class="col-sm-2 col-form-label" id="representative_update">Người đại điện</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputSkills" placeholder="Represetative">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputSkills" class="col-sm-2 col-form-label" id="business_license_update">Giấy phép kinh doanh</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputSkills" placeholder="Business License">
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
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>



