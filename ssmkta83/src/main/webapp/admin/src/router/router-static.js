import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import yonghuwenzhang from '@/views/modules/yonghuwenzhang/list'
    import wenzhanggaochou from '@/views/modules/wenzhanggaochou/list'
    import wenzhangzhanshi from '@/views/modules/wenzhangzhanshi/list'
    import discusswenzhangzhanshi from '@/views/modules/discusswenzhangzhanshi/list'
    import bianji from '@/views/modules/bianji/list'
    import yonghu from '@/views/modules/yonghu/list'
    import tongzhigonggao from '@/views/modules/tongzhigonggao/list'
    import wenzhangfenlei from '@/views/modules/wenzhangfenlei/list'
    import storeup from '@/views/modules/storeup/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/yonghuwenzhang',
        name: '用户文章',
        component: yonghuwenzhang
      }
      ,{
	path: '/wenzhanggaochou',
        name: '文章稿酬',
        component: wenzhanggaochou
      }
      ,{
	path: '/wenzhangzhanshi',
        name: '文章展示',
        component: wenzhangzhanshi
      }
      ,{
	path: '/discusswenzhangzhanshi',
        name: '文章展示评论',
        component: discusswenzhangzhanshi
      }
      ,{
	path: '/bianji',
        name: '编辑',
        component: bianji
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/tongzhigonggao',
        name: '通知公告',
        component: tongzhigonggao
      }
      ,{
	path: '/wenzhangfenlei',
        name: '文章分类',
        component: wenzhangfenlei
      }
      ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
