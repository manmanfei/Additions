//
//  AppDelegate.m
//  SampleCode
//
//  Created by Johnil on 13-6-15.
//  Copyright (c) 2013年 Johnil. All rights reserved.
//

#import "AppDelegate.h"
@implementation AppDelegate

#pragma mark 程序激活时xml输出层次结构
- (NSString *)digView:(UIView *)view
{
    //    if ([view isKindOfClass:[UITableViewCell class]]) return @"";
    // 1.初始化
    //    static NSMutableString *xml = nil;
    //    if (xml == nil) {
    //        xml = [NSMutableString stringWithString:@"<?xml version=\"1.0\" encoding=\"UTF-8\"?>"];
    //    }
    
    NSMutableString *xml = [NSMutableString string];
    
    // 2.标签开头
    [xml appendFormat:@"<%@ frame=\"%@\"", view.class, NSStringFromCGRect(view.frame)];
    if (!CGPointEqualToPoint(view.bounds.origin, CGPointZero)) {
        [xml appendFormat:@" bounds=\"%@\"", NSStringFromCGRect(view.bounds)];
    }
    
    if ([view isKindOfClass:[UIScrollView class]]) {
        UIScrollView *scroll = (UIScrollView *)view;
        if (!UIEdgeInsetsEqualToEdgeInsets(UIEdgeInsetsZero, scroll.contentInset)) {
            [xml appendFormat:@" contentInset=\"%@\"", NSStringFromUIEdgeInsets(scroll.contentInset)];
        }
    }
    
    // 3.判断是否要结束
    if (view.subviews.count == 0) {
        [xml appendString:@" />"];
        return xml;
    } else {
        [xml appendString:@">"];
    }
    
    // 4.遍历所有的子控件
    for (UIView *child in view.subviews) {
        NSString *childXml = [self digView:child];
        [xml appendString:childXml];
    }
    
    // 5.标签结尾
    [xml appendFormat:@"</%@>", view.class];
    
    return xml;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    NSString *xml = [self digView:self.window];
    // yourdirectory 用户文件夹
    [xml writeToFile:@"/Users/yourdirectory/Desktop/window.xml" atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
