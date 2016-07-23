//
//  main.m
//  04_AppIcon
//
//  Created by Yuchao Zhou on 16/7/23.
//  Copyright © 2016年 Yuchao Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
	@autoreleasepool {
		// 第三个参数为应用程序的首要类，第四个参数为应用程序的代理类
		
		/*
		 UIApplicationMain
		 1.创建一个UIApplication对象
		 2.创建一个APPDelegate对象，并且这个对象实现了UIApplicationDelegate协议
		 3.将APPDelegate设置为UIApplication的代理对象
		 4.调用APPDelegate对象的方法
		 5.开启一个RunLoop，接受用户的触摸事件，保证app不会退出
		 */
		// NSStringFromClass: 把一个class对象转换成nsstring
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
	}
}
