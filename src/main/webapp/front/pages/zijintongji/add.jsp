<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">


		<div id="app">

			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<div class="data-add-container">

				<form class="layui-form layui-form-pane" lay-filter="myForm">
					
                                                            <div class="layui-form-item" pane>
						<label class="layui-form-label">年份：</label>
						<div class="layui-input-block">
							<input v-model="detail.nianfen" type="text" name="nianfen" id="nianfen" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">月份</label>
                        <div class="layui-input-block">
                            <select name="yuefen" id="yuefen" lay-filter="yuefen">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in yuefen" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">商品收入：</label>
						<div class="layui-input-block">
							<input v-model="detail.shangpinshouru" type="text" name="shangpinshouru" id="shangpinshouru" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">收入事项：</label>
						<div class="layui-input-block">
							<input v-model="detail.shourushixiang" type="text" name="shourushixiang" id="shourushixiang" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">收入金额：</label>
						<div class="layui-input-block">
							<input v-model="detail.shourujine" type="text" name="shourujine" id="shourujine" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">化肥支出：</label>
						<div class="layui-input-block">
							<input v-model="detail.huafeizhichu" type="text" name="huafeizhichu" id="huafeizhichu" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">农药支出：</label>
						<div class="layui-input-block">
							<input v-model="detail.nongyaozhichu" type="text" name="nongyaozhichu" id="nongyaozhichu" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">农具维护：</label>
						<div class="layui-input-block">
							<input v-model="detail.nongjuweihu" type="text" name="nongjuweihu" id="nongjuweihu" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">农机维护：</label>
						<div class="layui-input-block">
							<input v-model="detail.nongjiweihu" type="text" name="nongjiweihu" id="nongjiweihu" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">传感器维护：</label>
						<div class="layui-input-block">
							<input v-model="detail.chuanganqiweihu" type="text" name="chuanganqiweihu" id="chuanganqiweihu" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">支出事项：</label>
						<div class="layui-input-block">
							<input v-model="detail.zhichushixiang" type="text" name="zhichushixiang" id="zhichushixiang" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">支出金额：</label>
						<div class="layui-input-block">
							<input v-model="detail.zhichujine" type="text" name="zhichujine" id="zhichujine" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">结余金额：</label>
						<div class="layui-input-block">
							<input v-model="jieyujine"  type="text" name="jieyujine" id="jieyujine" disabled="disabled"  autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">结余状态</label>
                        <div class="layui-input-block">
                            <select name="jieyuzhuangtai" id="jieyuzhuangtai" lay-filter="jieyuzhuangtai">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in jieyuzhuangtai" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">登记日期：</label>
						<div class="layui-input-block">
							<input type="text" name="dengjiriqi" id="dengjiriqi" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
					<div class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
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
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					dataList: [],
                    detail: {
                                                                        nianfen: '',
                                                                                                yuefen: '',
                                                                                                shangpinshouru: '',
                                                                                                shourushixiang: '',
                                                                                                shourujine: '',
                                                                                                huafeizhichu: '',
                                                                                                nongyaozhichu: '',
                                                                                                nongjuweihu: '',
                                                                                                nongjiweihu: '',
                                                                                                chuanganqiweihu: '',
                                                                                                zhichushixiang: '',
                                                                                                zhichujine: '',
                                                                                                jieyujine: '',
                                                                                                jieyuzhuangtai: '',
                                                                                                dengjiriqi: '',
                                                                    },
                    																				yuefen: [],
																																																																																																																																		jieyuzhuangtai: [],
																									centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                jieyujine: {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            get: function () {
                        return 0+parseFloat(this.detail.shangpinshouru)+parseFloat(this.detail.shourujine)-this.detail.huafeizhichu-this.detail.nongyaozhichu-this.detail.nongjuweihu-this.detail.nongjiweihu-this.detail.chuanganqiweihu-this.detail.zhichujine || ''
                    }
                    },
                                                                                                                                                                                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			
			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
                var tinymce = layui.tinymce

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: "none"
						});
					}
				});

                																vue.yuefen = '一月份,二月份,三月份,四月份,五月份,六月份,七月份,八月份,九月份,十月份,十一月份,十二月份'.split(',')
																																																																																																								vue.jieyuzhuangtai = '盈利,亏损'.split(',')
																laydate.render({
					elem: '#dengjiriqi',
					type: 'datetime'
				});
                								
                
                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var key in obj){
						vue.detail[`${key}`] = obj[`${key}`]
					}
				}
				
                																																																																																																																								
				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
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
                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                            
					// 跨表计算
					                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        					
                    // 比较大小
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        					
					// 提交数据
					http.requestJson('zijintongji' + '/add', 'post', data, function(res) {
					 	layer.msg('提交成功', {
					 		time: 2000,
					 		icon: 6
					 	}, function() {
					 		back();
						});
					 });

					return false
				});

			});
		</script>
	</body>
</html>
