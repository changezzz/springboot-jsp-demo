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
            <!-- 客户信息 -->
            <div class="body user-profile">
                <!-- 面包屑 -->
                <ol class="breadcrumb">
                    <li><a href="javascript:;">用户管理</a></li>
                    <li class="active">用户信息</li>
                </ol>
                <div class="profile">
                    <div class="pull-left">
                        <img src="./uploads/default.jpg" class="img-circle pull-left" alt="">
                        <span class="name">令狐冲</span>
                        <span>一见尼姑，逢赌必输！</span>
                    </div>
                    <ul class="pull-right list-inline">
                        <li>
                            <span>积分</span>
                            <a href="javascript:;">20</a>
                        </li>
                        <li>
                            <span>等级</span>
                            <a href="javascript:;">1</a>
                        </li>
                        <li>
                            <span>金币</span>
                            <a href="javascript:;">10</a>
                        </li>
                    </ul>                   
                </div>
                <div class="courses">
                    <ul class="navs list-unstyled">
                        <li>
                            <a href="javascript:;" class="active">全部</a>
                        </li>
                        <li>
                            <a href="javascript:;">在学</a>
                        </li>
                        <li>
                            <a href="javascript:;">完成</a>
                        </li>
                    </ul>
                    <div class="course">
                        <div class="pic">
                            <img src="./uploads/course_1.jpg" alt="">
                            <span class="percent">100%</span>
                        </div>
                        <div class="info">
                            <a href="javascript:;">html,div+css视频教程(2014最新,带多个企业级项目实战)</a>
                            <p>2016-10-26学习至 <span>L1 第一章 学前准备</span></p>   
                        </div>
                    </div>
                    <div class="course">
                        <div class="pic">
                            <img src="./uploads/course_2.jpg" alt="">
                            <span class="percent">100%</span>
                        </div>
                        <div class="info">
                            <a href="javascript:;">JavaScript 基础</a>
                            <p>2016-10-27学习至 <span>L1 张孝祥－JavaScript01-01</span></p>    
                        </div>
                    </div>
                    <div class="course">
                        <div class="pic">
                            <img src="./uploads/course_3.jpg" alt="">
                            <span class="percent">100%</span>
                        </div>
                        <div class="info">
                            <a href="javascript:;">App开发从0到1</a>
                            <p>2016-10-27学习至 <span>L1 第一节   欢迎来到APICloud的世界（一）</span></p>   
                        </div>
                    </div>
                    <div class="course">
                        <div class="pic">
                            <img src="./uploads/course_4.jpg" alt="">
                            <span class="percent">100%</span>
                        </div>
                        <div class="info">
                            <a href="javascript:;">Java 从入门到精通</a>
                            <p>2016-10-27学习至 <span>L1 hello world</span></p>    
                        </div>
                    </div>
                    <div class="course">
                        <div class="pic">
                            <img src="./uploads/course_1.jpg" alt="">
                            <span class="percent">100%</span>
                        </div>
                        <div class="info">
                            <a href="javascript:;">html,div+css视频教程(2014最新,带多个企业级项目实战)</a>
                            <p>2016-10-26学习至 <span>L1 第一章 学前准备</span></p>   
                        </div>
                    </div>
                    <div class="course">
                        <div class="pic">
                            <img src="./uploads/course_2.jpg" alt="">
                            <span class="percent">100%</span>
                        </div>
                        <div class="info">
                            <a href="javascript:;">JavaScript 基础</a>
                            <p>2016-10-27学习至 <span>L1 张孝祥－JavaScript01-01</span></p>    
                        </div>
                    </div>
                    <div class="course">
                        <div class="pic">
                            <img src="./uploads/course_3.jpg" alt="">
                            <span class="percent">100%</span>
                        </div>
                        <div class="info">
                            <a href="javascript:;">App开发从0到1</a>
                            <p>2016-10-27学习至 <span>L1 第一节   欢迎来到APICloud的世界（一）</span></p>   
                        </div>
                    </div>
                    <div class="course">
                        <div class="pic">
                            <img src="./uploads/course_4.jpg" alt="">
                            <span class="percent">100%</span>
                        </div>
                        <div class="info">
                            <a href="javascript:;">Java 从入门到精通</a>
                            <p>2016-10-27学习至 <span>L1 hello world</span></p>    
                        </div>
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

    <script src="/public/assets/jquery/jquery.min.js"></script>
    <script src="/public/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="/public/assets/nprogress/nprogress.js"></script>
    <%@include file="../common/script.html" %>
</body>
</html>