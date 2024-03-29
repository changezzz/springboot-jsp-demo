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
            <div class="body course-add" id="lessonInfo">
                <!-- 挖一个大坑 -->
            </div>
        </div>
    </div>
    <!-- 模态框 添加课程 -->
    <div class="modal fade" id="chapterModal">
        <div class="modal-dialog" style="width: 800px;" id="lessonModalInfo">
            <!-- 挖个坑 -->
        </div>
    </div>
    <script type="text/template" id="lessonModalTpl">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">添加课时</h4>
            </div>
            <div class="modal-body">
                <form id="lessonForm" action="" class="form-horizontal">
                    <div class="form-group">
                        <label for="" class="col-xs-2 control-label">标题</label>
                        <div class="col-xs-6">
                            <input name="ct_name" value="{{ct_name}}" type="text" class="form-control input-sm">
                        </div>
                        <div class="col-xs-2">
                            <div class="checkbox">
                                <label>
                                    <input id="freeFlag" {{if ct_is_free == 1}}checked{{/if}} type="checkbox"> 免费课时
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-xs-2 control-label">简介</label>
                        <div class="col-xs-8">
                            <textarea name="ct_brief" rows="5" class="form-control input-sm">{{ct_brief}}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-xs-2 control-label">视频</label>
                        <div class="col-xs-8">
                            <div class="input-group">
                                <input name="ct_video" value="{{ct_video}}" type="text" class="form-control input-sm" placeholder="支持优酷、土豆、腾讯、网易公开课的视频页面地址导入">
                                <span class="input-group-btn">
                                    <button class="btn btn-success btn-sm">获取</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group form-inline">
                        <label for="" class="col-xs-2 control-label">时长</label>
                        <div class="col-xs-8">
                            <input type="text" name="ct_minutes" value="{{ct_minutes}}" class="form-control input-sm small">
                            分
                            <input type="text" name="ct_seconds" value="{{ct_seconds}}" class="form-control input-sm small">
                            秒
                             <p class="help-block">时长必须为整数。</p>
                        </div>
                    </div>
                    <div class="form-group form-inline">
                        <label for="" class="col-xs-2 control-label">建议学习时长</label>
                        <div class="col-xs-8">
                            <input name="ct_recommend_duration" value="{{ct_recommend_duration}}" type="text" class="form-control input-sm small">
                            小时
                             <p class="help-block">（如未设置，则默认学习时长为视频时长3倍取整。）</p>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-link btn-sm" data-dismiss="modal">取消</button>
                <button id="lessonFormBtn" type="button" class="btn btn-success btn-sm"> 添 加 </button>
            </div>
        </div>
    </script>
    <script type="text/template" id="lessonTpl">
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
                    <a href="/course/picture?cs_id={{cs_id}}" class="done">
                    <b class="fa fa-check"></b>
                    课程图片
                    </a>
                </li>
                <li>
                    <a href="/course/lesson?cs_id={{cs_id}}" class="active">
                    <b>3</b>
                    课时管理
                    </a>
                </li>
            </ul>
            <!-- 课时管理 -->
            <div class="content">
                <!-- 标题 -->
                <div class="title">
                    <h5>课时管理 <small>LESSON MANAGE</small></h5>
                    <a src="javascript:;" id="lessonAddBtn" class="btn btn-success btn-sm pull-right">
                        <i class="fa fa-plus"></i>
                        课时
                    </a>
                </div>
                <div class="lessons">
                    <ul class="list-unstyled">
                    {{each lessons}}
                        <li>
                            <i class="fa fa-file-video-o"></i>
                            <span class="order">课时：{{$index + 1}}</span>
                            <span class="name">{{$value.ct_name}}</span>
                            <span class="duration">{{$value.ct_video_duration}}</span>
                            <!-- 操作 -->
                            <div class="action pull-right">
                                <a data-ctId="{{$value.ct_id}}" href="javascript:;" class="btn btn-info btn-xs lessonedit">编辑</a>
                                <a href="javascript:;" class="btn btn-info btn-xs ">预览</a>
                                <a href="javascript:;" class="btn btn-danger btn-xs">删除</a>
                            </div>
                        </li>
                    {{/each}}
                    </ul>
                </div>
            </div>
        </div>
    </script>
    <%@ include file="../common/script.html" %>
    <script type="text/javascript">
        requirejs(['courselesson']);
    </script>
</body>
</html>