//
//  AppDelegate.m
//  Day02SVApp
//
//  Created by Prabhu S on 4/30/13.
//  Copyright (c) 2013 Prabhu S. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "Screen2ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    Screen2ViewController* ctrl = [[Screen2ViewController alloc]initWithNibName:@"Screen2ViewController" bundle:nil];
    self.window.rootViewController = ctrl;
    
    // Override point for customization after application launch.
//    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
//    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"applicationWillResignActive called");
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"applictionDidEnterBackground called");
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"applicationWillEnterForeground called");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"applicationDidBecomeActive called");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
        NSLog(@"applicationWillTerminate called");
}

@end
