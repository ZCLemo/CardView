# CardView
卡片式view

#### 1.新版本的项目中，深深的感受到了设计对我们的恶意，设计的页面有这样的，
![开户-绑定银行卡.png](https://upload-images.jianshu.io/upload_images/1930004-bd6d82386169118f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


#### 这样的
![开户交易成功.jpg](https://upload-images.jianshu.io/upload_images/1930004-81d80a2ca4e018d5.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


#### 还有这样的
![首次购买未绑卡.png](https://upload-images.jianshu.io/upload_images/1930004-61d8daa8749e51ea.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


#### 什么鬼，并不是几个页面只是这样的，而是大面积的页面都是这样的，当我看到时我的内心是奔溃的，但没办法，架不住设计师的坚持。

#### 2.没办法，只有自己做了，刚开始分析下看能不能用背景图片来解决，后来发现自己想多了，因为根本没有规律，凹槽的地方根本没规律，都是出现在随心所欲的出现在各个地方。经过大家最后的商量，画出凹槽，往上面一块块拼接吧。结合Masonry,下面上代码。

[https://github.com/ZCLemo/CardView](https://github.com/ZCLemo/CardView)

#### 3.例子里凹槽部分完全是自己画的，虚线和两个半圆。如果一屏展示不下你想要展示的view，可以用scrollview，再根据Masonry来控制scrollview的滚动范围，后面我会再传一下这部分代码。我一直在想能不能有什么好的办法可以解决，也希望有大神给我好的建议。
