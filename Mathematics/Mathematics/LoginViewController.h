#import <UIKit/UIKit.h>
#import "NavigationDelegate.h"

@interface LoginViewController : UIViewController
@property id<NavigationDelegate> navDelegate;

@property IBOutlet UITextField* userNameTextField;
@property IBOutlet UITextField* passwordTextField;
@property IBOutlet UILabel* messageLabel;

-(IBAction) login;
-(IBAction)hideKeyboard;

@end
