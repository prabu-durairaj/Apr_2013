
#import <UIKit/UIKit.h>
#import "MyNavigationDelegate.h"

@interface Screen1ViewController : UIViewController
@property id<MyNavigationDelegate> navDelegate;

-(IBAction)buttonTapped;
@end
