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
    <%@include file="../common/aside.jsp" %>
    <!-- 主体 -->
    <div class="main">
        <div class="container-fluid">
            <!-- 头部 -->
            <%@include file="../common/header.jsp" %>
            <!-- 讲师列表 -->
            <div class="body teacher-list">
                <!-- 面包屑 -->
                <ol class="breadcrumb">
                    <li><a href="javascript:;">讲师管理</a></li>
                    <li class="active">讲师列表</li>
                </ol>
                <div class="page-title">
                    <a href="/teacher/add" class="btn btn-success btn-sm pull-right">添加讲师</a>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <form action="" class="form-inline">
                            <div class="input-group">
                                <input type="text" class="form-control input-sm">
                                <span class="input-group-btn">
                                    <button class="btn btn-success btn-sm">搜索</button>
                                </span>
                            </div>
                        </form>
                    </div>
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>编号</th>
                                <th>姓名</th>
                                <th>昵称</th>
                                <th>出生日期</th>
                                <th>性别</th>
                                <th>手机号码</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody id="teacherInfo">
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- 模态框 添加课程 -->
    <div class="modal fade" id="teacherModal">
        <div class="modal-dialog" style="width: 750px;">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="panel-title">讲师信息</h4>
                </div>
                <div class="panel-body" id="teacherModalInfo">
                    <!-- 挖个坑 -->
                </div>
            </div>
        </div>
    </div>
    <script type="text/template" id="teacherModalInfoTpl">
        <table class="table table-bordered table-condensed">
            <tbody>
                <tr>
                    <th>姓名:</th><td>{{tc_name}}</td>
                    <th>职位:</th><td colspan="3">讲师</td>
                    <td rowspan="4" width="128">
                        <div class="avatar">
                            {{if tc_avatar}}
                            <img src="{{tc_avatar}}" alt="">
                            {{else}}
                            <img src="/public/images/default.png" alt="">
                            {{/if}}
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>花名:</th><td>{{tc_roster}}</td>
                    <th>出生日期:</th><td colspan="3">{{tc_birthday}}</td>
                </tr>
                <tr>
                    <th>性别:</th><td>
                        {{if tc_gender == 1}}
                        男
                        {{else}}
                        女
                        {{/if}}
                    </td>
                    <th>入职日期:</th><td colspan="3">{{tc_join_date}}</td>
                </tr>
                <tr>
                    <th>手机号码:</th><td colspan="2">{{tc_cellphone}}</td>
                    <th>邮箱:</th><td colspan="2">{{tc_email}}</td>
                </tr>
                <tr>
                    <th>籍贯:</th><td colspan="6">{{tc_hometown}}</td>
                </tr>
                <tr>
                    <td colspan="7">
                        <div class="introduce">
                            <p>{{# tc_introduce}}</p>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </script>
    <script type="text/template" id="teacherInfoTpl">
    {{each list}}
        <tr>
            <td>{{$index + 1}}</td>
            <td>{{$value.tc_name}}</td>
            <td>{{$value.tc_roster}}</td>
            <td>{{$value.tc_birthday}}</td>
            <td>
                {{if $value.tc_gender == 1}}
                男
                {{else}}
                女
                {{/if}}
            </td>
            <td>{{$value.tc_cellphone}}</td>
            <td data-id='{{$value.tc_id}}' data-status='{{$value.tc_status}}'>
                <a href="" data-toggle="modal" class="btn btn-info btn-xs preview">查 看</a>
                <a href="/teacher/add?tc_id={{$value.tc_id}}" class="btn btn-info btn-xs">编 辑</a>
                <a href="javascript:;" class="btn btn-warning btn-xs edteacher">
                    {{if $value.tc_status == '0'}}
                    注销
                    {{else}}
                    启用
                    {{/if}}
                </a>
            </td>
        </tr>
    {{/each}}
    </script>
    <%@ include file="../common/script.html" %>
    <script type="text/javascript">
        requirejs(['tealist']);
    </script>
</body>
</html>