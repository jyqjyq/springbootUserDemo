<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户个人中心</title>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <link rel="stylesheet" href="/static/css/admin.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <a href="welcome.html" target="iframe">
            <div class="layui-logo">
                <h2>个人中心</h2>
            </div>
        </a>
        <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
            <li class="layui-nav-item" lay-unselect="" style="">
                <a href="javascript:;">
                    <cite>${loginUser.uNickName}，欢迎回来</cite>
                    <span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child layui-anim layui-anim-upbit">
                    <dd style="text-align: center;"><a href="/updateInfo">修改个人信息</a></dd>
                    <hr>
                    <dd layadmin-event="logout" style="text-align: center;"><a href="signout">退出登录</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <div class="layui-side">
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:;">个人信息</a>
                <dl class="layui-nav-child">
                    <dd><a href="updateInfo" target="iframe">修改个人信息</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:;">运动信息</a>
                <dl class="layui-nav-child">
                    <dd><a href="toAllSport" target="iframe">所有运动信息</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <div class="layui-body">
        <iframe src="welcome" width="100%" height="100%" frameborder="0" name="iframe" scrolling="auto" seamless></iframe>
    </div>
    <div class="layui-footer" style="text-align: center;font-size: 16px">
        <%--<p>2018年 毕业设计</p>--%>
    </div>
</div>
<script src="/static/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element'], function () {
        var element = layui.element,
            $ = layui.jquery;
    });
</script>
</body>
</html>
