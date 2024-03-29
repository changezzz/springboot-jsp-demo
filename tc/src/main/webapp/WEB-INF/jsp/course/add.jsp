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
            <div class="body course-add">
                <!-- 面包屑 -->
                <ol class="breadcrumb">
                    <li><a href="javascript:;">课程管理</a></li>
                    <li class="active">课程添加</li>
                </ol>
                <div class="steps create">
                    <div class="title">
                        <h5>创建课程 <small>CREATE A COURSE</small></h5>
                    </div>
                    <form id="courseAddForm" class="form-horizontal col-xs-7">
                        <div class="form-group">
                            <label for="" class="col-xs-2 control-label">课程标题</label>
                            <div class="col-xs-9">
                                <input name="cs_name" type="text" class="form-control input-sm" placeholder="请填写课程标题">
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <input type="submit" class="btn btn-success btn-sm pull-right" value="创建课程">
                        </div>
                    </form>
                    <div class="extra col-xs-3">
                        <h5>从视频专辑导入课程</h5>
                        <p>已支持优酷、腾讯视频、网易公开课、爱奇艺教育的视频专辑导入。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../common/script.html" %>
    <script type="text/javascript">
        requirejs(['courseadd']);
    </script>
</body>
</html>