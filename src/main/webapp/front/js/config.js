
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的订单',
	url: '../order/list.jsp'
},

{
	name: '我的地址',
	url: '../address/list.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '商品信息',
	url: './pages/shangpinxinxi/list.jsp'
}, 

{
	name: '新闻资讯',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspnxRul/index.jsp";

var cartFlag = false

var chatFlag = false


cartFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户列表","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"员工列表","menuJump":"列表","tableName":"yuangong"}],"menu":"员工管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"技术专家列表","menuJump":"列表","tableName":"jishuzhuanjia"}],"menu":"技术专家管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"部门信息列表","menuJump":"列表","tableName":"bumenxinxi"}],"menu":"部门信息管理"},{"child":[{"buttons":["新增","查看","修改","删除","报表"],"menu":"资金统计列表","menuJump":"列表","tableName":"zijintongji"}],"menu":"资金统计管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"农资信息列表","menuJump":"列表","tableName":"nongzixinxi"}],"menu":"农资信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"商品分类列表","menuJump":"列表","tableName":"shangpinfenlei"}],"menu":"商品分类管理"},{"child":[{"buttons":["新增","查看","修改","删除","入库","出库"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"入库记录列表","menuJump":"列表","tableName":"rukujilu"}],"menu":"入库记录管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"出库记录列表","menuJump":"列表","tableName":"chukujilu"}],"menu":"出库记录管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"销售统计列表","menuJump":"列表","tableName":"xiaoshoutongji"}],"menu":"销售统计管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"系统公告列表","menuJump":"列表","tableName":"xitonggonggao"}],"menu":"系统公告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"农作物产品列表","menuJump":"列表","tableName":"nongzuowuchanpin"}],"menu":"农作物产品管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"农事记录列表","menuJump":"列表","tableName":"nongshijilu"}],"menu":"农事记录管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"传感器列表","menuJump":"列表","tableName":"chuanganqi"}],"menu":"传感器管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯列表","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"未支付订单","tableName":"weizhifudingdan"},{"buttons":["新增","查看","修改","删除"],"menu":"已支付订单","tableName":"yizhifudingdan"},{"buttons":["新增","查看","修改","删除"],"menu":"已完成订单","tableName":"yiwanchengdingdan"},{"buttons":["新增","查看","修改","删除"],"menu":"已取消订单","tableName":"yiquxiaodingdan"},{"buttons":["新增","查看","修改","删除"],"menu":"已退款订单","tableName":"yituikuandingdan"},{"buttons":["新增","查看","修改","删除"],"menu":"已发货订单","tableName":"yifahuodingdan"}],"menu":"订单管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员管理","tableName":"users"}],"menu":"管理员管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"未支付订单","tableName":"weizhifudingdan"},{"buttons":["查看"],"menu":"已支付订单","tableName":"yizhifudingdan"},{"buttons":["查看"],"menu":"已完成订单","tableName":"yiwanchengdingdan"},{"buttons":["查看"],"menu":"已取消订单","tableName":"yiquxiaodingdan"},{"buttons":["查看"],"menu":"已退款订单","tableName":"yituikuandingdan"},{"buttons":["查看"],"menu":"已发货订单","tableName":"yifahuodingdan"}],"menu":"订单管理"},{"child":[{"buttons":["查看","删除"],"menu":"收藏列表","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"}],"roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"农作物产品列表","menuJump":"列表","tableName":"nongzuowuchanpin"}],"menu":"农作物产品管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"农事记录列表","menuJump":"列表","tableName":"nongshijilu"}],"menu":"农事记录管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"传感器列表","menuJump":"列表","tableName":"chuanganqi"}],"menu":"传感器管理"},{"child":[{"buttons":["查看"],"menu":"系统公告列表","menuJump":"列表","tableName":"xitonggonggao"}],"menu":"系统公告管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"}],"roleName":"员工","tableName":"yuangong"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"系统公告列表","menuJump":"列表","tableName":"xitonggonggao"}],"menu":"系统公告管理"},{"child":[{"buttons":["查看"],"menu":"农作物产品列表","menuJump":"列表","tableName":"nongzuowuchanpin"}],"menu":"农作物产品管理"},{"child":[{"buttons":["查看"],"menu":"农事记录列表","menuJump":"列表","tableName":"nongshijilu"}],"menu":"农事记录管理"},{"child":[{"buttons":["查看"],"menu":"传感器列表","menuJump":"列表","tableName":"chuanganqi"}],"menu":"传感器管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"}],"roleName":"技术专家","tableName":"jishuzhuanjia"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
