<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 引入BootStrap库 -->
    <link href="WEB-Library/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="WEB-Library/bootstrap/js/jquery.min.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="WEB-Library/bootstrap/js/bootstrap.min.js"></script>
    <!-- 组内插件 -->
    <script src="WEB-Library/JS/PlugInHeader.js"></script>
    <script>
        $(function(){
            $.PlugInHeader({
                target:"#header_login",
                ico:"/images/ico.png",
                title:"机场后台"
            });
        });
    </script>
</head>
<body>
    <header id="header_login"></header>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <img src="images/loginBack.png"/>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default" align="center">
                    <div class="panel-heading">
                        登录
                    </div>
                    <div class="panel-body"><br/><br/><br/>
                        <form action="Main.jsp" method="post">
                            <p><input class="form-control" type="text" placeholder="&emsp;请输入您的帐号"/></p><br/><br/>
                            <p><input class="form-control" type="text" placeholder="&emsp;请输入您的密码"/></p><br/><br/>
                            <p>
                                <button class="btn btn-success">
                                    <b>&emsp;&emsp;登&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;录&emsp;&emsp;</b>
                                </button>
                            </p><br/><br/><br/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
