<%--
  Created by IntelliJ IDEA.
  User: NGUYEN TRONG HUAN
  Date: 15/02/2020
  Time: 9:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>ADMIN</b>CMS</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">


        <div class="card-body login-card-body">
            <p class="login-box-msg">Vui lòng đăng nhập</p>

            <form action="#" method="post">
                <div class="input-group mb-3">
                    <input type="username" class="form-control" placeholder="username" id="username">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" placeholder="Password" id="password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-8">
                        <div class="icheck-primary">
                            <input type="checkbox" id="remember">
                            <label for="remember">
                                Nhớ mật khẩu
                            </label>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="button" class="btn btn-primary btn-block" id="btn-login">Gửi</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

            <div class="social-auth-links text-center mb-3">
                <p>- Hoặc -</p>
                <a href="#" class="btn btn-block btn-primary" id="btn-login-fb">
                    <i class="fab fa-facebook mr-2" ></i> Đăng nhập bằng Facebook
                </a>
                <a href="#" class="btn btn-block btn-danger" id="btn-login-gg">
                    <i class="fab fa-google-plus mr-2"></i> Đăng nhập bằng Google
                </a>
            </div>
            <!-- /.social-auth-links -->

            <p class="mb-1">
                <a href="./forgot-password">Quên mật khẩu</a>
            </p>
            <p class="mb-0">
                <a href="./register" class="text-center">Đăng ký tài khoản mới</a>
            </p>
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
<!-- /.login-box -->

<script src="template/js/jquery.min.js"></script>
<script defer>
    $(document).ready(function () {
        $('body').addClass('login-page');
    });
</script>

<script src="resources/js/login.js"></script>


<%--<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>AdminLTE 2 | Log in</title>--%>
<%--    <link rel="shortcut icon" type="image/png" href="resources/img/logo-tamviet-01.png"/>--%>
<%--    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>--%>
<%--    <!-- Bootstrap 3.3.2 -->--%>
<%--    <link href="resources/template/css/bootstrap.css" rel="stylesheet" type="text/css" />--%>
<%--    <!-- Font Awesome Icons -->--%>
<%--    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />--%>
<%--    <!-- Theme style -->--%>
<%--    <link href="resources/template/css/AdminLTE.css" rel="stylesheet" type="text/css" />--%>
<%--    <!-- iCheck -->--%>
<%--    <link href="resources/template/iCheck/square/blue.css" rel="stylesheet" type="text/css" />--%>
<%--    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->--%>
<%--    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->--%>
<%--    <!--[if lt IE 9]>--%>
<%--    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--%>
<%--    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>--%>
<%--    <![endif]-->--%>

<%--    <!-- jQuery 2.1.3 -->--%>
<%--    <script src="resources/template/js/jquery.min.js"></script>--%>
<%--    <!-- jQuery UI 1.11.2 -->--%>
<%--    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>--%>
<%--    <script src="resource/js/ajax/ajax_main.js"></script>--%>
<%--    <script src="resources/js/ajax/model/ajax_nguoi_dung.js"></script>--%>
<%--    <script src="resources/js/ajax/login.js"></script>--%>
<%--</head>--%>
<%--<body class="login-page">--%>
<%--<style>--%>
<%--    .form-group {--%>
<%--        flex-wrap: wrap;--%>
<%--    }--%>

<%--    .form-group span {--%>
<%--        background-color: unset;--%>
<%--        border-radius: unset!important;--%>
<%--        border: unset;--%>
<%--        padding: 5px 9px;--%>
<%--    }--%>

<%--    .help-block {--%>
<%--        opacity: 0;--%>
<%--        margin: unset;--%>
<%--        margin-top: 2px;--%>
<%--    }--%>

<%--    .has-error .help-block {--%>
<%--        opacity: 1;--%>
<%--    }--%>
<%--</style>--%>
<%--<div class="logo">--%>
<%--    <div class="logo-wp">--%>
<%--        <a class="logo-img" href="dang-nhap">--%>
<%--            <img src="./dist/img/logo-tamviet-01.png" alt="">--%>
<%--        </a>--%>
<%--        <div class="logo-ct">--%>
<%--            <span>Phần mềm quản lí trữ lượng khoáng sản</span>--%>
<%--            <span>sở tài nguyên môi trường tỉnh bắc giang</span>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<div class="login-box">--%>
<%--    <div class="login-box-body">--%>
<%--        <p class="login-box-msg">Đăng nhập để bắt đầu phiên làm việc</p>--%>
<%--        <form>--%>
<%--            <div class="form-group has-feedback">--%>
<%--                <input type="text" class="form-control input-login" placeholder="Tài khoản" id="username"/>--%>
<%--                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>--%>
<%--            </div>--%>
<%--            <div class="form-group has-feedback">--%>
<%--                <input type="password" class="form-control input-login" placeholder="Mật khẩu" id="password"/>--%>
<%--                <span class="glyphicon glyphicon-lock form-control-feedback"></span>--%>
<%--                <p class="help-block">Tài khoản hoặc mật khẩu không đúng!</p>--%>
<%--            </div>--%>
<%--            <div class="row">--%>
<%--                <div class="col-xs-8">--%>
<%--                    <div class="checkbox icheck">--%>
<%--                        <label>--%>
<%--                            <input type="checkbox"> Nhớ mật khẩu--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                </div><!-- /.col -->--%>
<%--                <div class="col-xs-4">--%>
<%--                    <button type="submit" class="btn btn-primary btn-block btn-flat" id="btn-login">Đăng nhập</button>--%>
<%--                </div><!-- /.col -->--%>
<%--            </div>--%>
<%--        </form>--%>

<%--        <div class="social-auth-links text-center">--%>
<%--            <p>- OR -</p>--%>
<%--            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Đăng nhập với Facebook</a>--%>
<%--            <a href="#" class="btn btn-block btn-social btn-google-plus btn-flat"><i class="fa fa-google-plus"></i> Đăng nhập với Google+</a>--%>
<%--        </div><!-- /.social-auth-links -->--%>

<%--        <a href="#">Quên mật khẩu?</a><br>--%>
<%--        <a href="register.html" class="text-center">Đăng ký</a>--%>

<%--    </div><!-- /.login-box-body -->--%>
<%--</div><!-- /.login-box -->--%>

<%--<!-- jQuery 2.1.3 -->--%>
<%--<script src="resources/template/js/jquery.min.js"></script>--%>
<%--<!-- Bootstrap 3.3.2 JS -->--%>
<%--<script src="resources/template/js/bootstrap.js" type="text/javascript"></script>--%>
<%--<!-- iCheck -->--%>
<%--<script src="resources/template/iCheck/icheck.min.js" type="text/javascript"></script>--%>
<%--<script>--%>
<%--    $(function () {--%>
<%--        $('input').iCheck({--%>
<%--            checkboxClass: 'icheckbox_square-blue',--%>
<%--            radioClass: 'iradio_square-blue',--%>
<%--            increaseArea: '20%' // optional--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>
