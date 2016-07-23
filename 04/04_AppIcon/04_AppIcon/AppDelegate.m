//
//  AppDelegate.m
//  04_AppIcon
//
//  Created by Yuchao Zhou on 16/7/23.
//  Copyright © 2016年 Yuchao Zhou. All rights reserved.
//

#import "AppDelegate.h"

// 这里的interface是延展
@interface AppDelegate ()

@end

@implementation AppDelegate


// app完成加载
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.
	NSLog(@"app完成加载");
	return YES;
}

// app即将计入后台（放弃激活）
- (void)applicationWillResignActive:(UIApplication *)application {
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
	NSLog(@"app即将计入后台（放弃激活）");
}

// app已经进入后台
- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	NSLog(@"pp已经进入后台");
}

// app即将进入前台
- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	NSLog(@"app即将进入前台");
}

// app已经激活，进入前台
- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	NSLog(@"app已经激活，进入前台");
}

// app将要终止
- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	NSLog(@"app将要终止");
}

@end
