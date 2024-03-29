<!DOCTYPE html><%@ page language="java" contentType="text/html; charset=UTF-8"
                        pageEncoding="UTF-8"%><html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学IT - 后台管理系统</title>
    <%@ include file="../common/style.html" %>
    <link rel="stylesheet" type="text/css" href="/public/assets/jcrop/css/Jcrop.min.css">
</head>
<body>
    <form id="cropInfoForm" style="display: none;">
        <input type="text" name="x">
        <input type="text" name="y">
        <input type="text" name="w">
        <input type="text" name="h">
    </form>
    <!-- 侧边栏 -->
    <%@ include file="../common/aside.jsp" %>
    <!-- 主体 -->
    <div class="main">
        <div class="container-fluid">
            <!-- 头部 -->
            <%@ include file="../common/header.jsp" %>
            <div class="body course-add" id="pictureInfo">
                <!-- 挖个大坑 -->
            </div>
        </div>
    </div>
    <script type="text/template" id="pictureTpl">
        <!-- 面包屑 -->
        <ol class="breadcrumb">
            <li><a href="javascript:;">课程管理</a></li>
            <li class="active">课程添加</li>
        </ol>
        <div class="steps">
            <!-- 摘要 -->
            <div class="brief">
                <div class="thumb">
                    {{if cs_cover}}
                        <img src="{{cs_cover}}">
                    {{/if}}
                </div>
                <dl class="info">
                    <dt>{{cs_name}}</dt>
                    <dd>讲师：{{tc_name}}</dd>
                </dl>
            </div>
            <!-- 步聚 -->
            <ul class="forwards list-unstyled">
                <li>
                    <a href="/course/basic?cs_id={{cs_id}}" class="done">
                    <b class="fa fa-check"></b>
                    基本信息
                    </a>
                </li>
                <li>
                    <a href="/course/picture?cs_id={{cs_id}}" class="active">
                    <b>2</b>
                    课程图片
                    </a>
                </li>
                <li>
                    <a href="/course/lesson?cs_id={{cs_id}}">
                    <b>3</b>
                    课时管理
                    </a>
                </li>
            </ul>
            <!-- 课程图片 -->
            <div class="content">
                <!-- 标题 -->
                <div class="title">
                    <h5>课程图片 <small>COURSE PICTURE</small></h5>
                </div>
                <!-- 上传图片 -->
                <div class="picture col-xs-offset-2">
                    <div class="preview">
                        <img src="{{if cs_cover_original}}{{cs_cover_original}}{{/if}}">
                    </div>
                    <p class="tips">
                        可上传jpg, gif, png格式文件, 图片建议尺寸大于300x150，文件大小不能超过2M。
                    </p>
                    <div class="col-xs-2">
                        <input type="file" name="" id="upfile">
                    </div>
                    <div class="col-xs-2">
                        <a id="cropImg" data-flag='1' href="javascript:;" class="btn btn-warning btn-sm" >裁切图片</a>
                    </div>
                </div>
            </div>
        </div>
    </script>
    <%@ include file="../common/script.html" %>
    <script type="text/javascript">
        requirejs(['coursepicture']);
    </script>
</body>
</html>