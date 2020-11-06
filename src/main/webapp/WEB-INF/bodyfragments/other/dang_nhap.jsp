<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="login-form">
    <form action="" method="post">
        <div class="text-center" style="font-size: 2rem;">Đăng Nhập</div>
        <div class="form-group mt-4">
            <span class="mp-3">Tài khoản</span>
            <div class="input-group mt-2">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                </div>
                <input type="text" class="form-control input-login" placeholder="Nhập tài khoản" required="required" id="username">
            </div>
        </div>

        <div class="form-group">
            <span>Mật khẩu</span>
            <div class="input-group mt-2">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                </div>
                <input type="password" class="form-control input-login" placeholder="Nhập mật khẩu" required="required" id="password">
                <span class="invalid-feedback">Tài khoản hoặc mật khẩu không đúng! Vui lòng nhập lại.</span>
            </div>
        </div>

        <div class="clearfix text-right">
<%--            <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>--%>
            <a href="" id="btn-quen-mat-khau" class="text-secondary mb-2">Quên mật khẩu?</a>
        </div>

        <div class="form-group mt-3">
            <button type="button" class="btn btn-secondary btn-block" id="btn-login" style="border-radius: 25px">Đăng nhập</button>
        </div>

        <div class="txt1 text-center p-t-54 p-b-20 mt-3">
                <span>
                   Hoặc đăng nhập sử dụng
                </span>
        </div>

        <div class="flex-c-m">
            <a href="#" class="login100-social-item bg1">
                <i class="fab fa-facebook-square"></i>
            </a>

            <a href="#" class="login100-social-item bg2">
                <i class="fab fa-twitter-square"></i>
            </a>

            <a href="#" class="login100-social-item bg3">
                <i class="fab fa-google-plus-square"></i>
            </a>
        </div>

        <div class="w-full text-center p-t-55 mt-4">
                <span class="txt2">
                Bạn chưa có tài khoản?
                </span>
            <a href="dang-ky" id="btn-dang-ky" class="txt2 bo1 text-secondary">
                Đăng ký
            </a>
        </div>
    </form>

</div>

<script src="resources/js/ajax/khac/ajax_dang_nhap.js"></script>