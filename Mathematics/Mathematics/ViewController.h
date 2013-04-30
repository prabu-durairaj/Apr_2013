#import <UIKit/UIKit.h>
#import "NavigationDelegate.h"
#import "LoginViewController.h"
#import "QuizViewController.h"
#import "SummaryViewController.h"
@interface ViewController : UIViewController<NavigationDelegate>

@property LoginViewController* loginViewController;
@property QuizViewController* quizViewController;
@property SummaryViewController* summaryViewController;

@end
