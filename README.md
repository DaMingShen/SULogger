####前言
debug对于咋们程序员来说家常便饭，但有时候我们会遇到一种情况：开发某个功能时，需要在某个特定场景下进行调试，而这个场景并没有MacBook来进行连接debug，偏偏我们需要获得调试时的一些信息，怎么办？

方法有很多，这里提供一个轻量级工具SULogger来实时显示Log日志在手机屏幕上。



####SULogger是什么
用法简单的iOS真机调试实时可视化显示Log日志工具

1、实时显示log输出日志

2、随时切换和隐藏面板

3、能滚动查看历史log信息，能对信息进行拷贝

4、用法简单：只需两句代码




####如何导入SULogger
cocoapods导入：```pod 'SULogger'```
手动导入：
将SULogger文件夹中的所有文件拽入项目中
```
SULogger.h SULogboard.h
SULogger.m SULogboard.m
```

####如何使用SULogger
1、导入主头文件：
```
#import "SULogger.h"
```
2、启动保存日志功能：```[SULogger start]```
```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [SULogger start];
    return YES;
}
```
3、在你需要的时候切换log面板的显示/隐藏状态（demo是在摇一摇的时候切换）：``` [SULogger visibleChange]```
```
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.type == UIEventSubtypeMotionShake) {
        [SULogger visibleChange];
    }
}
```

####效果图

GIF图加载较慢，请稍等

实时显示log输出日志

![SULoggerGIF1.gif](http://upload-images.jianshu.io/upload_images/1644426-bdceb9f937018420.gif?imageMogr2/auto-orient/strip)

能滚动查看历史log信息，期间将停止自动滚动到最新日志

![SULoggerGIF2.gif](http://upload-images.jianshu.io/upload_images/1644426-640d6353cf710bcb.gif?imageMogr2/auto-orient/strip)


####提醒
本工具纯ARC，兼容iOS7.0以上系统

本工具提供的demo需要在真机上运行，否则log面板将不输出任何日志




####期待
1、大牛们能提供建议（包括优化和完善功能）

2、体验中遇到BUG，请联系我，谢谢

3、小伙伴能睡出代码，Pull Requests我

4、本工具能帮助到大家 ^_^
