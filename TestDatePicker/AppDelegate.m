//
//  AppDelegate.m
//  TestDatePicker
//
//  Created by syt on 2020/4/28.
//  Copyright © 2020 syt. All rights reserved.
//

#import "AppDelegate.h"
#import "TestViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    self.window.rootViewController = [TestViewController new];
    [self.window makeKeyAndVisible];

    return YES;
}


















@end
