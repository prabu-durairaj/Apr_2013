
#import <UIKit/UIKit.h>
#import "MyNavigationDelegate.h"
#import "Screen1ViewController.h"
#import "Screen2ViewController.h"
#import "Screen3ViewController.h"

@interface RootViewController : UIViewController<MyNavigationDelegate>
@property Screen1ViewController* screen1;
@property Screen2ViewController* screen2;
@property Screen3ViewController* screen3;
@end
