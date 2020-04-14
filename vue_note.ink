你好 <>
->intro
== intro === 
这是一个关于vue常用语法的笔记 //ink语法：<>是胶水符号，把两段文字连接
->category
===category===
//节点可以简写为===category
目录->continue # CLASS: end //ink语法：在导出项目的style.css文件中定义名为end的样式，那么这段文本就会使用end样式类
//ink语法：显示图片 图片路径是相对于导出的html文件而言，不是相对于ink工程文件
# IMAGE: images/baihua.jpg
/*ink语法：成段的注释用这个*/
===continue===
+ (vue_lifecycle)[vue 生命周期]
    ++beforeCreated
    这个函数会在Vue实例刚被创建，还未计算属性之前调用
    ->during
    ++created
    这个函数会在Vue实例创建完成后调用 
    ->during
    ++beforeMounted
    这个函数会在模板编译，挂载之前调用
    ->during
    ++mounted
    这个函数会在模板编译，挂载之后调用
    ->during
    ++beforeUpdate
    这个函数会在组件更新前调用
    ->during
    ++update
    这个函数会在组件更新后调用
    ->during
    ++beforeDestroy
    这个函数会在实例销毁前调用
    ->during
    ++destroy
    这个函数会在实例销毁后调用
    ->during
+ (vue_command)[vue 基本指令]
    ++双向绑定
    ->paragraph_22
    ++不把文本当成指令执行
    ->paragraph_23
    ++内置js表达式
    ->paragraph_24    
    ++嵌入html代码
    ->paragraph_25       
    ++显示隐藏
    ->paragraph_26
    ++绑定函数
    ->paragraph_27    
    ++绑定动态资源
    ->paragraph_28      
    ++计算属性
    ->paragraph_29      
    ++加载css样式
    ->paragraph_30       
    ++分支结构
    ->paragraph_31    
    ++循环结构
    ->paragraph_32     
    ++只渲染一次
    ->paragraph_33      
    ++[返回目录]->continue

+ (vue_router)[vue 路由]
    ++路由配置
        +++router文件夹中的index.js配置
        ->paragraph_411
        +++路由重定向配置
        ->paragraph_412
        +++路由懒加载
        ->paragraph_413
    ++路由使用
        +++route对象的常用属性
        ->paragraph_421
        +++router.push
        ->paragraph_422
        +++router.go
        ->paragraph_423
        +++router.replace
        ->paragraph_424
        +++router-link超链接
        ->paragraph_425
->END
+ [vue 组件传参]
    ++父组件传参给子组件
    ->paragraph_51
    ++子组件传参给父组件
    ->paragraph_52
    ++子组件传参给同父的兄弟组件
    ->paragraph_53
->END
+ [vue 侦听器]
用法：
在和data同级的位置写下watch函数
在watch函数中写：#变量名:function(参数1，参数2){函数内容}
这样的话，当这个变量的内容发生改变时，就会执行这个函数
->END
+[vue 模拟后台数据]
说明：
mock用来拦截前端对后端url的请求，在本地返回数据。
当开发完成后，移除Mock的拦截，连url都不用改，就能完成上线发布。
++安装mock
cnpm install mockjs --save
cnpm install axios --save //用来提出网络请求
可选：cnpm install json5 --save-dev//json5解决了Json结构中无法添加注释的问题
->during
++配置与使用mock
详见源码
/*
1.项目根目录新建一个Mock文件夹，其中放置生成数据的代码
2.在Mock文件夹中新建一个xx.js文件，写下：
import Mock from 'mockjs'
let template = {
  'rank|1-5': '*'//随机生成1-5个*符号
}
// 拦截并模拟接口
Mock.mock('/user/userinfo', 'get', template)

3.在main.js中配置，引入使用mock语法模拟数据的代码文件
require('../mock/index.js')

4.在前端页面用axios请求数据：
  mounted() {
    axios.get('/user/userinfo')
    .then(res =>{
      console.log(res)
    })
    .catch(err =>{
      console.error(err)
    })
  },
*/
->during
+[增强型工具]
++vue devtools
说明：可以从谷歌应用商店中搜索，需要翻墙 也可以下载github项目自己编译出插件
安装完成后，打开浏览器的插件管理，开启devtools的“允许访问文件路径”
然后按f12即可看到开发者模式的vue标签
->continue

+[项目常用指令]
++创建项目 vue init webpack 项目名
只需要安装vue-router，其余的选否或回车。
当看到正在执行npm install命令的时候，就可以关闭了，
因为使用npm install下载速度很慢，推荐使用cnpm install
->continue
++运行测试结果 cnpm run dev
->continue
+[vue依赖的环境]
++node module
进入工程目录打开git bash
输入cnpm install
->continue
+[引入ui框架]
1.cnpm install iview --save
2.在Main.js中引入
import iView from 'iview'
import 'iview/dist/styles/iview.css'
3.在vue实例中直接使用iview组件即可

->continue
++webpack
->continue


+[vuex]
概述：vuex不是新技术，而是一种设计模式。
vuex的思想是把所有组件需要的数据都存放到一个地方集中管理。
只有组件间需要共享的数据才需要存到vuex中，如果是组件自己使用的，自己保管就好了。
++安装与配置
1.安装
npm install vuex --save
2.与main.js同级位置新建store.js
3.编写store.js 详见注释
/*
import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)
export default new Vuex.Store({
    state:{
//state 用来存放数据
    },
    mutations:{
//mutations 用来更新state中的数据
    },
    actions:{
//actions:用来异步操作mutations
    },
    getters:{
//getters 用来包装state中的数据并返回，不影响state中的数据的值，这里面定义的是带返回值的函数
    }
*/
4.在main.js文件中导入store.js并使用 详见注释
/*
import store from './store.js'
new Vue({
  el: '#app',
  router,
  store,//添加这句
  components: { App },
  template: '<App/>'
})
*/
5.在项目根路径新建一个配置.prettierrc.json 详见注释
/*
{
	"semi":false//去除分号
	"singleQuote":true//用单引号替换双引号
}    
*/
->continue
++使用state中的数据
方式1.this.$store.state
方式2.导入mapState函数
通过mapState函数将state中的全局数据映射为当前组件 详见注释
/*
import  {mapState} from 'vuex'
//computed计算属性
computed:{
	...mapState(['count'])
}
*/
然后直接把count当成本组件中的数据使用
->during
++使用mutations
先mutations中定义好修改数据的方法名
方式1.在子组件中的某个方法里用this.$store.commit('mutations中的方法名')来修改数据
方式2.导入mapMutation
通过mapMutation函数将mutations中的函数映射为当前组件可使用的函数 详见注释
/*
import {mapMutations} from 'vuex'
  methods: {
    ...mapMutations(['add']),
    //jiayi是本组件自带的方法
    jiayi:function(){
      this.add()
    },
  },
*/
然后直接把add()当成本组件的方法使用
注意：在mutations中不要定义异步操作，会出错
->during
++使用Actions
先在store.js中的actions中写好进行异步操作的函数 详见注释
/*
    actions:{
        addAsync(context){
            setTimeout(()=>{
                context.commit('add')
            },2000)
        }
    }

*/
方式1：在子组件的某个方法中写 this.$store.dispatch('addAsync')
方式2：导入mapActions函数
通过mapActions函数将actions中的函数映射为当前组件可用的函数 详见注释
/*
import {mapActions} from 'vuex'
methods:{
	...mapActions(['addAsync']),
	jianyi:function(){
    	this.addAsync();
    }
}
*/
然后直接使用addAsync()
->continue
++使用getters
先在store.js中的getters中写好进行返回数据的函数 详见注释
/*
getters:{
        showNum:function(state){
            return '当前最新的数量是：【'+state.count+'】'
        }
    }

*/
方式1：this.$store.getters.函数名
方式2：导入mapGetters函数 
通过mapGetters函数将getters中的函数映射为当前组件可用的函数 详见注释

/*
  import {mapGetters} from 'vuex'
  computed: {
        ...mapGetters(['showNum'])
  },

*/
然后直接把showNum这个函数名当成一个变量来使用就可以了
->during
===during===
之后要做什么?
+ 返回目录 ->continue
+ {continue.vue_lifecycle}返回"vue生命周期" ->continue.vue_lifecycle
+ {continue.vue_command}返回"vue基本指令" ->continue.vue_command
//ink语法：{节点}xx内容 这个语法的意思是：经过该节点后，才会显示xx内容
+{continue.vue_router}返回"vue路由"->continue.vue_router

=== paragraph_22 ===
用法1：#你好，{{name}}
用法2:#v-model="name"
其中的name属性在vue实例的data中定义
类似：#data:{name:''}
说明：v-model只能用在input ,textarea, select这些表单组件上
->during

=== paragraph_23 ===
用法：#在某个html元素的标签中加入v-pre
->during

=== paragraph_24 ===
用法：#在花括号中使用js内置表达式 例如：{{isOK:'下一题'?'重复一遍'}}
说明：如果isOK的值是true则显示下一题
->during

=== paragraph_25 ===
用法：#在某个html元素的标签中加入 v-html="变量名"
说明：这里的变量名是在vue实例的data中定义好的，数据类型为string，内容是一段完整的html代码
->during
# RESTART //ink语法：restart标签会在导出html文件后生效，当选择此项后，重新开始故事
->END //ink语法：这个标志着故事的结束，一个故事必须有一个->END 如果没有，会报错loose end

=== paragraph_26 ===
用法：#在某个html元素的标签中加入 v-if="变量名" 或v-show="变量名==='值'"
说明：如果变量的值是true则显示，否则隐藏
如果表达式中，变量名确实等于该值，则显示
v-show不可以用在template中
->during

=== paragraph_27 ===
用法：#在某个html元素的标签中加入 v-on:click="函数名"
说明：当点击这个html元素时，会执行该函数
补充：修饰符的使用
说明：v-on:click.stop="函数名" 停止冒泡 v-on:click.prevent="函数名" 避免冒泡 
v-on:click.self="函数名" 当元素本身触发事件时才执行
#其他用法：v-on:click.{keycode}="函数名" 当按下某个按键时才执行
->during

=== paragraph_28 ===
用法：#在某个html元素的标签中加入 v-bind:src="变量名" 或v-bind:href="变量名"
说明：变量中存放的是资源的地址，是string类型，可以通过更改变量的值来改变要显示的资源，而不需要改动前端的代码
->during
=== paragraph_29 ===
用法：#{{计算属性}}
说明：这个计算属性实际是一个带返回值的函数的名字，返回值用来显示在前端
这个函数写在methods和computed中都可以
但是写在methods会在每次渲染时重新计算，这在计算量很大的情况下很耗费性能
->during
=== paragraph_30 ===
用法：#在某个html元素的标签中加入 :style="样式名" <br> 或class="[样式1，样式2，...]"<br> 或class="{'style1':boolean1,'style2':boolean2}" <br> 或class="[{'style1:boolean1'},style2]"
->during
=== paragraph_31 ===
用法：#在各个html元素的标签中分别加入<br> v-if="表达式1" v-else-if="表达式2" v-else
说明：表达式举例：v-if="variable==='100'"
->during
=== paragraph_32 ===
用法1：#在ul的li标签 或ul标签本身中加入 v-for="element in 列表名" <br>然后在li标签的显示内容中写{{element.属性名}}
说明：element是随便起的临时变量名，指代列表中的每个元素
data中的列表可以这么定义：#bookLists:<br>[{name:'《vue.js实战》',index:1},<br>{name:'《javascript语言精粹》',index:2},<br>{name:'《javascript高级程序设计》',index:3},]

用法2：#在ul的li标签 或者ul标签本身中加入v-for="(属性1,属性2,属性3) in 结构体变量"
说明：结构体变量可以这么定义：#user:{name:'Alan',index:1,value:23,}
->during
=== paragraph_33 ===
用法：#在html元素的标签中加入v-once
说明：加入v-once的html元素只会渲染一次，即使进行了双向绑定，也不会和数据同步
->during

===paragraph_411
详见源码
/*完整配置
import Home from '@/components/Home';
{
    path: '/Home', //这个是路由的地址
    name:'home',//路由的名字
    component: Home,//这个是该地址对应的组件
    meta: {required: true},//相关的配置
    //children属性配置该路由的子路由，可以没有
    //一旦配置了子路由，要访问子路由时，一般这么写
    //router.push('/Home/Quick/Main')
    //或者<router-link v-bind:to="/Home/Quick/Main"></router-link>
    children: [
        {
            path: 'Quick/Main',//子路由的开头没有斜杠 内容写几级目录都可以
            component: Welcome,
            meta: {
                required: true,
                keepAlive : false,
                title: 'LANGUAGE.Routes._Home_quick_main',
            }
        },
    ]
},
*/
->during
===paragraph_412
详见源码
/*
    {
        path: '/home',//用户会访问的路由
        redirect: '/index'//当用户访问/home的时候，会变成访问路由配置中的/index路由
    },
*/
->during
===paragraph_413
详见源码
/*假设要对home.vue这个组件进行懒加载

写法一：
const Home = resolve => require(['@/components/home.vue'], resolve)
然后在配置中使用这个组件：
routes: [
    {
        path: '/login',
        name: 'login',
        component: Home
    }
]
写法二：直接在配置中写require
routes: [
    {
        path: '/login',
        name: 'login',
        component: resolve => require(['@/components/home.vue'], resolve)
    }
]
写法三：用import即可
const Home = () => import('@/components/home.vue')； //主要这句话
然后在配置中使用这个组件：
routes: [
    {
        path: '/login',
        name: 'login',
        component: Home
    }
]
*/
->during
===paragraph_421
1.$route.path:当前路由的路径
2.$route.params:查询时携带的参数，相当于post方法，,无法可以在地址栏中看到参数。是路由的一部分，必须在路由后添加参数名，push中只能是 name:'xxx',params:'xxx'而不是 path:'xxx',params:'xxx'
3.$route.query:查询时携带的参数，相当于get方法，，可以在地址栏中看到参数。路由后面可以不带query参数
4.$route.hash:当前路径的哈希值
5.$route.fullPath:解析完后的url，包含查询参数和hash的完整路径
6.$route.matched:当前路由下路由声明的所有信息，从父路由(如果有)到当前路由为止
->during

===paragraph_422
用法：#router.push(路由地址) 
说明：跳转到其他地址，并令浏览器历史数增加
举例：#参数为字符串 router.push('路由地址') <br> 参数为对象 router.push({path:'home'})<br> 参数带命名 router.push({name:'user',params:{userId:123}})<br>参数带查询参数 router.push({path:'register,query:{plan:'private'}})
->during

===paragraph_423
用法：#router.go(步数n) 
说明：当步数为正，在浏览器历史中前进n步，当步数为负，则后退n步。
如果步数n大于实际浏览步数，则跳转失败
->during
===paragraph_424
用法：#router.replace(路由地址) 
说明：与router.push()的作用类似，区别是不会令浏览器历史数增加
//补充：router.replace(xxx)等价于 <router-link :to="xxx" replace>
->during
===paragraph_425
用法：见源码，页面上显示不出来 
/*
#<router-link v-bind:to="路由地址">显示文字</router-link> 
#<router-link v-bind:to="{path:'路由地址'}">显示文字</router-link> 
#<router-link v-bind:to="{name:'路由名',params:{userId:123}}">显示文字</router-link>
#<router-link v-bind:to="{path:'路由名',query:{userId:123}}">显示文字</router-link>
*/
->during

===paragraph_51
用法：
在父组件的script中引入子组件
在父组件的template模板中使用子组件
在子组件中的props属性中接收父组件传递的参数
具体代码见源码
/*
===父组件部分
<template>
    <div>
        <Mylist :自定义的变量名="哈哈"></Mylist>
    </div>
</template>
<script>
    import Mylist from "@components/Mylist"
    export default{
        data{},
        components:{
            //注册组件
            Mylist
        }
    }
</script>
===子组件部分
<template>
    <div>
        <p>{{自定义的变量名}}</p>
    </div>
</template>
<script>
    import Mylist from "@components/Mylist"
    export default{
        data(){
            return{
                local:this.自定义的变量名
            }
        },
        props:["自定义的变量名"]//从这里取得父组件传来的参数
    }
</script>
*/
->during

===paragraph_52
用法：
在子组件的某个方法中调用$emit("我的事件",我的参数)向父组件传参
在父组件的script中引入子组件
在父组件template中的子组件写 @我的事件,"父组件的处理函数"来处理子组件的事件

具体代码见源码
/*
===父组件部分
<template>
    <div>
        <Mylist @mything="doit"></Mylist>
    </div>
</template>
<script>
    import Mylist from "@components/Mylist"
    export default{
        data{},
        components:{
            //注册组件
            Mylist
        },
        methods:{
            doit:function(val){
                console.log(val)//这里的val是子组件传过来的参数
            }
        }
    }
</script>
===子组件部分
<template>
    <div>
        <p @click='sayHH'></p>
    </div>
</template>
<script>
    import Mylist from "@components/Mylist"
    export default{
        data{},
        methods:{
            sayHH:function(){
                this.$emit("mything","I am hero");
            }
        }
    }
</script>
*/
->during

===paragraph_53
在父组件中引入兄弟阿大和阿小
在阿大中用$emit向父组件传递参数
在阿小中监听父组件的数据变化
/*
===父组件部分
<template>
    <div>
        <阿大 @ada="tell_axiao"></阿大>
        <阿小 :word="{{temp}}"></阿小>
    </div>
</template>
<script>
    import 阿大from "@components/阿大"
    import 阿小from "@components/阿小"
    export default{
        data{
            return{
                temp:''
            }
        },
        components:{
            //注册组件
            阿大,阿小
        },
        methods:{
            tell_axiao:function(val){
                this.temp=val
            }
        }
    }
</script>
===阿大
<template>
    <div>
        <Button @click="tell_fu">告诉父组件</Button>
    </div>
</template>
<script>
    export default{
        data(){
        },
        methods:{
            tell_fu:function(){
                this.$emit("ada","明天不上课")
            }
        }
    }
</script>

===阿小
<template>
    <div>
        <p>父组件说，阿大说了:{{word}}</p>
    </div>
</template>
<script>
    export default{
        data(){
        },
        props:["word"]
    }
</script>
*/
->during