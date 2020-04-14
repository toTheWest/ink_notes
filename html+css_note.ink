你好 <>
->intro
== intro === 
这是一个关于html与css常用语法的笔记 //ink语法：<>是胶水符号，把两段文字连接
->category
===category===
//节点可以简写为===category
目录->continue # CLASS: end //ink语法：在导出项目的style.css文件中定义名为end的样式，那么这段文本就会使用end样式类
//ink语法：显示图片 图片路径是相对于导出的html文件而言，不是相对于ink工程文件
# IMAGE: images/baihua.jpg
/*ink语法：成段的注释用这个*/
===continue===

+ [页面结构]
    ++div和span 骨架
    用来定义网页的骨架
    ->during
    ++文字+链接+图像 血肉
    用来填充骨架
    ->continue
 
    ++javascript 神
    ->continue
    
    ++css 皮
    ->during
    ++meta 名片
    用来定义网页的关键词，网页描述，网页作者，网页自动刷新频率。
    ->during   
    ++以需求的角度看网页结构
    1.文章块
    2.导航栏
    3.标题栏
    4.主要区
    5.页脚栏
    
    ->during
+常用页面布局
    ++两列固定宽度+单列弹性页面
    ->continue
    ++两列弹性+单列固定页面
    ->continue
    ++三栏弹性页面
    ->continue
    ++返回目录->continue
+ (html_text)[文字]
    ++bdo标签
    用来覆盖默认的文本排列顺序
    dir属性取值范围为ltr和rtl(right to left,从右向左)
    ->during
    ++b标签
    用来加粗文字
    ->during
    ++hr标签
    用来创建一条分割线
    ->during
    ++i标签
    用来倾斜文字
    ->during
    ++abbr标签
    用来添加悬浮提示文字
    title属性中指定要提示的文字
    ->during
    ++cite标签
    用来把一段文字变成参考文献格式
    ->during
    ++em
    用来把一段文字斜体加粗
    ->during
    ++dfn
    用来斜体突出一个词条
    ->during
    
    ++code标签
    用来把一段文字显示为代码格式
    code中的段落结构会被保留显示在网页上
    ->during
    ++blockquote标签
    用来给一段文字加上外缩进，表示引用
    ->during
    ++q标签
    用来给一行文字加上双引号，表示引用
    ->during
    ++del标签
    用来给一段文字添加下划线
    ->during
    ++del标签
    用来划掉一段文字
    ->during
    ++kbd标签
    用来显示键盘上的按键名字
    title属性中指定要提示的文字
    ->during
    ++mark标签
    用来把一段文字高亮显示
    ->during
    ++pre标签
    用来跳过一段文字的解析，这段文字不会被当做html，而是包括段落结构原本的呈现出来。
    ->during
    ++small标签
    用小号字体显示一段文字
    ->during
  
    ++var标签
    用来把一段文字显示变量格式
    ->during
    ++time标签
    用来把一段文章显示为时间格式
    ->during
    ++samp标签
    用来把一个词变成“样本”格式
    ->during
    ++sup标签
    用来把一个词变成上标的形式
    ->during
    ++sub标签
    用来把一个词变成下标的形式
    ->during
    ++address标签
    用来把一段话变成联系方式的格式
    ->during
    ++ruby+rb+rt标签
    用来标注拼音，不能分开使用。
    ruby包裹整个元素，rb包裹汉字，rt包裹拼音。rt可加style属性自定义样式
    ->during
    
+ (html_link)[链接]
    ++a标签
    用来指向一个网址。target属性用来定义在哪里打开这个网址，
    是在新窗口，还是在本页面中的某个frameset。
    title属性用来定义指针图案悬浮在此超连接时的提示文字。
    id属性用来跳转位置到本页面的某个元素，跳转到name属性与id数学一致的那个元素。
    href的mailto属性：用来发送邮件。
    href可以指向一个文件，用来让用户下载。
    ->during
    ++link标签
    用来引入css文件
    ->during
    ++base标签
    用来定义查找文件时，以什么路径作为根路径
    ->during
+[图像]
    ++嵌入音视频 
    audio标签 vedio标签 embed标签嵌入avi或flash 
    source标签可替代audio标签和vedio标签
    object +param 标签可替代vedio标签
    ->during
    ++嵌入图像
    img标签 canvas标签 figure标签
    ->during    
    ++嵌入布局地图
    map标签+area标签 用来实现基于坐标的ui布局。
    ->during   
+ [列表]
    ++ul+li标签
    实现无序列表
    ->during
    ++ol+li标签
    实现有序列表。通过ol的start属性和li的value属性自定义每一项的顺序号。
    ->during
    ++dl+dt+dd标签
    用来定义段落式的列表。dl包裹整个元素，dt代表标题，dd代码一条列表。
    ->during
+[表格]
    ++结构
    thead为同步 tfoot为底部 tbody为主体 三者都可以内用tr+td填充。
    ->during
    ++标题
    th为每列的标题
    ->during
    ++行列
    td为列 tr为行 rowspan和colspan分别合并行，合并列
    ->during
    ++组合行列
    colgroup标签，内含col标签，根据内含的col标签的style属性来决定每一列的样式
    ->during
    ++更改对齐方式
    在tr标签的style属性，valign定义垂直对齐方式，text-align定义水平对齐方式
    ->during    
     
    

+---分割线----
->continue
+css主要用途
    ++css的基本结构
    把所有元素都看成div。
    每个div的组成为：
    内容(content) + 边距(padding) + 外框(border) + 边界(margin)
    
    css的优先级为：
    1.最近的父物体的样式权重最高
    2.优先级关系：
    内联样式 > ID 选择器 > 类选择器 = 属性选择器 = 伪类选择器 > 标签选择器 = 伪元素选择器
    
    ->during
    ++颜色
    line_gradient属性 线性渐变
    radial_gradient属性 放射渐变
    opacity 透明度
    ->during
    ++文字处理
    overflow 隐藏溢出部分的文字
    word-wrap 文字到达区域边界时自动换行
    text-shadow 文字阴影
    font-size-adjust 调整某个字体的大小
    @font-face 使用服务端的字体而非客户端的字体
    ->during
    ++resize属性 拖动改变div的宽高
    ->during
    ++transition属性插值渐变
    这个属性会在激活xxx:hover的时候启用，写在xxx的样式中。
      transition-property 指定要改变的属性
	  transition-duration: 指定动画持续的时间
	  transition-delay: 指定动画延长多少秒后启动
	  transition-timing-function: 指定动画的播放节奏
    ->during
    ++transform形变
    这个属性和transition不同。transition是有一个动态的变化过程，这个是直接显示最后的结果。
    translate属性:产生位移
    rotate属性:产生旋转
    scaleshux:产生缩放
    skew属性:产生扭曲
    transform-origin标签:改变形变的锚点
    ->during

    ++anmation动画
    这个属性和transition不同。它是很多个transition的组合体。
    @keyframe 动画名 来定义一个动画
    animation-name 在某个div中使用定义好的动画
    animation-duration 在某个div中使指定该动画的持续时间
    
    animation-iteration-count: 在某个div中定义该动画的播放次数
    animation-timing-function 在某个div中指定动画的播放节奏
    animation-delay 在某个div中使指定该动画的延迟播放时间
    animation-direction 在某个div中指定正向播放完后是否反向播放这个动画
    上述属性可以挤在一行写 animation:属性1 属性2 ...
    ->during
    
    ++div背景设置
        +++border-radius圆角属性    
        上右下左 共四个数值或 上下 左右 共两个数值  
        或单独指定	border-top-left-radius:     
    	border-top-right-radius:    
    	border-bottom-right-radius: 
    	border-bottom-left-radius:  
    	->during
        +++background-image 设定背景图片
        可指定多张背景图片
        ->during
        +++background-position:指定背景图片的位置，与background-image中的图片数一一对应
        ->during
        +++background-size 设置背景图片大小
        background-clip: 设置背景与边框的关系
        border-box 边框紧贴背景的内边
        padding-box 边框紧贴背景的外边
        content-box 背景内容与边框四边有内边距，边框大小不变 背景内容变小
        ->during
        +++background-origin 背景的左上角起始点设置
        border-box 左上角紧贴背景的内边
        padding-box 左上角紧贴背景的外边
        content-box 左上角与边框左上角有一段距离，边框大小不变 背景内容变小
        ->during
        +++border-image 指定一张九宫图作为div的背景
        border-image-source 用于指定要用于绘制边框的图像的位置
        border-image-slice 	图像边界向内偏移
        border-image-width 	图像边界的宽度
        border-image-outset 用于指定在边框外部绘制 border-image-area 的量
        border-image-repeat 用于设置图像边界是否应重复（repeat）、拉伸（stretch）或铺满（round）。
        指定一张图片
        ->during
        
        
    ++内容排版方式display:flex
        ->continue
    ++整体排版分区column-xx属性
        ->continue

+css选择器
    ++类选择器
    //如.class{}
    ->continue
    ++子选择器
    ->continue
    ++相邻选择器
    ->continue
    ++标签选择器
    //如span{}
    ->continue
    ++伪元素选择器
    //如::before{}
    ->continue
    ++伪类选择器
    //如:hover{}
    ->continue
    ++类选择器
    ->continue
    ++id选择器 
    //如#id{}
    ->continue
    ++id选择器局部标签
    ->continue
    ++通配选择器
    //如*{}
    ->continue
    ++包含选择器
    ->continue
    ++兄弟选择器
    ->continue
    ++分组选择器
    ->continue
    ++属性选择器
    //如a[href="segmentfault.com"]{}
    ->continue
    ++动态选择器
    ->continue
    ++结构选择器
    ->continue
    ++结构伪类
    ->continue
    ++否定伪类
    ->continue
    ++状态伪类
    ->continue
    ++目标伪类
    ->continue


===during===
之后要做什么?
+ 返回目录 ->continue

=== paragraph_22 ===
用法1：#你好，{{name}}
用法2:#v-model="name"
其中的name属性在vue实例的data中定义
类似：#data:{name:''}
说明：v-model只能用在input ,textarea, select这些表单组件上
->during
