<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学IT - 后台管理系统</title>
    <%@ include file="common/style.html" %>
    <link rel="stylesheet" type="text/css" href="/public/assets/bootstrap-datepicker/css/bootstrap-datepicker.css">
</head>
<body>
    
    <!-- 侧边栏 -->
    <%@ include file="common/aside.jsp" %>
    <!-- 主体 -->
    <div class="main">
        <div class="container-fluid">
            <!-- 头部 -->
            <%@ include file="common/header.jsp" %>
            <!-- 讲师资料 -->
            <div class="body teacher-profile">
                <div class="settings" id="settingsInfo">
                    <!-- 挖个坑 -->
                </div>
            </div>
        </div>
    </div>
    <script type="text/template" id="settingsTpl">
        <form id="settingsForm" class="form-horizontal">
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">姓名</label>
                <div class="col-xs-5">
                    <input type="hidden" name="tc_id" value="{{tc_id}}">
                    <p class="form-control-static">{{tc_name}}</p>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">头像</label>
                <div class="col-xs-2 preview">
                    {{if tc_avatar}}
                        <img src="{{tc_avatar}}">
                    {{else}}
                        <img src="/public/images/default.png">
                    {{/if}}
                    <input type="file" id="upfile">
                    <div class="cover">
                        <i class="fa fa-upload"></i>                  
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">昵称</label>
                <div class="col-xs-5">
                    <input name="tc_roster" value="{{tc_roster}}" type="text" class="form-control input-sm">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">性别</label>
                <div class="col-xs-3">
                    <label class="radio-inline">
                        <input name="tc_gender" value="1" type="radio" {{if tc_gender == 1}}checked{{/if}}> 男
                    </label>
                    <label class="radio-inline">
                        <input name="tc_gender" value="0" type="radio" {{if tc_gender == 0}}checked{{/if}}> 女
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">出生日期</label>
                <div class="col-xs-5">
                    <input name="tc_birthday" data-provide='datepicker' data-date-format='yyyy-mm-dd' data-date-language='zh-CN' value="{{tc_birthday}}" type="text" class="form-control input-sm">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">籍贯</label>
                <div class="col-xs-5" id="hometown">
                    <select id="p" data-id='{{tc_province}}' name="tc_province" class="form-control input-sm">
                        <option value="0">请选择省</option>
                    </select>
                    <select id="c" data-id='{{tc_city}}' name="tc_city" class="form-control input-sm">
                        <option value="0">请选择市</option>
                    </select>
                    <select id="d" data-id='{{tc_district}}' name="tc_district" class="form-control input-sm">
                        <option value="0">请选择区/县</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">手机号码</label>
                <div class="col-xs-5">
                    <input type="text" name="tc_cellphone" value="{{tc_cellphone}}" class="form-control input-sm">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">电子邮箱</label>
                <div class="col-xs-5">
                    <input type="text" name="tc_email" value="{{tc_email}}" class="form-control input-sm">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">入职日期</label>
                <div class="col-xs-5">
                    <input type="text" name="tc_join_date" value="{{tc_join_date}}" class="form-control input-sm">
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-xs-3 control-label">个人介绍</label>
                <div class="col-xs-5 ckeditor">
                    <textarea id="editor" name="tc_introduce" rows="15" class="form-control input-sm">
                        {{tc_introduce}}
                    </textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-8">
                    <input type="submit" class="btn btn-success btn-sm pull-right" value="保 存">
                    <a href="./repass.html" class="btn btn-link btn-sm pull-right">更改密码？</a>
                </div>
            </div>
        </form>
    </script>
    <%@ include file="common/script.html" %>
    <script type="text/javascript">
        requirejs(['settings']);
    </script>
</body>
</html>