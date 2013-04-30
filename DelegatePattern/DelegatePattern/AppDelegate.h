//
//  AppDelegate.h
//  DelegatePattern
//
//  Created by Prabhu S on 4/30/13.
//  Copyright (c) 2013 Prabhu S. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
