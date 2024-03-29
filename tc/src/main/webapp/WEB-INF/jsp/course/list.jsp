<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学IT - 后台管理系统</title>
    <%@ include file="../common/style.html" %>
</head>
<body>
    <!-- 侧边栏 -->
    <%@ include file="../common/aside.jsp" %>
    <!-- 主体 -->
    <div class="main">
        <div class="container-fluid">
            <!-- 头部 -->
            <%@ include file="../common/header.jsp" %>
            <!-- 客户列表 -->
            <div class="body course-list">
                <!-- 面包屑 -->
                <ol class="breadcrumb">
                    <li><a href="javascript:;">课程管理</a></li>
                    <li class="active">课程列表</li>
                </ol>
                <div class="courses">
                    <!-- 搜索 -->
                    <div class="search">
                        <form action="" class="form-inline">
                            <select name="" class="form-control input-sm">
                                <option value="">按年龄</option>
                            </select>
                            <select name="" class="form-control input-sm">
                                <option value="">按性别</option>
                            </select>
                            <select name="" class="form-control input-sm">
                                <option value="">按地区</option>
                            </select>
                            <select name="" class="form-control input-sm">
                                <option value="">按日期</option>
                            </select>
                            <button class="btn btn-success btn-sm">筛选</button>
                            <div class="input-group pull-right">
                                <input type="text" class="form-control input-sm">
                                <span class="input-group-btn">
                                    <button class="btn btn-success btn-sm">搜索</button>
                                </span>
                            </div>
                        </form>
                    </div>
                    <div id="courseInfo">
                        <!-- 挖个坑 -->
                    </div>
                </div>
                <!-- 分页 -->
                <ul class="pagination pull-right">
                    <li><a href="#">上一页</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">下一页</a></li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/template" id="courseTpl">
    {{each list}}
    <div class="course">
        <div class="pic">
            {{if $value.cs_cover}}
            <img src="{{$value.cs_cover}}">
            {{else}}
            <img src="/uploads/course.png">
            {{/if}}
        </div>
        <div class="info">
            <a href="/course/basic?flag=1&cs_id={{$value.cs_id}}">{{$value.cs_name}}</a>
            <ul class="list-unstyled">
                <li>
                    <span>讲师：{{$value.tc_name}}</span>
                    <span>类别：{{$value.cg_name}}</span>
                </li>
            </ul>
        </div>
    </div>
    {{/each}}
    </script>
    <%@ include file="../common/script.html" %>
    <script type="text/javascript">
        requirejs(['courselist']);
    </script>
</body>
</html>