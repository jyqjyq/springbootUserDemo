<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>所有运动信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/layui/css/layui.css">
</head>
<body>
<div class="layui-fluid" style="margin-top: 40px;">
    <fieldset class="layui-elem-field layui-field-title">
        <legend style="font-size: 26px">所有运动信息</legend>
    </fieldset>
    <table id="sportList" lay-filter="sport"></table>
</div>
<script src="${pageContext.request.contextPath }/static/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element','table','util'], function () {
        var element = layui.element,
            $ = layui.jquery,
            table = layui.table,
            util = layui.util;

        var dt = table.render({
            elem:"#sportList",
            url:"/findAllSport",
            page:true,
            cols:[[
                {field: 'hID', title: '序号', align: 'center'},
                {field: 'publishTime', title: '发布时间', align: 'center', templet:function(d){return util.toDateString(d.publishTime)}},
                {field: 'publisher', title: '发布人', align: 'center'},
                {field: 'sportName', title: '运动名称', align: 'center'},
            ]],
        });
        
        table.on('tool(sport)',function(obj){
            var data = obj.data;
            var layEvent = obj.event;
            var tr = obj.tr;
            var currPage = dt.config.page.curr;
            
            if(layEvent === "view"){
            	window.open("toIndexPage");
            }
        });
    });
</script>
<script type="text/html" id="tools">
    <a class="layui-btn layui-btn-xs layui-btn-normal" lay-event="view">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="delete">删除</a>
</script>

</body>
</html>