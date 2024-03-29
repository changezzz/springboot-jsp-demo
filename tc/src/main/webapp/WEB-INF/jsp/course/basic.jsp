<!DOCTYPE html>
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
            <div class="body course-add" id="courseBasicInfo">
                <!-- 挖个坑 -->
            </div>
        </div>
    </div>
    <script type="text/template" id="courseBasicTpl">
        <!-- 面包屑 -->
        <ol class="breadcrumb">
            <li><a href="javascript:;">课程管理</a></li>
            <li class="active">{{operateText}}</li>
        </ol>
        <div class="steps">
            <!-- 摘要 -->
            <div class="brief">
                <div class="thumb">
                    {{if cs_cover}}
                    <img src="{{cs_cover}}" alt="">
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
                    <a href="/course/basic?cs_id={{cs_id}}" class="active">
                    <b>1</b>
                    基本信息
                    </a>
                </li>
                <li>
                    <a href="/course/picture?cs_id={{cs_id}}">
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
            <!-- 基本信息 -->
            <div class="content">
                <!-- 标题 -->
                <div class="title">
                    <h5>基本信息 <small>BASIC INFORMATION</small></h5>
                </div>
                <form id="basicForm" class="basic form-horizontal">
                    <div class="form-group">
                        <label for="" class="col-xs-2 control-label">标题</label>
                        <div class="col-xs-8">
                            <input name="cs_name" type="text" class="form-control input-sm" value="{{cs_name}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-xs-2 control-label">课程描述</label>
                        <div class="col-xs-8 ckeditor">
                            <textarea id="editor" name="cs_brief" rows="15" class="form-control input-sm">{{cs_brief}}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-xs-2 control-label">讲师</label>
                        <div class="col-xs-8">
                            <select name="cs_tc_id" class="form-control input-sm">
                                {{each teacher}}
                                    <option {{if cs_tc_id == $value.tc_id}}selected{{/if}} value="{{$value.tc_id}}">{{$value.tc_name}}</option>
                                {{/each}}
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-xs-2 control-label">分类</label>
                        <div class="col-xs-8">
                            <select id="firstCategory" class="form-control input-sm">
                                {{each category.top}}
                                    <option {{if cs_cg_pid == $value.cg_id}}selected{{/if}} value="{{$value.cg_id}}">{{$value.cg_name}}</option>
                                {{/each}}
                            </select>
                            <select id="secondCategory" name="cs_cg_id" class="form-control input-sm">
                                {{each category.childs}}
                                    <option {{if cs_cg_id == $value.cg_id}}selected{{/if}} value="{{$value.cg_id}}">{{$value.cg_name}}</option>
                                {{/each}}
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-xs-2 control-label">标签</label>
                        <div class="col-xs-8">
                            <input name="cs_tags" value="{{cs_tags}}" type="text" class="form-control input-sm">
                            <p class="help-block">将会应用于按标签搜索课程、相关课程的提取等</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-10">
                            <input type="submit" class="btn btn-success btn-sm pull-right" value="保 存">
                        </div>                          
                    </div>
                </form>
            </div>
        </div>
    </script>
    <%@ include file="../common/script.html" %>
    <script type="text/javascript">
        requirejs(['coursebasic']);
    </script>
</body>
</html>