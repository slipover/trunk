<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/31
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <title>Title</title>
    <!-- 引入BootStrap库 -->
    <link href="WEB-Library/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="WEB-Library/bootstrap/js/jquery.min.js"></script>
    <script src="WEB-Library/bootstrap/js/bootstrap.min.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="WEB-Library/JS/PlugInHeader.js"></script>
    <script src="WEB-Library/JS/PlugInTable.js"></script>
    <script src="WEB-Library/JS/PlugInTree.js"></script>

    <!--省市-->
    <link rel="stylesheet" type="text/css" href="pro_city/css/hzw-city-picker.css">
    <script type="text/javascript" src="pro_city/js/city-data.js"></script>
    <script type="text/javascript" src="pro_city/js/hzw-city-picker.min.js"></script>
</head>
<body>

<header id="header_main"></header>

        <div class="col-xs-2 .col-md-2" style="background-color: #E4E4E4;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <ul id="myTab" style="list-style: none;height: 300px;">
                <li class="active"><br/><a href="#flight" data-toggle="tab">航班查询</a><br/></li>
                <li><a href="#two" data-toggle="tab">购票</a><br/></li>
                <li><a href="#three" data-toggle="tab">退票</a><br/></li>
            </ul>
        </div>
        <div class="col-xs-10 .col-md-10" style="height: 620px;background-color: #F1F1F1">
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="flight">
                    <div  style="background-color: #A0B4DA">
                    出发地：<input type="text" id="pro"><a><img src="images/chang.png" width="20px;"/></a>
                    目的地：<input type="text" id="pro2">
                    起始时间：<input type="date" style="width:190px;height:27px;" id="datetime" >
                    到达时间：<input type="date" style="width:190px;height:27px;" value="2017-12-12">
                    <button type="button" class="btn btn-primary btn-sm" onclick="select()">重新搜索</button>
                    </div>
                    <div id="table"></div>
                   <%-- <table id="table">
                        <tbody id="tbody"></tbody>
                    </table>--%>
                </div>
                <div class="tab-pane fade" id="two">
                    <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple
                        TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
                </div>
                <div class="tab-pane fade" id="three">
                    <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple
                        TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
                </div>
            </div>
        </div>
<script>
    function select(){
//        var datetime=$("#datetime").val();
        alert(pro+pro2+"qqq");
        $. post(
            'Flight/selectQuery.action',
            {"pro":pro,"pro2":pro2,"datetime":''},
            function(data){
                var flight=JSON.parse(data);
                 var str="";
                 $.each(flight,function(i,s){
                     str+="<table width='1250px'><tr style='height: 100px;background-color: #fff'><td>"+s.flightScheduler.aircraft.air_num+"</td><td><div>"+s.flightScheduler.flight_departure+"<br/>"+s.flightScheduler.airline.airport_from.ap_area+"</div></td><td><div>"+s.flightScheduler.flight_arrival+"<br/>"+s.flightScheduler.airline.airport_to.ap_area+"</div></td><td>"+s.flightScheduler.flight_fullPrice+"</td></tr></table>";
                 });
                 $('#table').html(str);
            }
        );
    }
    $(function () {
        var pro="";
        var pro2="";
        $.PlugInHeader({
            target:"#header_main",
            title:"机票",
            leftMenu:[
                {
                    title:"快捷菜单1",
                    child:["Home","SVN","iOS","SVN","VB.Net","Java"]
                },{
                    title:"快捷菜单2",
                    child:["Home","SVN","iOS","SVN","VB.Net","Java"]
                }
            ],rightMenu:[
                {
                    ico:"user",
                    title:"我的帐号"
                },{
                    ico:"log-out",
                    title:"退出"
                }
            ],onClick:function(title){

            }
        });

    });
    var cityPicker = new HzwCityPicker({
        data: data,
        target: 'pro',
        valType: 'k-v',
        hideCityInput: {
            name: 'city',
            id: 'city'
        },
        hideProvinceInput: {
            name: 'province',
            id: 'province'
        },
        callback: function(){
            pro=$("#pro").val();
        }
    });
    cityPicker.init();
    var cityPicker = new HzwCityPicker({
        data: data,
        target: 'pro2',
        valType: 'k-v',
        hideCityInput: {
            name: 'city',
            id: 'city'
        },
        hideProvinceInput: {
            name: 'province',
            id: 'province'
        },
        callback: function(){
            pro2=$("#pro2").val();
        }
    });
    cityPicker.init();
</script>
</body>
</html>
