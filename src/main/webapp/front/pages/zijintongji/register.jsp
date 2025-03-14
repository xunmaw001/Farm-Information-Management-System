<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">

		<div class="login-bg" style="background-image: url(../../img/banner.jpg);"></div>

		<div class="login-container">
			<!-- 标题 -->
			<h2 class="index-title" style="width: 480px;">USER / REGISTER</h2>
			<div class="line-container">
				<p class="line"> 资金统计注册 </p>
			</div>
			<!-- 标题 -->
			<form class="layui-form login-form">
				
                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">年份：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="nianfen" name="nianfen" placeholder="请输入年份" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">商品收入：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="shangpinshouru" name="shangpinshouru" placeholder="请输入商品收入" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">收入事项：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="shourushixiang" name="shourushixiang" placeholder="请输入收入事项" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">收入金额：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="shourujine" name="shourujine" placeholder="请输入收入金额" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">化肥支出：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="huafeizhichu" name="huafeizhichu" placeholder="请输入化肥支出" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">农药支出：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="nongyaozhichu" name="nongyaozhichu" placeholder="请输入农药支出" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">农具维护：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="nongjuweihu" name="nongjuweihu" placeholder="请输入农具维护" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">农机维护：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="nongjiweihu" name="nongjiweihu" placeholder="请输入农机维护" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">传感器维护：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="chuanganqiweihu" name="chuanganqiweihu" placeholder="请输入传感器维护" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">支出事项：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="zhichushixiang" name="zhichushixiang" placeholder="请输入支出事项" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">支出金额：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="zhichujine" name="zhichujine" placeholder="请输入支出金额" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                                                                                                
				<div class="layui-form-item">
					<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
						<button class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			<div class="bottom-container">
				<a href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;

				var tablename = http.getParam('tablename');
								
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    					                                                                                                                                            					                                                                                                                                            					                                        if(!isIntNumer(data.shangpinshouru)){
                        layer.msg('商品收入应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                                                                                                            					                                        if(!isIntNumer(data.shourujine)){
                        layer.msg('收入金额应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                        if(!isIntNumer(data.huafeizhichu)){
                        layer.msg('化肥支出应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                        if(!isIntNumer(data.nongyaozhichu)){
                        layer.msg('农药支出应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                        if(!isIntNumer(data.nongjuweihu)){
                        layer.msg('农具维护应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                        if(!isIntNumer(data.nongjiweihu)){
                        layer.msg('农机维护应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                        if(!isIntNumer(data.chuanganqiweihu)){
                        layer.msg('传感器维护应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                                                                                                            					                                        if(!isIntNumer(data.zhichujine)){
                        layer.msg('支出金额应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                                                http.requestJson(tablename + '/register', 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
