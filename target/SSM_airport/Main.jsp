<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Main</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- css -->
    <link href="WEB-Library/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="WEB-Library/AdminLTE-2.4.2/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="WEB-Library/AdminLTE-2.4.2/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="WEB-Library/AdminLTE-2.4.2/bower_components/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="WEB-Library/AdminLTE-2.4.2/bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- js -->
    <script src="WEB-Library/AdminLTE-2.4.2/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/bower_components/jquery-ui/jquery-ui.min.js"></script>
    <script src="WEB-Library/bootstrap/js/bootstrap.min.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/bower_components/moment/min/moment.min.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/dist/js/adminlte.min.js"></script>
    <!-- 组内插件 -->
    <link rel="stylesheet" href="WEB-Library/CSS/PlugInCSS.css"/>
    <script src="WEB-Library/JS/PlugInTable.js"></script>
    <script src="WEB-Library/JS/PlugInTree.js"></script>
    <script src="WEB-Library/JS/PlugInHeader.js"></script>
    <script src="WEB-Library/JS/Main.js"></script>
    <script src="WEB-Library/AdminLTE-2.4.2/dist/js/pages/dashboard.js"></script>
</head>
<body>
    <div id="head_menu" style="height:8%;"></div><!-- navigation bar -->

    <div class="row container-fluid div-full" style="height:92%;">

        <!-- left menu begin -->
        <div class="col-md-2 div-full left-menu">

            <!-- search begin -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input name="Search" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-flat">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
            <!-- search end -->

            <ul class="sidebar-menu" data-widget="tree">

                <!-- menu-map begin -->
                <li>
                    <a href="#Tab-Map" data-toggle='tab'>
                        <i class="fa fa-globe"></i> <span>Map</span>
                    </a>
                </li>
                <!-- menu-map end -->

                <!-- menu-table begin -->
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-table"></i> <span>数据表格</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="#Tab-Table" data-toggle='tab'>
                                <i class="fa fa-circle-o"></i> 航班
                            </a>
                        </li>
                        <li>
                            <a href="#Tab-Table" data-toggle='tab'>
                                <i class="fa fa-circle-o"></i> 机场
                            </a>
                        </li>
                        <li>
                            <a href="#Tab-Table" data-toggle='tab'>
                                <i class="fa fa-circle-o"></i> 航班计划
                            </a>
                        </li>
                        <li>
                            <a href="#Tab-Table" data-toggle='tab'>
                                <i class="fa fa-circle-o"></i> 航线
                            </a>
                        </li>
                        <li>
                            <a href="#Tab-Table" data-toggle='tab'>
                                <i class="fa fa-circle-o"></i> 飞机型号
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- menu-table end -->

            </ul>
        </div>
        <!-- left menu end -->

        <!-- right tab-page begin -->
        <div class="col-md-10 tab-content div-full" style="padding:0px;">

            <!-- Tab-Map begin -->
            <div class="tab-pane fade div-full in active" id="Tab-Map">
                <%@include file="WEB-INF/Tab-Page/Tab-Map.jsp"%>
            </div>
            <!-- Tab-Map end -->

            <!-- Tab-Table begin -->
            <div class="tab-pane fade" id="Tab-Table">
                <%@include file="WEB-INF/Tab-Page/Tab-Table.jsp"%>
            </div>
            <!-- Tab-Table end -->

        </div>
        <!-- right tab-page end -->
    </div>
</body>
</html>
