#import <UIKit/UIKit.h>
#import "NavigationDelegate.h"
#import "MathQuestionStore.h"

@interface SummaryViewController : UIViewController
@property id<NavigationDelegate> navDelegate;
@property MathQuestionStore* mathQuestionStore;
@property IBOutlet UILabel* summaryLabel;
@property IBOutlet UITextView* summaryTextView;
@end
