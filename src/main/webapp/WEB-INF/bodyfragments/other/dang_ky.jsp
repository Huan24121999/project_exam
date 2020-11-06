<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="signup col-8 col-lg-5">
    <form action="" method="post">
        <div class="text-center" style="font-size: 2rem;">Đăng Ký</div>
        <div class="text-center text-secondary mt-2">Nhanh chóng và dễ dàng</div>
        <div class="row mt-4">
            <div class="col-lg-6">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Họ" required="required" id="ho">
                    <span class="invalid-feedback">Please validation</span>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Tên" required="required" id="ten">
                    <span class="invalid-feedback">Please validation</span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Email" required="required" id="email">
                    <span class="invalid-feedback">Please validation</span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Tên đăng nhập" required="required" id="username">
                    <span class="invalid-feedback">Please validation</span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Mật khẩu" required="required" id="password">
                    <span class="invalid-feedback">Please validation</span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Nhập mật khẩu" required="required" id="repassword">
                    <span class="invalid-feedback">Please validation</span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Số điện thoại" required="required" id="so-dien-thoai">
                    <span class="invalid-feedback">Please validation</span>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <div class="col-xs-8">
                        <div class="input-group date">
                            <input type="text" class="form-control border-gray date-vn" id="ngay-sinh" placeholder="Ngày sinh">
                            <div class="input-group-prepend">
                              <span class="input-group-text">
                                <i class="far fa-calendar-alt"></i>
                              </span>
                            </div>
                            <span class="invalid-feedback">Please validation</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-4 col-lg-3">
                <label>Giới tính: </label>
            </div>
            <div class="col-8 col-lg-9">
                <div class="form-group" id="list-gioi-tinh">
                    <div class="row">
                        <div class="col-12">
                            <label><input type="radio" value="0" name="gender" checked> Nam</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                        <label><input type="radio" value="1" name="gender"> Nữ</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                        <label><input type="radio" value="2" name="gender"> Không xác định</label>
                        </div>
                    </div>
                    <span class="invalid-feedback">Please validation</span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <p class="text-secondary" id="dieu-khoan">
                    Bằng cách nhấp vào Đăng ký, bạn đồng ý với <a href="">Điều khoản</a>, <a href="">Chính sách dữ liệu</a> của chúng tôi. Bạn có thể nhận được thông báo của chúng tôi qua SMS và hủy nhận bất kỳ lúc nào.
                </p>
            </div>
        </div>

        <div class="form-group mt-3">
            <button type="button" class="btn btn-secondary btn-block" id="btn-singup" style="border-radius: 25px">Đăng ký</button>
        </div>
    </form>
</div>

<script src="resources/js/ajax/khac/ajax_dang_ky.js"></script>