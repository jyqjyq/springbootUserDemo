<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改运动信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/layui/css/layui.css">
</head>
<body>
<div class="wrapper" style="width: 900px;margin-top: 40px">
    <fieldset class="layui-elem-field layui-field-title">
        <legend style="font-size: 26px">修改运动信息</legend>
    </fieldset>
    <form id="updateSport" class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">运动名称</label>
            <div class="layui-input-block">
            	<input type="hidden" value="${sport.hID}" name="hID">
                <textarea name="sportName" placeholder="请输入内容" class="layui-textarea" required lay-verify="required" >${sport.sportName }</textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="updateSport" id="updateSport-btn">立即修改</button>
            </div>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath }/static/layui/layui.js"></script>
<script>
    layui.use(['element','form','layer'],function () {
        var element = layui.element,
            form = layui.form ,
            layer = layui.layer,
            $ = layui.jquery;
        
        form.on("submit(updateSport)",function(){
        	$.post("updateSport",$("#updateSport").serialize(),function(res){
               $("#updateSport")[0].reset();
        		if(res=="OK"){
        			 layer.msg("修改成功！",{time:1000,end:function(){window.history.back(-1);}});
        		}
        	})
        	return false;
        })
    });
</script>
</body>
</html>
