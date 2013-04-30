
#import <UIKit/UIKit.h>
#import "MyNavigationDelegate.h"

@interface Screen3ViewController : UIViewController
@property id<MyNavigationDelegate> navDelegate;
-(IBAction)buttonTapped;
@end
