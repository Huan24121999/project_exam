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

    <!-- Ionicons -->

    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="resources/template/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->


    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <!-- jQuery -->
    <script src="resources/template/js/jquery.min.js"></script>

    <script src="resources/js/ajax/ajax_main.js"></script>
    <script src="resources/js/ajax/model/ajax_file.js"></script>
</head>

<body class="sidebar-mini " style="height: auto;">

<div class="wrapper">
    <tiles:insertAttribute name="header" />
    <div class="content-wrapper">
        <tiles:insertAttribute name="body" />
    </div>
    <tiles:insertAttribute name="footer" />

</div>



<!-- Bootstrap 4 -->
<script src="resources/template/js/bootstrap.bundle.min.js"></script>

<!-- AdminLTE App -->
<script src="resources/template/js/adminlte.js"></script>


</body>
</html>