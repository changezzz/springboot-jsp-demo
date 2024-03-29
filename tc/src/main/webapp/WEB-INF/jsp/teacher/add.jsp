<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学IT - 后台管理系统</title>
    <%@ include file="../common/style.html" %>
    <link rel="stylesheet" type="text/css" href="/public/assets/bootstrap-datepicker/css/bootstrap-datepicker.css">
</head>
<body>
    
    <!-- 侧边栏 -->
    <%@include file="../common/aside.jsp" %>
    <!-- 主体 -->
    <div class="main">
        <div class="container-fluid">
            <!-- 头部 -->
            <%@include file="../common/header.jsp" %>
            <div class="body teacher">
                <!-- 面包屑 -->
                <ol class="breadcrumb">
                    <li><a href="javascript:;">讲师管理</a></li>
                    <li class="active" id="navFlag">讲师添加</li>
                </ol>
                <div class="teacher-add" id="teacherFormInfo">
                    <!-- 挖个坑 -->
                </div>
            </div>
        </div>
    </div>
    <script type="text/template" id="teacherFormTpl">
        <form id="addTeacherForm" class="form-horizontal col-xs-offset-2">
            <div class="form-group">
                {{if tc_id}}
                <input type="hidden" name="tc_id" value="{{tc_id}}">
                {{/if}}
                <label for="" class="col-xs-3 control-label">姓名</label>
                <div class="col-xs-4">
                    <input name="tc_name" data-description='tcName' data-describedby='tcNameId' data-required='true' value="{{tc_name}}" type="text" class="form-control input-sm" placeholder="讲师名称">
                </div>
                <div class="col-xs-2" id="tcNameId"></div>
            </div>
            {{if !tc_id}}
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">密码</label>
                <div class="col-xs-4">
                    <input name="tc_pass" data-pattern='^\d{6}$' data-description='tcPass' data-describedby='tcPassId' data-required='true' type="password" class="form-control input-sm">
                </div>
                <div class="col-xs-2" id="tcPassId"></div>
            </div>
            {{/if}}
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">入职时间</label>
                <div class="col-xs-4">
                    <input name="tc_join_date" data-provide='datepicker' data-date-format='yyyy-mm-dd' data-date-language='zh-CN' data-description='tcJoinDate' data-describedby='tcJoinDateId' data-required='true' value="{{tc_join_date}}" type="text" class="form-control input-sm">
                </div>
                <div class="col-xs-2" id="tcJoinDateId"></div>
            </div>
            {{if !tc_id}}
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">类型</label>
                <div class="col-xs-2">
                    <select name="tc_type" class="form-control input-sm">
                        <option value="1" {{if tc_type == 1}} selected {{/if}}>讲师</option>
                        <option value="0" {{if tc_type == 0}} selected {{/if}}>管理员</option>
                    </select>
                </div>
            </div>
            {{/if}}
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">性别</label>
                <div class="col-xs-4">
                    <label class="radio-inline">
                        <input name="tc_gender" value="1" type="radio" {{if tc_gender == 1}} checked {{/if}}> 男
                    </label>
                    <label class="radio-inline">
                        <input name="tc_gender" value="0" type="radio" {{if tc_gender == 0}} checked {{/if}}> 女
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-7">
                    <input type="submit" id="addTeacherBtn" class="btn btn-success btn-sm pull-right" value="{{operateFlag}}">
                </div>                          
            </div>
        </form>
    </script>
    <%@ include file="../common/script.html" %>
    <script type="text/javascript">
        requirejs(['teaadd']);
    </script>
    
</body>
</html>