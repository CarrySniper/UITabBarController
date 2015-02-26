//
//  AppDelegate.m
//  纯代码创建UITabBarController
//
//  Created by 陈家庆 on 15-2-14.
//  Copyright (c) 2015年 shikee_Chan. All rights reserved.
//

#import "AppDelegate.h"

//包含4个视图控制器的头文件
#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    //创建并初始化UITabBarController
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    self.window.rootViewController = tabBarController;
    
    //初始化4个视图控制器
    ViewController *vc = [[ViewController alloc]init];
    ViewController1 *vc1 = [[ViewController1 alloc]init];
    ViewController2 *vc2 = [[ViewController2 alloc]init];
    ViewController3 *vc3 = [[ViewController3 alloc]init];
    
    //为4个视图控制器添加导航栏控制器
    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:vc];
    UINavigationController *navC1 = [[UINavigationController alloc]initWithRootViewController:vc1];
    UINavigationController *navC2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    UINavigationController *navC3 = [[UINavigationController alloc]initWithRootViewController:vc3];
    
    //设置标题
    navC.title = @"页面";
    navC1.title = @"页面1";
    navC2.title = @"页面2";
    navC3.title = @"页面3";
    
    //设置图片
    navC.tabBarItem.image = [UIImage imageNamed:@"1"];
    navC1.tabBarItem.image = [UIImage imageNamed:@"2"];
    navC2.tabBarItem.image = [UIImage imageNamed:@"3"];
    navC3.tabBarItem.image = [UIImage imageNamed:@"4"];
    
    
    //创建一个数组包含4个导航栏控制器
    NSArray *controllers = [NSArray arrayWithObjects:navC,navC1,navC2,navC3, nil];
    
    //将数组传给UITabBarController
    tabBarController.viewControllers = controllers;
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
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
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
