#import <UIKit/UIKit.h>
#import "NavigationDelegate.h"
#import "MathQuestionStore.h"
#import "MathQuestion.h"

@interface QuizViewController : UIViewController

@property id<NavigationDelegate> navDelegate;
@property MathQuestionStore* mathQuestionStore;
@property IBOutlet UILabel* questionIdLabel;
@property IBOutlet UILabel* operand1Label;
@property IBOutlet UILabel* operand2Label;
@property IBOutlet UILabel* operatorSignLabel;
@property IBOutlet UITextField* answerTextField;
-(MathQuestion*)displayQuestion;
-(IBAction)nextButtonTapped;
-(IBAction)hideKeyboard;

@end
