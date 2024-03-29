<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div class="overlay">
    <img src="../../public/images/loading.gif">
</div>
<div class="aside">
    <!-- 个人资料 -->
    <div class="profile" id="loginInfoTpl">
        <!-- 头像 -->
        
    </div>
    <!-- 导航菜单 -->
    <div class="navs">
        <ul class="list-unstyled">
            <li>
                <a href="/index">
                    <i class="fa fa-home"></i>
                    仪表盘
                </a>
            </li>
            <li>
                <a href="/user/user_list">
                    <i class="fa fa-bell"></i>
                    分类管理
                </a>
            </li>
            <li>
                <a href="/teacher/list">
                    <i class="fa fa-bell"></i>
                    讲师管理
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="fa fa-cog"></i>
                    课程管理
                    <i class="arrow fa fa-angle-right"></i>
                </a>
                <ul class="list-unstyled">
                    <li>
                        <a href="/course/add">
                             课程添加
                        </a>
                    </li>
                    <li>
                        <a href="/course/list">
                            课程列表
                        </a>
                    </li>
                    <li>
                        <a href="/course/category">
                            课程分类
                        </a>
                    </li>
                    <li>
                        <a href="/course/topic">
                            课程专题
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="./advert_list.html">
                    <i class="fa fa-bell"></i>
                    广告管理
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="fa fa-cog"></i>
                    系统设置
                    <i class="arrow fa fa-angle-right"></i>
                </a>
                <ul class="list-unstyled">
                    <li>
                        <a href="javascript:;">
                            网站设置
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                             权限管理
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>