<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学IT - 后台管理系统</title>
    <%@include file="../common/style.html" %>
</head>
<body>
    
    <!-- 侧边栏 -->
    <%@include file="../common/aside.jsp" %>
    <!-- 主体 -->
    <div class="main">
        <div class="container-fluid">
            <!-- 头部 -->
            <%@include file="../common/header.jsp" %>
            <!-- 修改密码 -->
            <div class="body">
                <div class="repass">
                    <form action="" class="form-horizontal col-xs-offset-2">
                        <div class="form-group">
                            <label for="" class="col-xs-3 control-label">原密码</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-xs-3 control-label">新密码</label>
                            <div class="col-xs-4">
                                <input type="password" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-xs-3 control-label">确认密码</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-7">
                                <input type="submit" class="btn btn-success btn-sm pull-right" value=" 修 改 ">
                            </div>                          
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="/public/assets/jquery/jquery.min.js"></script>
    <script src="/public/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="/public/assets/nprogress/nprogress.js"></script>
    <%@include file="../common/script.html" %>
</body>
</html>