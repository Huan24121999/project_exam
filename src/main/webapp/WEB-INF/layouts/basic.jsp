<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title><tiles:insertAttribute name="title"/></title>
    <meta charset="utf-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="resources/css/dang-nhap.css" type="text/css">
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="resources/template/jQuery/jQuery-2.1.3.min.js"></script>
    <link rel="stylesheet" href="resources/template/select2/css/select2.min.css">
    <link rel="stylesheet" href="resources/template/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <script src="resources/template/select2/js/select2.full.min.js"></script>
    <script src="resources/js/ajax/ajax_main.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-notify/0.2.0/css/bootstrap-notify.min.css">
    <script src="resources/template/bootstrap-notify.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.min.css">
    <link href="resources/template/datepicker/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css">
    <script src="resources/template/datepicker/bootstrap-datepicker.min.js"></script>
    <script src="resources/template/datepicker/bootstrap-datepicker.vi.min.js"></script>
</head>
<body>
    <tiles:insertAttribute name="body" />
<script>
    if ($(".date-vn").length > 0) {
        $(".date-vn").datepicker({
            language: "vi"
        });
    }
    if($('.select2bs4').length > 0) $('.select2bs4').select2({width: 'resolve'});
</script>
<!-- Optional JavaScript -->
</body>
</html>