<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加运动信息</title>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
</head>
<body>
<div class="wrapper" style="width: 900px;margin-top: 40px">
    <fieldset class="layui-elem-field layui-field-title">
        <legend style="font-size: 26px">发布运动信息</legend>
    </fieldset>
    <form id="addSportForm" class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">运动名称</label>
            <div class="layui-input-block">
                <input type="hidden" name="publisher" value="${loginUser.uNickName }">
                <textarea name="sportName" placeholder="请输入内容" class="layui-textarea" required lay-verify="required" ></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="addSportRecord" id="addSportRecord-btn">现在发布</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<script src="/static/layui/layui.js"></script>
<script>
    layui.use(['element','form','layer','upload'],function () {
        var element = layui.element,
            form = layui.form ,
            layer = layui.layer,
            upload = layui.upload,
            $ = layui.jquery;

        form.on("submit(addSportRecord)",function(data){
        	$.post("addSportRecord",$("#addSportForm").serialize(),function(res){
        		if(res=="OK"){
        			 layer.msg("添加运动信息成功！",{icon:1,end:function(){window.location.href="addSport";}});
                     $("#addSportForm")[0].reset();
        		}
        	})
        	return false;
        });
    });
</script>
</body>
</html>