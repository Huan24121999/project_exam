<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script src="resources/js/ajax/model/ajax_menu.js"></script>
<link  rel="stylesheet" href="resources/css/menu.css">
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
        <img src="resources/img/tamviet.jfif" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">HỆ QUẢN LÝ CMS</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="resources/img/tamviet.jfif" class="img-circle elevation-2" alt="User Image" id="avatar-menu">
            </div>
            <div class="info">
                <a href="#" class="d-block" id="ten-nguoi-dung-menu"></a>
            </div>
        </div>


        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false" id="mennu-items">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview ">
                    <a href="./thong-tin-nguoi-dung" class="nav-link" id="thong-tin-ca-nhan-menu">
                        <i class="nav-icon fas fa-user-cog"></i>
                        <p>
                            Thông tin cá nhân
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                </li>


                <li class="nav-item has-treeview ">
                    <a href="./danh-sach-doanh-nghiep" class="nav-link displaynone" id="thong-tin-doanh-nghiep">
                        <i class="nav-icon fas fa-list-alt"></i>
                        <p>
                            Quản Lý Doanh Nghiệp
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview ">
                    <a href="./doanh-nghiep-cua-toi" class="nav-link " id="doanh-nghiep-cua-toi">
                        <i class="nav-icon fas fa-building"></i>
                        <p>
                            Doanh Nghiệp Của Tôi
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                </li>

                <li class="nav-item has-treeview" >
                    <a href="./danh-sach-huong-dan" class="nav-link" id="huong-dan-su-dung">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                            Hướng dẫn sử dụng
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview ">
                    <a href="./login" class="nav-link " id="dang-xuat">
                        <i class="nav-icon fas fa-sign-out-alt"></i>
                        <p>
                            Đăng xuất
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>


