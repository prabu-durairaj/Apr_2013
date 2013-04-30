
#import <UIKit/UIKit.h>
#import "MyNavigationDelegate.h"

@interface Screen2ViewController : UIViewController

@property id<MyNavigationDelegate> navDelegate;
-(IBAction)buttonTapped;

@end
