<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="signup col-8">
    <form>
        <div class="logo"><img src="resources/img/logo-tamviet-01.png" alt=""></div>
        <div id="xac-thuc-tai-khoan" class="col-8">
            <h2>Câu hỏi bảo mật</h2>
            <div class="list-cau-hoi-bao-mat">
                <div class="cau-hoi-bao-mat">
                    <div class="form-group">
                        <select class="form-control select2bs4 select2-hidden-accessible" id="select-1">
                            <option value=-1>Vui lòng chọn câu hỏi</option>
                            <option value=0>Câu hỏi 1</option>
                            <option value=1>Câu hỏi 2</option>
                            <option value=2>Câu hỏi 3</option>
                        </select>
                        <input type="text" class="form-control mt-2" placeholder="Trả lời câu hỏi 1" id="text-1">
                        <span class="invalid-feedback">Please validation</span>
                    </div>
                </div>
                <div class="cau-hoi-bao-mat">
                    <div class="form-group">
                        <select class="form-control select2bs4 select2-hidden-accessible" id="select-2">
                            <option value=-1>Vui lòng chọn câu hỏi</option>
                            <option value=0>Câu hỏi 1</option>
                            <option value=1>Câu hỏi 2</option>
                            <option value=2>Câu hỏi 3</option>
                        </select>
                        <input type="text" class="form-control mt-2" placeholder="Trả lời câu hỏi 2" id="text-2">
                        <span class="invalid-feedback">Please validation</span>
                    </div>
                </div>
                <div class="cau-hoi-bao-mat">
                    <div class="form-group">
                        <select class="form-control select2bs4 select2-hidden-accessible" id="select-3">
                            <option value=-1>Vui lòng chọn câu hỏi</option>
                            <option value=0>Câu hỏi 1</option>
                            <option value=1>Câu hỏi 2</option>
                            <option value=2>Câu hỏi 3</option>
                        </select>
                        <input type="text" class="form-control mt-2" placeholder="Trả lời câu hỏi 3" id="text-3">
                        <span class="invalid-feedback">Please validation</span>
                    </div>
                </div>
            </div>
            <button class="btn btn-secondary" id="gui-cau-hoi-bao-mat">Lưu lại</button>
        </div>
    </form>
</div>

<script src="resources/js/ajax/khac/ajax_cau_hoi_bao_mat.js"></script>