Additions
=========

便捷iOS开发的各种类库

在`*-Prefix.pch`中引入`AdditionsMacro.h`即可

#API列表
* 扩展功能列表:
	* `AudioManager.h` 在线音乐播放,支持播放列表后台播放和锁屏截图设置
* 增强api类列表:
	* `NSData+Additions.h`
	* `NSString+Additions.h`
	* `NSArray+Additions.h`
	* `NSMutableArray+Additions.h`
	* `NSDictionary+Additions.h`
	* `UIApplication+Additions.h`
	* `UIDevice+Additions.h`
	* `UIScreen+Additions.h`
	* `UITableView+Additions.h`
	* `UIView+Additions.h`
	* `UIColor+Additions.h`

#add by hongfei
* 增加单例宏、获取rgb颜色宏、UIViewLayout分类、NSString扩展根据内容返回高度
	* Singleton.h
	* UIView+ViewLayout.h		// 布局简便
	* UIImage+Tint.h  	// 改变图片颜色
	* UIImage+Antialiase.h 		// 图片抗锯齿
	* UIColor+Additions.h 		// rgb颜色、iOS7扁平化颜色
	* AppDelegate.m 	// 程序激活时XML输出层次结构
	...
