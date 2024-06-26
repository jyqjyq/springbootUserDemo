<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/static/layui/css/layui.css"/>
    <title>健康管理系统</title>
    <link rel="stylesheet" href="/static/css/global.css">
    <script src="/static/layui/layui.js"></script>
</head>
<body>
<div id="bg-item">
    <div class="layui-header title">
        <div class="layui-container">
            <c:if test="${not empty loginUser }">
	            <div class="personalCenter layui-pull-right"><a href="toUserSystem" target="_blank" style="color:#fff"><i class="layui-icon layui-icon-tree"></i>个人中心</a></div>
            </c:if>
            <c:if test="${empty loginUser }">
                <div class="operation layui-pull-right"><i class="layui-icon layui-icon-tree"></i>您好</div>
            </c:if>
        </div>
    </div>
</div>

<div class="layui-container">
    <div class="layui-tab layui-tab-brief" id="sign" lay-filter="" >
        <ul class="layui-tab-title">
            <li class="layui-this">登录</li>
            <li>注册</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <div class="" style="margin: 40px 20px;">
                    <form class="layui-form layui-form-pane" id="login">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-block">
                                <input type="text" name="username" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <br>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="password" name="password" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <br>
                        <div class="layui-form-item">
                            <button class="layui-btn layui-btn-fluid layui-btn-normal layui-btn-radius" lay-submit lay-filter="login">立即登录</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="" style="margin: 30px 20px;">
                    <form class="layui-form layui-form-pane form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-block">
                                <input type="text" name="uName" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="text" name="uPassword" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">手机号</label>
                            <div class="layui-input-block">
                                <input type="text" name="uPhoneNumber" required  lay-verify="required" placeholder="注册后不能修改" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">昵称</label>
                            <div class="layui-input-block">
                                <input type="text" name="uNickName" required  lay-verify="required" placeholder="注册后不能修改" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </form>
                    <div class="layui-form-item">
                        <input type="submit" class="layui-btn layui-btn-fluid layui-btn-radius layui-btn-normal regist-btn" value="立即注册" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    layui.use(['element', 'carousel','layer','form'], function () {
        var element = layui.element,
            carousel = layui.carousel,
            $ = layui.jquery,
            layer = layui.layer,
            form = layui.form;
        
        var layer_index;
        carousel.render({
            elem:"#bg-item",
            width:"100%",
            height:"600px",
            anim:"fade"
        });
        $('.operation').click(function () {
        	layer_index = layer.open({
                type:1,
                content:$('#sign'),
                area:['360px','460px'],
                title:"运动租赁",
                closeBtn:2
            });
        });
        $('.list-item li').click(function () {
            $('.list-item li').removeClass('click-this');
            $(this).addClass('click-this');
        });
        
        $('.regist-btn').click(function () {
        	if($("input[name='uName']").val()!=""&&$("input[name='uPassword']").val()!=""&&$("input[name='uPhoneNumber']").val()!=""&&$("input[name='uNickName']").val()!=""){
	            $.post("regist",$('.form').serialize(),function (res) {
	            	console.log(res)
	                if(res=='OK'){
	                	layer.close(layer_index);
	                    layer.alert("注册成功",{icon:1,time:2000});
	                    $('.form')[0].reset();
	                }else{
	                    layer.msg("注册失败,用户名以存在");
	                }
	            })
        	}else{
        		layer.msg("请填写所有表单");
        	}
        });
        
       form.on("submit(login)",function(){
    	   $.post("login",$('#login').serialize(),function (res) {
    	   		if(res=="OK"){
                    $("#sign").hide();
    	   			// window.location.href="toIndexPage";
    	   			window.location.href="toUserSystem";
    	   		}else{
    	   			layer.msg("用户名或者密码错误");
    	   		}
    	   });
    	  return false; 
       });
    });
</script>
</body>
</html>
