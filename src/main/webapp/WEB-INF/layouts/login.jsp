<%--
  Created by IntelliJ IDEA.
  User: NGUYEN TRONG HUAN
  Date: 18/02/2020
  Time: 2:13 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><tiles:getAsString name="title" /></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-site-verification" content="ShX41WrXAxm2tFrVpt5tP1zvzHu-9al1iRB9EM-bhrE" />
    <!-- Font Awesome -->

    <link rel="stylesheet" href="resources/template/css/all.min.css">

    <link rel="stylesheet" href="resources/css/login.css">

    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->

    <link rel="stylesheet" href="resources/template/css/icheck-bootstrap.min.css">

    <link rel="stylesheet" href="resources/template/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body>
    <tiles:insertAttribute name="body" />
</body>

<!-- jQuery -->
<script src="resources/template/js/jquery.min.js"></script>

<!-- Bootstrap 4 -->
<script src="resources/template/js/bootstrap.bundle.min.js"></script>

<!-- AdminLTE App -->
<script src="resources/template/js/adminlte.js"></script>
<script src="resources/js/ajax/modal/ajax_nguoi_dung.js"></script>
<script src="resources/js/login.js"></script>


</body>
</html>