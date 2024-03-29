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
            <div class="body advert">
                <!-- 面包屑 -->
                <ol class="breadcrumb">
                    <li><a href="javascript:;">广告管理</a></li>
                    <li class="active">添加广告</li>
                </ol>
                <div class="advert-add">
                    <form action="" class="form-horizontal">
                        <div class="form-group">
                            <label for="" class="col-xs-3 control-label">名称</label>
                            <div class="col-xs-5">
                                <input type="text" class="form-control input-sm" placeholder="填写广告名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-xs-3 control-label">类型</label>
                            <div class="col-xs-2">
                                <select name="" class="form-control input-sm">
                                    <option value="">顶级分类</option>
                                    <option value="">前端开发</option>
                                    <option value="">后端开发</option>
                                    <option value="">数据库</option>
                                    <option value="">云计算&大数据</option>
                                    <option value="">视觉设计</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-xs-3 control-label">广告链接</label>
                            <div class="col-xs-5">
                                <input type="text" class="form-control input-sm" placeholder="填写广告链接">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-xs-3 control-label">排序</label>
                            <div class="col-xs-1">
                                <input type="text" class="form-control input-sm" value="10">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-xs-3 control-label">是否开启</label>
                            <div class="col-xs-5">
                                <label class="checkbox-inline">
                                    <input type="checkbox" checked> 是
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox"> 否
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-8">
                                <a href="advert_list.jsp" class="btn btn-success btn-sm pull-right">保存</a>
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