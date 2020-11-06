<%--
  Created by IntelliJ IDEA.
  User: NGUYEN TRONG HUAN
  Date: 15/02/2020
  Time: 9:38 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<<div class="login-box">
<div class="login-logo">
    <a href="./login"><b>Admin</b>CMS</a>
</div>
<!-- /.login-logo -->
<div class="card">
    <div class="card-body login-card-body">
        <p class="login-box-msg">Bạn quên mật khẩu? Vui lòng nhập email của bạn.</p>

        <form action="recover-password.html" method="post">
            <div class="input-group mb-3">
                <input type="email" class="form-control" placeholder="Email">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <button type="button" class="btn btn-primary btn-block">Lấy lại mật khẩu</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <p class="mt-3 mb-1">
            <a href="./login">Login</a>
        </p>
        <p class="mb-0">
            <a href="./register" class="text-center">Đăng ký thành viên mới</a>
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
